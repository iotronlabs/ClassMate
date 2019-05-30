importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/01095a7b3c2180f82f0c.js",
    "revision": "e3eae21e51e584d6f0435876c1a9a69b"
  },
  {
    "url": "/_nuxt/21ff5f9b211c6c1e5327.js",
    "revision": "0db69a368b836a84e1f3b00f2330e689"
  },
  {
    "url": "/_nuxt/25bfbe9920e4cb49a355.js",
    "revision": "b12eb2ec393a978803ac79a803119d3c"
  },
  {
    "url": "/_nuxt/3833e3c0b0cb5847ced4.js",
    "revision": "b2371e7d3f10a7d2a6fe108b8f8b1796"
  },
  {
    "url": "/_nuxt/8aa273b9bdd1c6bdc09a.js",
    "revision": "ef393142d535a7511ce2e311e297fb29"
  },
  {
    "url": "/_nuxt/aa5ca13919c76ef38d80.js",
    "revision": "09e758b043496511b60e402e53e8ebdd"
  },
  {
    "url": "/_nuxt/b75246d7051496b6519b.js",
    "revision": "aa02ee0dabf6fca862ddfb6ff40c6751"
  },
  {
    "url": "/_nuxt/cb1e793ea12d89a7e307.js",
    "revision": "ac2bdc696ab8802e204edeb7adc37028"
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
