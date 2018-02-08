// todo: http://localhost/wordpress/2017/06/がちゃんと出ない?→src=""だとmodeに関わらず[blk]が出ちゃう
// todo: コンテキストメニューショートカットキー→webextenstions未対応→対応中らしい

var count = 0;
var forceLoadImages = [];
var TAG = "background";
var blockedimages = [];

function onError(error) {
    debug.log(`Error: ${error}`);
}

/**
 * 画像ファイルの読み込みを制御
 * @param {object} requestDetails  リクエスト詳細
 * @param {int} requestDetails.tabId  tabid
 * @param {string} requestDetails.url  ブロック画像のURL
 * @returns {{cancel:boolean}} true=ブロックする
 */
function blockImages(requestDetails) {
    //debug.log(TAG, `Loading: ${requestDetails.url}, tabid=${requestDetails.tabId}`);
    // imagesにあれば読み込む
    let isCancel = true;
    let isCache = false;
    let tabid = requestDetails.tabId;
    let mode = modeManage.getMode(requestDetails.tabId, requestDetails.url);
    if( mode == modeManage.LOAD_ALL || requestDetails.url.substr(0,4) != "http" ) {   // Load allなら無条件に読む / data:image...とかは除外
        isCancel = false;
    } else {
        // リストにあれば無条件に読む
        for (let i = 0; i < forceLoadImages[tabid].length; i++) {
            if (forceLoadImages[tabid][i] == requestDetails.url) {
                isCancel = false;
                // リストから削除
                forceLoadImages[tabid].splice(i, 1);
                break;
            }
        }
    }
    // ここまででLoadの判断がされなかったらモード毎に判断
    if( isCancel ){
        switch (mode) {
            case modeManage.LOAD_CACHE:
                // cacheにあったら読む
                isCache = cacheControl.isExistInCache(requestDetails.url);
                isCancel = !isCache;
                break;
            case modeManage.LOAD_THIS_SITE:
                let tab_domain = tabManage.getTabUrl(tabid).split('/')[2];
                let img_domain = requestDetails.url.split('/')[2];
                isCancel = (tab_domain != img_domain);
                //debug.log(TAG, "tab=" + tab_domain + ", img=" + img_domain + ", is=" + isCancel);
                break;
        }
    }

    if( isCancel ) {
        // ブロックする且つPlaceHolder文字列置き換えならALT書き換え
        if (options.getPlaceholderType() == options.PLACEHOLDER_ALT) {
            if( blockedimages[tabid].indexOf(requestDetails.url) == -1 ){
                blockedimages[tabid].push(requestDetails.url);  // 既に無いものだけpushする
            }
        }
    } else {
        // 読み込んだimageはキャッシュに積む。但しキャッシュからの読み込みの場合は積まない（日時更新されちゃう）
        if( !isCache && requestDetails.url.substr(0,4) == "http" ){
            cacheControl.pushCache(requestDetails.url);
        }
    }
    debug.log(TAG, `blockImages: judge=${isCancel}, url=${requestDetails.url}`);
    return {
        cancel: isCancel
    }
}

// 読み込み時のイベント登録
browser.webRequest.onBeforeRequest.addListener(
    blockImages,
    {urls: ["<all_urls>"], types:["image","imageset"]}, ["blocking"]
);

// contentsからの接続が通ったらブロックしたimageリストを送る
browser.runtime.onConnect.addListener(
    /**
     * imageリスト送付
     * @param {object} port リスナーオブジェクト
     * @param {function} port.postMessage postMessage関数
     * @param {object} port.sender.tab.id 送り主のタブID
     */
    (port)=>{
    let pltxt = options.getPlaceholderType() == options.PLACEHOLDER_NONE ? "" : options.getAltPlaceholderText();
    port.postMessage({command: "blockedimages", images: blockedimages[port.sender.tab.id], alt: pltxt});
});

// windowがクローズされる時にキャッシュを保存する
//noinspection JSUnusedLocalSymbols
browser.windows.onRemoved.addListener((windowId) => {
    cacheControl.deleteExpiredCache();
    cacheControl.saveCacheList();
    debug.log(TAG, "onWindowClose: cache close completed.");
});
