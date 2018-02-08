"use strict";

var DOWNLOAD_FILENAME = "eib_whitelist.json";
var LOAD_ALL = 3;

/**
 * Export
 */
function exportWhitelist() {
    var filename = DOWNLOAD_FILENAME;
    let data = JSON.stringify([
        document.querySelector("#whitelist").value.split(","),
        document.querySelector("#whitelist_mode").value.split(",")
    ]);
    let type = 'application/json; charset=utf-8';
    download(data,filename,type);
    // download function
    function download(data, filename, type) {
        let file = new Blob([data], {type: type});
        let atag = document.createElement("a");
        atag.href = URL.createObjectURL(file);
        atag.download = filename;
        document.body.appendChild(atag);
        atag.click();
    }
}
//document.getElementById('export').addEventListener('change', exportWhitelist, false);
//document.getElementById('btnExport').addEventListener('click', ()=>{document.getElementById('export').click();}, false);
document.getElementById('btnExport').addEventListener('click', exportWhitelist, false);

/**
 * Import
 */
function importWhitelist() {
    var reader = new FileReader();
    var fileinput = document.getElementById("import");
    reader.readAsText(fileinput.files[0]);
    //noinspection JSUnusedLocalSymbols
    reader.onload = (event) => {
        let json = reader.result;
        let urllist="", modelist="";
        [urllist,modelist] = JSON.parse(json);
        // whitelist_modeが足りなかったら補う
        if( urllist.length > modelist.length ) {
            for( let i=modelist.length; i<urllist.length; i++ ){
                modelist.push(LOAD_ALL);
            }
        }        document.querySelector("#whitelist").value = urllist;
        document.querySelector("#whitelist_mode").value = modelist;
        // 保存
        browser.storage.local.set({
            whitelist: document.querySelector("#whitelist").value,
            whitelist_mode: document.querySelector("#whitelist_mode").value
        });
    };
}
document.getElementById('import').addEventListener('change', importWhitelist, false);
document.getElementById('btnImport').addEventListener('click', ()=>{document.getElementById('import').click();}, false);

/**
 * 保存
 * @param e
 */
function saveOptions(e) {
    if( null != e ){
        // applyボタンで来たときはsubmitを中断
        e.preventDefault();
    }
    browser.storage.local.set({
        mode: parseInt(document.querySelector("#mode").value),
        //whitelist: document.querySelector("#whitelist").value,
        //whitelist_mode: document.querySelector("#whitelist_mode").value,
        access_key: document.querySelector("#access_key").value,
        access_key_all: document.querySelector("#access_key_all").value,
        reload_mode: document.querySelector("#reload_mode").checked,
        placeholder_type:  document.querySelector("#placeholder_type_0").checked ? 0 : 1,
        alt_placeholder_text: document.querySelector("#alt_placeholder_text").value,
        tab_independent: document.querySelector("#tab_independent").checked,
        tab_mode_take_over: document.querySelector("#tab_mode_take_over").checked,
        context_menu_hide: document.querySelector("#context_menu_hide").checked,
        cache_expire_seconds: document.querySelector("#cache_expire_seconds").value
    });
}

/**
 * 設定値を読み出して表示
 */
function restoreOptions() {
    browser.storage.local.get("mode").then((result)=>{document.querySelector("#mode").value = result.mode || 0;});
    browser.storage.local.get("access_key").then((result)=>{document.querySelector("#access_key").value = result.access_key || "L";});
    browser.storage.local.get("access_key_all").then((result)=>{document.querySelector("#access_key_all").value = result.access_key_all || "A";});
    browser.storage.local.get("reload_mode").then((result)=>{document.querySelector("#reload_mode").checked = result.reload_mode || false;});
    browser.storage.local.get("alt_placeholder_text").then((result)=>{document.querySelector("#alt_placeholder_text").value = result.alt_placeholder_text || "[block]";});
    browser.storage.local.get("tab_independent").then((result)=>{document.querySelector("#tab_independent").checked = result.tab_independent || false;});
    browser.storage.local.get("tab_mode_take_over").then((result)=>{document.querySelector("#tab_mode_take_over").checked = result.tab_mode_take_over || false;});
    browser.storage.local.get("context_menu_hide").then((result)=>{document.querySelector("#context_menu_hide").checked = result.context_menu_hide || false;});
    browser.storage.local.get("cache_expire_seconds").then((result)=>{document.querySelector("#cache_expire_seconds").value = result.cache_expire_seconds || 3600*24;});
    browser.storage.local.get("placeholder_type").then((result)=>{
        if( result.placeholder_type=="0" ) {
            document.querySelector("#placeholder_type_0").checked = true;
        } else {
            document.querySelector("#placeholder_type_1").checked = true;
        }
    });
    // whitelistも読み出しておく（ここでは保存しないのでExport用）
    browser.storage.local.get("whitelist").then((result)=>{document.querySelector("#whitelist").value = result.whitelist || "{}";});
    browser.storage.local.get("whitelist_mode").then((result)=>{document.querySelector("#whitelist_mode").value = result.whitelist_mode || "{}";});
}

document.addEventListener("DOMContentLoaded", restoreOptions);
document.querySelector("form").addEventListener("submit", saveOptions);

//--- internationalization
[].forEach.call(document.querySelectorAll('[data-i18n]'), function(el) {
    // This is a safe code, because the strings set to innerHTML is only the locale strings.
    el.innerHTML = Sanitizer.escapeHTML(chrome.i18n.getMessage(el.getAttribute('data-i18n')));
});
