importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0792d3a8d723b68ad431.js",
    "revision": "6af2650002bd204bc1bb51e70588d5a3"
  },
  {
    "url": "/_nuxt/0b97cbeb7903aee6fcd2.js",
    "revision": "2192a8d602984840d3a7a2eafd3bf4b2"
  },
  {
    "url": "/_nuxt/19df6ba79afedb423d83.js",
    "revision": "8ca6bc3de847885ac9f9e98b72507f88"
  },
  {
    "url": "/_nuxt/1b5880812345cc04bb5c.js",
    "revision": "c51798aa3137c692585a2bda5d49ce86"
  },
  {
    "url": "/_nuxt/28365aaab8cffd495851.js",
    "revision": "b8e3f0d2fc7fb4820aca2bff0f2783b4"
  },
  {
    "url": "/_nuxt/3ba02534f4cc71622ac8.js",
    "revision": "4b60899925bdd68b3e58642952e0c993"
  },
  {
    "url": "/_nuxt/4cc6e766f514c6996ad8.js",
    "revision": "8929af5e8a6c886f11c6d2bf54827822"
  },
  {
    "url": "/_nuxt/6a5b798189d56d8ebfa8.js",
    "revision": "02ea89acaa201f1626bc7c1f4c2063d4"
  },
  {
    "url": "/_nuxt/6effd5e8b4a098c45c99.js",
    "revision": "1a5361b745ca37b3079ebb499fbba97a"
  },
  {
    "url": "/_nuxt/7d40dcf5748e68502ac1.js",
    "revision": "69ed9e58076370da27b69b64973ba7f5"
  },
  {
    "url": "/_nuxt/84e91acfd015f58a9530.js",
    "revision": "606ff9ece4385eb3cbf73c9689f54ee7"
  },
  {
    "url": "/_nuxt/9859ca0e7517ce955ef4.js",
    "revision": "4f3b307e89cf17f34767efa8234df58a"
  },
  {
    "url": "/_nuxt/9f464e0d457e6a571b34.js",
    "revision": "03d241e66f254da912b39409c0a8bc12"
  },
  {
    "url": "/_nuxt/a0373a0db69cd507f449.js",
    "revision": "c214e012e482a36d1712d0c8e1784aba"
  },
  {
    "url": "/_nuxt/bd9eea7630e1a5507e0c.js",
    "revision": "3b5fb17df85925a43089178d625a1bc8"
  },
  {
    "url": "/_nuxt/dc49d4090de3b9e13666.js",
    "revision": "73e8e37be61841a302382379656d4339"
  },
  {
    "url": "/_nuxt/dd1740c0b4c6aea8db48.js",
    "revision": "5891931b89741e74f965f0f86b097dc6"
  },
  {
    "url": "/_nuxt/df743688c161a13e1097.js",
    "revision": "92e61892b375fad28598ab21739b7f63"
  },
  {
    "url": "/_nuxt/f11991c793e256329574.js",
    "revision": "9217afa758db7e5de861500000072f81"
  }
], {
  "cacheId": "client",
  "directoryIndex": "/",
  "cleanUrls": false
})

workbox.clientsClaim()
workbox.skipWaiting()

workbox.routing.registerRoute(new RegExp('/_nuxt/.*'), workbox.strategies.cacheFirst({}), 'GET')

workbox.routing.registerRoute(new RegExp('/.*'), workbox.strategies.networkFirst({}), 'GET')
