let EIB_ALT_NAME = "EIB_ALT";
let TAG = "ContentScript";
var debug = new Debug();

var options = {
    altstring: "",
    mode: 0
};

/**
 * 強制読み込み
 * @param request
 * @param sender
 * @param sendResponse
 */
function recieveMessage(request, sender, sendResponse) {
    debug.log(TAG, `recieveMessage: ${request.command}, url=${request.url}` );
    switch( request.command ){
        case "reload":
        case "reloadall":
            for( var i=0; i < this.document.images.length; i++ ) {
                let node = this.document.images[i];
                let src = node.src;
                if( request.command=="reloadall" || src == request.url ) {
                    // 書き換えておいたALTを戻す
                    if( node.hasAttribute(EIB_ALT_NAME) ){
                        node.setAttribute("ALT", node.getAttribute(EIB_ALT_NAME));
                        node.removeAttribute(EIB_ALT_NAME);
                    }
                    // srcを再設定して画像を再読込させる
                    node.src = src;     // 最適化されてナシになる可能性がありそうなので、違う変数に入れてセットしておく。
                }
            }
            break;
    }
}

browser.runtime.onMessage.addListener(recieveMessage);

/**
 * image elementの上にマウスが居るときだけcontextmenuを単画像読み込みに切り替える
 */
for( let cnt=0; cnt < document.images.length; cnt++ ){
    document.images[cnt].onmouseenter = function(event) {
        browser.runtime.sendMessage({command: "contextLoadOne", src: event.target.src});
    };
    document.images[cnt].onmouseleave = function(event) {
        browser.runtime.sendMessage({command: "contextLoadAll"});
    };
}

/**
 * 右クリック時のimageの情報をbackgroundに渡す
 * @param event
 */
document.onclick = function(event){
    let isright = (event.button == 2);
    let isImage = (event.target.nodeName=="IMG");
    if( isright ){
        browser.runtime.sendMessage({
            command: "contextSetImage",
            src: isImage ? event.target.src : ""
        });
    }
};
//------------------------------------------------------------ connect to background
// contentsを読み込んでからじゃ無いと相互にscriptと通信できないので、こちらからbackgroundにconnectionを張りに行く
var portMain = browser.runtime.connect({name:"port-main"});
portMain.onMessage.addListener((msg)=>{
   switch (msg.command){
       case "blockedimages":
           // ブロック済みイメージリストのALTを差し替え
           if( msg.alt!=null && msg.alt.length > 0 && msg.images.length > 0 ) {
               for( let i=0; i < this.document.images.length; i++ ) {
                   var node = this.document.images[i];
                   if( msg.images!=null && msg.images.indexOf(node.src) ){  // src=''の時に必ずALT差し替えが発生してしまうのも防ぐ
                       node.setAttribute(EIB_ALT_NAME, node.alt);
                       node.setAttribute("ALT", msg.alt + node.alt);
                   }
               }
           }
           break;
   }
});

//------------------------------------------------------------ ctrl key check
document.onkeydown = function (event){
    if(!event) event = window.event; // レガシー
    if(event.keyCode == event.DOM_VK_CONTROL){
        browser.runtime.sendMessage({command: "ctrlKeyDown"});
        //debug.log(TAG, "ctrlKeyDown");
    }
};
document.onkeyup = function (event){
    if(!event) event = window.event; // レガシー
    if(event.keyCode == event.DOM_VK_CONTROL){  // upの時はなぜかctrlKeyがfalseになっている
        browser.runtime.sendMessage({command: "ctrlKeyUp"});
        //debug.log(TAG, "ctrlKeyUp");
    }
};
