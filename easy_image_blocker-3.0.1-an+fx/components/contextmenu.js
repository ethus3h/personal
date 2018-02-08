"use strict";

var modemanageTAG = "mode";

function ContextMenu() {
    if (!(this instanceof ContextMenu)) {
        return new ContextMenu();
    }
}

ContextMenu.prototype = {

    CONTEXT_MODE_ONE: 0,
    CONTEXT_MODE_ALL: 1,
    CONTEXT_MODE: this.CONTEXT_MODE_ONE,             // 現在のモード。但しコンテキストメニューが開かれてメニューを選択に行くとmouseleaveするのでモードは変わる
    CONTEXT_MODE_CLICKED: this.CONTEXT_MODE_ONE,    // コンテキストメニューが開かれた時のモード
    IMAGE_URL: "",

    /**
     * コンテキストメニューを再作成する
     */
    refreshContextMenu: function refreshContextMenu() {
        browser.contextMenus.removeAll();
        browser.storage.local.get("context_menu_hide").then((result)=> {
            // ここではOptionsから持ってくると間に合わないので非同期的に処理する
            if (!result.context_menu_hide) {
                browser.contextMenus.create({
                    id: "loadimage",
                    title: browser.i18n.getMessage("context_loadallimages"),
                    contexts: ["all"]
                });
                browser.contextMenus.onClicked.addListener(function (info, tab) {
                    if (info.menuItemId == "loadimage") {
                        if( contextMenu.CONTEXT_MODE_CLICKED == contextMenu.CONTEXT_MODE_ONE ){
                            forceLoadImages[tab.id].push(info.srcUrl);    // 読み込みOKリストに追加
                            // content側で再読み込みさせる
                            contextMenu.sendReload(info.srcUrl);
                        } else {
                            // 全画像読み込み指示
                            forceLoadImages[tab.id] = blockedimages[tab.id];
                            contextMenu.sendReloadAll();
                        }
                    }
                });
            }
        });
    },

    /**
     * 指定画像の再読込を指示
     * @param url
     */
    sendReload: function sendReload(url) {
        browser.tabs.sendMessage(tabManage.getTabId(), {command: "reload", url: url});
    },

    /**
     * 全画像の再読込を指示
     */
    sendReloadAll: function sendReloadAll() {
        browser.tabs.sendMessage(tabManage.getTabId(), {command: "reloadall"});
    },

    /**
     * コンテキストメニューを単画像読み込みに切り替え
     */
    changeContextMenuToLoadSingle: function changeContextMenuToLoadSingle() {
        this.CONTEXT_MODE = this.CONTEXT_MODE_ONE;
        browser.contextMenus.update("loadimage", {
            title: browser.i18n.getMessage("context_loadimage")
        });
    },

    /**
     * コンテキストメニューを全画像読み込みに切り替え
     */
    changeContextMenuToLoadAll: function changeContextMenuToLoadAll() {
        this.CONTEXT_MODE = this.CONTEXT_MODE_ALL;
        browser.contextMenus.update("loadimage", {
            title: browser.i18n.getMessage("context_loadallimages")
        });
    },

    /**
     * コンテキストメニューを開いたときの画像情報とモードを記憶
     * @param url
     */
    setImageInfo: function setImageInfo(url){
        this.IMAGE_URL = url;
        this.CONTEXT_MODE_CLICKED = this.CONTEXT_MODE;
    }
};

var contextMenu = new ContextMenu();
// contextmenu生成
contextMenu.refreshContextMenu();
