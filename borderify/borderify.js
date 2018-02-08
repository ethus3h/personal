browser.webRequest.onBeforeRequest.addListener(
    blockImages,
    {urls: ["<all_urls>"], types:["image","imageset"]}, ["blocking"]
);
