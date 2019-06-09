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
    "url": "/_nuxt/27a6907f6a44fbfd0636.js",
    "revision": "8a48a071879d8aca2f8b0d83038b7ba6"
  },
  {
    "url": "/_nuxt/2a9a6dff88ddb83a11fd.js",
    "revision": "89fb48c07d7c8bd7f1cfa195089c6f65"
  },
  {
    "url": "/_nuxt/2dd2d25f08158bc87183.js",
    "revision": "8929af5e8a6c886f11c6d2bf54827822"
  },
  {
    "url": "/_nuxt/2e879434d6b829029431.js",
    "revision": "3ddffbd5a7665de312f8fd8ec6a78272"
  },
  {
    "url": "/_nuxt/39ffd1e3de6aa181c28d.js",
    "revision": "2ceeba4ad8bacd9afa74fb6fb3016c01"
  },
  {
    "url": "/_nuxt/6774f61aeef269e5ea11.js",
    "revision": "c51798aa3137c692585a2bda5d49ce86"
  },
  {
    "url": "/_nuxt/687c95b11adf48f2a1e0.js",
    "revision": "3e5e19bdf58f0fe2584b124f5e3b5adf"
  },
  {
    "url": "/_nuxt/6effd5e8b4a098c45c99.js",
    "revision": "1a5361b745ca37b3079ebb499fbba97a"
  },
  {
    "url": "/_nuxt/835ea37d401184996532.js",
    "revision": "eff1c4526ae01bf105e9781cb85f456a"
  },
  {
    "url": "/_nuxt/84e91acfd015f58a9530.js",
    "revision": "606ff9ece4385eb3cbf73c9689f54ee7"
  },
  {
    "url": "/_nuxt/9cb4103e32e819e4ea40.js",
    "revision": "733bbf4c1627e3a740af1b583ec7b19a"
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
    "url": "/_nuxt/a2bdca2516c523918173.js",
    "revision": "bdc2e6d343bd9ade9d9109eb2a840f04"
  },
  {
    "url": "/_nuxt/a5a46eeb022df62b9072.js",
    "revision": "d49c1bc32aefb8689d8aedfb9fe9e48a"
  },
  {
    "url": "/_nuxt/cb7e32822e5bf1f200c2.js",
    "revision": "92e61892b375fad28598ab21739b7f63"
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
