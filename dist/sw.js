importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0c49c9f0faed68f9df7f.js",
    "revision": "7c2b740ff0b1ca2e1daba93483d67c44"
  },
  {
    "url": "/_nuxt/38fe02003db7a40e1de6.js",
    "revision": "e952dda5771ae157020c6dcb497f1efe"
  },
  {
    "url": "/_nuxt/43b1f224a67f2f3c31aa.js",
    "revision": "9e21b6a4533df01d53d7f81b8dbae401"
  },
  {
    "url": "/_nuxt/4f994f96ca875961ac01.js",
    "revision": "38036b013cf08974d3d26ee1bacbc2f5"
  },
  {
    "url": "/_nuxt/577add6efe9389de4874.js",
    "revision": "63db39b7f29ada3b121f2da69918a742"
  },
  {
    "url": "/_nuxt/5c558f982f641295b6a9.js",
    "revision": "208d32e873f802c331fcce6f7d7719c6"
  },
  {
    "url": "/_nuxt/60995b9b62c9a4602980.js",
    "revision": "9a1529d39bf52d549c5c81966930998d"
  },
  {
    "url": "/_nuxt/73ace373f8e9a6b321a2.js",
    "revision": "db327622b73502273fcb8b378176abe9"
  },
  {
    "url": "/_nuxt/84880ac56442f03e372a.js",
    "revision": "7f6190755d1f4a6c90308edef6cb5d8f"
  },
  {
    "url": "/_nuxt/94d2860c2963b145683c.js",
    "revision": "64de223a5a3f17f108592e1fdf7039ae"
  },
  {
    "url": "/_nuxt/a310f3ba8b4b62de4b5d.js",
    "revision": "bb614ce18f2b53aca74a9a0d7380d7d8"
  },
  {
    "url": "/_nuxt/a65c1bfb996a492c1354.js",
    "revision": "c52f5f8507052f16556fd58178d3334a"
  },
  {
    "url": "/_nuxt/ad6c76fab738901e1283.js",
    "revision": "c673595fb3f043f5ab52554e7f9d685f"
  },
  {
    "url": "/_nuxt/add1da999a31e783b550.js",
    "revision": "67ba45f438802f2ee3d340a6081478e7"
  },
  {
    "url": "/_nuxt/ae79b5d8c07ece86bb35.js",
    "revision": "d2d28974e4baddac85fb5c2239415113"
  },
  {
    "url": "/_nuxt/c035e251565b21fc22e5.js",
    "revision": "f2acc8d0fbcb460e40f3b0632464d1de"
  },
  {
    "url": "/_nuxt/f283ee4f8ac736256d17.js",
    "revision": "3a178bfd18a8116113f78487a27458ec"
  },
  {
    "url": "/_nuxt/f6f28fb47007a555e36e.js",
    "revision": "77fd76d21fdedcc7e54b6dbce02954cd"
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
