importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/09ca99a9a4f16e504620.js",
    "revision": "eef445402cc71cae7e183071595323e8"
  },
  {
    "url": "/_nuxt/2d780df59298fd612253.js",
    "revision": "a261e592d221b24942db8996fc64dc6a"
  },
  {
    "url": "/_nuxt/5246e8d7fed1a6bdc67a.js",
    "revision": "cef0b558acbada1e141999b15cee89b7"
  },
  {
    "url": "/_nuxt/52f4db1f665fdc9a0b02.js",
    "revision": "cae04c24a470a60bacc7172f5727b891"
  },
  {
    "url": "/_nuxt/978c4da1f2ace001447a.js",
    "revision": "50e9e162cd2f72303eee03b97cb5aa69"
  },
  {
    "url": "/_nuxt/9d355cee5161a3b08bba.js",
    "revision": "15e9a243595f727aba1166dfc9c58e61"
  },
  {
    "url": "/_nuxt/a1ed541895af6ae0cc2f.js",
    "revision": "ed7d45f1249c5026a7b238b1e054236a"
  },
  {
    "url": "/_nuxt/a87fbd57e54239c99379.js",
    "revision": "6cb5ef877bc64065233c4958a2b71a65"
  },
  {
    "url": "/_nuxt/dfb8a40f83df10f15e12.js",
    "revision": "22722338cc0d62e3ff45893a6134b0d4"
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
