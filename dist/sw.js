importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/182591c9e188cbf511dd.js",
    "revision": "6f61c8618c672b8f051dcd10dc2da3e6"
  },
  {
    "url": "/_nuxt/1ae33f442b9b5aebed0c.js",
    "revision": "53e0bcf5f71f1be3fa65b21761d5c444"
  },
  {
    "url": "/_nuxt/1e4ed213a009d21a7fa0.js",
    "revision": "a5a321c32072a5beb3e18b5906f948e9"
  },
  {
    "url": "/_nuxt/231d4aab60cf0cd3fe36.js",
    "revision": "1feaf4960ab49db7873d9cd677fcaa72"
  },
  {
    "url": "/_nuxt/2c876ea263095d089e0b.js",
    "revision": "d25e2bfa39d660a5ec1736dd95c743c5"
  },
  {
    "url": "/_nuxt/303848661570f733534d.js",
    "revision": "7f09d2ca7d117a6103ec7d43e988aa58"
  },
  {
    "url": "/_nuxt/3b61fda713c9f6709cce.js",
    "revision": "1fe08d3d186024567b5dabbd166558d3"
  },
  {
    "url": "/_nuxt/3c760ed4a71691ca621c.js",
    "revision": "187dcdb6d23db817421b47a5d9e1a18b"
  },
  {
    "url": "/_nuxt/4025a6898ac86c8a21bc.js",
    "revision": "b1c4b736d26c5acc62b0c0edfd94ab85"
  },
  {
    "url": "/_nuxt/5246c0fa548aa12437d1.js",
    "revision": "482a871b3b06c334eeb192d0b5fdc1d5"
  },
  {
    "url": "/_nuxt/54470d21f1644110232a.js",
    "revision": "198113f9f2d2acf8f74826c344edc66e"
  },
  {
    "url": "/_nuxt/5f01ee34b081a345e38c.js",
    "revision": "206c94e194bb9203d99a1e4abe7c0e5a"
  },
  {
    "url": "/_nuxt/70d100e3b342e3505bd1.js",
    "revision": "ba7fe4445676e97dcc229a7d2b23ab3d"
  },
  {
    "url": "/_nuxt/7bb8b50b47aa81c571d4.js",
    "revision": "9219526ec6642b9ebcba05c9086e91b7"
  },
  {
    "url": "/_nuxt/7fb8ca1d7d6f623e2892.js",
    "revision": "acbc0bdc03e2dd27e95d5c452e79a973"
  },
  {
    "url": "/_nuxt/a49e01c55c91f19c78a1.js",
    "revision": "2571c5c17c98f2c761541fe53f57d62e"
  },
  {
    "url": "/_nuxt/b9323ae366c43ae823bc.js",
    "revision": "1ae1adbfdb3d077a2b34da13be825c87"
  },
  {
    "url": "/_nuxt/bf8e037f4f3cef5fd7bb.js",
    "revision": "6a11ea53c8a94e88c2b872c9c56997c8"
  },
  {
    "url": "/_nuxt/c4e79e711085ef714919.js",
    "revision": "64e50c94c239bddd023c87295122117c"
  },
  {
    "url": "/_nuxt/c524f5d0faf8e9f72612.js",
    "revision": "3557d1670412de67baf56b52641a1b55"
  },
  {
    "url": "/_nuxt/d65eeb85bc2ffbe7a8be.js",
    "revision": "c21394b09769aca9e79dfbaaac37b4f2"
  },
  {
    "url": "/_nuxt/f0d93f6e75fd265f72e3.js",
    "revision": "b062430e6a1d3bba1d32da7a0c9acc5c"
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
