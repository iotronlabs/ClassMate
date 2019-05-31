importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/2ed00d758f834da8c374.js",
    "revision": "8ee58063613937669d22fbd0c908a467"
  },
  {
    "url": "/_nuxt/3833e3c0b0cb5847ced4.js",
    "revision": "b2371e7d3f10a7d2a6fe108b8f8b1796"
  },
  {
    "url": "/_nuxt/59376e91db53ea05e889.js",
    "revision": "ef393142d535a7511ce2e311e297fb29"
  },
  {
    "url": "/_nuxt/6179c42bf5fdad16a489.js",
    "revision": "96028b85f960a39f02542ee1edd4c1f2"
  },
  {
    "url": "/_nuxt/806abea447e6ff97a844.js",
    "revision": "4e96add7fa279cedc9c2c3fc27ac23ae"
  },
  {
    "url": "/_nuxt/8f905df7093106947db0.js",
    "revision": "644dd6fe6420a34adc55fdc8cf60488f"
  },
  {
    "url": "/_nuxt/9b641a5614610a1a420d.js",
    "revision": "f5faeab914ab6070a588ece40508f836"
  },
  {
    "url": "/_nuxt/fa69cac37b18fe87c232.js",
    "revision": "d37261b287b28fd2678cc9f3797bf0dd"
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
