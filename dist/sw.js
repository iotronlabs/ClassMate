importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/295e2d7ad177e1b7ebf8.js",
    "revision": "f6b4e8cc3616302386a009028cfaf5a0"
  },
  {
    "url": "/_nuxt/2d6a84f116fce9a3df7b.js",
    "revision": "06da722a693ae73ec69f9d97d89aa859"
  },
  {
    "url": "/_nuxt/34eec4e6ab735f50a979.js",
    "revision": "539c68a940ea590b856acc9c4f14c4c6"
  },
  {
    "url": "/_nuxt/49c7eb68186815434bee.js",
    "revision": "d48ba9d9ee5dfcb30249863dc32b4fcf"
  },
  {
    "url": "/_nuxt/4b2b4813ee0d05b9f0a1.js",
    "revision": "1ce0ffab0111f8d229cf11b6b593a704"
  },
  {
    "url": "/_nuxt/5667da00efc381ee9dfb.js",
    "revision": "9a7bf07798d754e60c060b86447ac368"
  },
  {
    "url": "/_nuxt/72f1cc6e8e99ec231348.js",
    "revision": "dfb1f753b9201de2fb4f6d9ee851e5f0"
  },
  {
    "url": "/_nuxt/9705056736d111796307.js",
    "revision": "32f8bce3f489db81b5b6939d8981678b"
  },
  {
    "url": "/_nuxt/bdd0630a3e387c5e0aeb.js",
    "revision": "01b3d62219b7997da70d07820be71cff"
  },
  {
    "url": "/_nuxt/feb9661e9cec7001f809.js",
    "revision": "beaead2d3ba607d42c94a78089a1a30e"
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
