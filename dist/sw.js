importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/25bfbe9920e4cb49a355.js",
    "revision": "b12eb2ec393a978803ac79a803119d3c"
  },
  {
    "url": "/_nuxt/28ba534cc5dadb798551.js",
    "revision": "ea7c233ad0752b7507319fe2da1afeb4"
  },
  {
    "url": "/_nuxt/2f0337e7f07c3604dd67.js",
    "revision": "c1e5362ecf79da339b7b8c0e9d919e58"
  },
  {
    "url": "/_nuxt/5eb413398de205b0c85c.js",
    "revision": "7c99a421148c2f5bd27e0d7ee810f539"
  },
  {
    "url": "/_nuxt/95627a4c77ad454b49e8.js",
    "revision": "76155a1e8e76a4f648b164a77b2429ae"
  },
  {
    "url": "/_nuxt/aa5ca13919c76ef38d80.js",
    "revision": "09e758b043496511b60e402e53e8ebdd"
  },
  {
    "url": "/_nuxt/db19ecef275a7459b0cc.js",
    "revision": "3b440732f3137d9d528159ab7345311c"
  },
  {
    "url": "/_nuxt/f652f93b3f901f27c25b.js",
    "revision": "3641af5a811315e7e79f4b352f68fbc7"
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
