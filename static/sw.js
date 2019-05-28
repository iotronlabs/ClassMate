importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/2a298f85a472909afb3e.js",
    "revision": "ac7daa1bad8e53ea1cb39526d725d719"
  },
  {
    "url": "/_nuxt/34a287ff2e045fad8592.js",
    "revision": "2bf76c90453e3bc21fb293a0a7978f10"
  },
  {
    "url": "/_nuxt/6eb2a6082a1bfcda7134.js",
    "revision": "a113be31bf0cb3cd1b26e352d4ee5220"
  },
  {
    "url": "/_nuxt/760e311591e586b62970.js",
    "revision": "a57af876e6ed5e8353ca75eb5ed91495"
  },
  {
    "url": "/_nuxt/b2119f3cedfbb0a83b22.js",
    "revision": "2008b926c5643c890488433f322e75e9"
  },
  {
    "url": "/_nuxt/be58cbce3d90504cfac3.js",
    "revision": "5a9a4e013829a61b7526c56d5f104bff"
  },
  {
    "url": "/_nuxt/e2af700ed2d5cff24774.js",
    "revision": "cd94e0dfaba1a5720ff307a1883a7e46"
  },
  {
    "url": "/_nuxt/ec3885fd0f1b97879360.js",
    "revision": "f7c3cdbfcf2a798c503711e537515ad9"
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
