browser.webRequest.onBeforeRequest.addListener(
    blockImages,
    {urls: ["<all_urls>"], types:["image","imageset"]}, ["blocking"]
);

PageStore.prototype.filterLargeMediaElement = function(size) {
    this.logData = undefined;

    if ( Date.now() < this.allowLargeMediaElementsUntil ) {
        return 0;
    }
    if ( µb.hnSwitches.evaluateZ('no-large-media', this.tabHostname) !== true ) {
        return 0;
    }
    if ( (size >>> 10) < µb.userSettings.largeMediaSize ) {
        return 0;
    }

    this.largeMediaCount += 1;
    if ( this.largeMediaTimer === null ) {
        this.largeMediaTimer = vAPI.setTimeout(
            this.injectLargeMediaElementScriptlet.bind(this),
            500
        );
    }

    if ( µb.logger.isEnabled() ) {
        this.logData = µb.hnSwitches.toLogData();
    }

    return 1;
};
