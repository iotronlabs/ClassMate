importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0365af18e8556b70ca02.js",
    "revision": "a54a848b1772a894d97c9d410a4a5445"
  },
  {
    "url": "/_nuxt/11fac2aa09e4a47b0a1f.js",
    "revision": "406f207030063303f0b42ec945b6efbf"
  },
  {
    "url": "/_nuxt/3789ac225e2a176a141c.js",
    "revision": "e886df47410aff13136ef8afd8474ae1"
  },
  {
    "url": "/_nuxt/783dbe67cddb4058e881.js",
    "revision": "c4dcbe08b6a349c611c14fcf2a42f839"
  },
  {
    "url": "/_nuxt/aad2083b448d94d3d6ad.js",
    "revision": "c48b9d06f8f7d6a6da4d6fcd3c745e9a"
  },
  {
    "url": "/_nuxt/be2f910143b026b78489.js",
    "revision": "8d67d23a6e0766b389e1ec4b9d3febb7"
  },
  {
    "url": "/_nuxt/d6b3062ae1ba144cc74c.js",
    "revision": "c6b35736f698f57711b517830c8f2599"
  },
  {
    "url": "/_nuxt/db72edf41a41d31258d5.js",
    "revision": "3b4495c9e5c9bd71fa7538595efe3499"
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
