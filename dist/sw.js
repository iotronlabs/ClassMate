importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/05635c4c4982e298a5e4.js",
    "revision": "d5f10303c14cfb4ab3e3a61b1ad4b3be"
  },
  {
    "url": "/_nuxt/43ed87f43890f8b82fe8.js",
    "revision": "a75e71c3b001e7b48c8c308e6c6249a1"
  },
  {
    "url": "/_nuxt/5284bcb62b8bae8f9846.js",
    "revision": "0a1a87627ee34643cfb2831305cd2620"
  },
  {
    "url": "/_nuxt/5802493a12eb22cde33b.js",
    "revision": "50308c25f376a1d87638f8c8d5793b25"
  },
  {
    "url": "/_nuxt/757ad122c95ca1261dbd.js",
    "revision": "527eb5b2c687c16c42359f5b58d88a04"
  },
  {
    "url": "/_nuxt/be5dae69ed4fee5bdaee.js",
    "revision": "534ba2e38199fce3d67a85982a181d88"
  },
  {
    "url": "/_nuxt/db9b51245e46ab70a0a7.js",
    "revision": "ee0afe52942a44e8eaa32a34536558e1"
  },
  {
    "url": "/_nuxt/e4502d9d29223069e71d.js",
    "revision": "94abd4cf004993b9c2ece800919f65e2"
  },
  {
    "url": "/_nuxt/f46484c635e07950458d.js",
    "revision": "1ddb2f9d4ce3aa307c5bbc339181092f"
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
