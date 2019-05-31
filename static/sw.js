importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/00de6d3fba3d817233c9.js",
    "revision": "4eae0c8e1279f4eaf30217e22fcf4df1"
  },
  {
    "url": "/_nuxt/045ad7b46796aca70f4c.js",
    "revision": "ef393142d535a7511ce2e311e297fb29"
  },
  {
    "url": "/_nuxt/21ff5f9b211c6c1e5327.js",
    "revision": "0db69a368b836a84e1f3b00f2330e689"
  },
  {
    "url": "/_nuxt/232732790cb1c20dc513.js",
    "revision": "4400154ca1121a744bb294c8165fdaa9"
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
    "url": "/_nuxt/aa5ca13919c76ef38d80.js",
    "revision": "09e758b043496511b60e402e53e8ebdd"
  },
  {
    "url": "/_nuxt/af127bec2d068362945c.js",
    "revision": "c4f7a35176296e3da21a24515c2970ba"
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
