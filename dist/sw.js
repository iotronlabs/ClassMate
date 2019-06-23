importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0e43c6db899a2adc7c63.js",
    "revision": "035e50d6ef8b2d9be66b3ee3f530bfbe"
  },
  {
    "url": "/_nuxt/20db1e6c6beec51e65ed.js",
    "revision": "5d161f347363fea50fb17cfac45ed0c3"
  },
  {
    "url": "/_nuxt/2a677aeea30a15872b8e.js",
    "revision": "90e7ef6936cfc18fe368517ec6c8f415"
  },
  {
    "url": "/_nuxt/3bd25f7373407cdc01de.js",
    "revision": "f98a01cc6ae506c52810760b699aca8e"
  },
  {
    "url": "/_nuxt/3f6875342f3d7325da5a.js",
    "revision": "f11d539f60707260e387472d64662cfa"
  },
  {
    "url": "/_nuxt/4f32306f1e304b5a83cd.js",
    "revision": "a212fbe6ef5fd6662ed8fef4c204b27e"
  },
  {
    "url": "/_nuxt/5b86e126361d73e3bf02.js",
    "revision": "4d005a8768aa98ab5d1648cfadabf516"
  },
  {
    "url": "/_nuxt/5c39ff2fb0edd45a0ede.js",
    "revision": "f69e50acb64d88e62c52d0931238e304"
  },
  {
    "url": "/_nuxt/61a4ba0790a4d6ab74f2.js",
    "revision": "4363d9b8ee0de867eec9ce7d367ab292"
  },
  {
    "url": "/_nuxt/61b0b033349b4e1a2960.js",
    "revision": "b0d09454f984fd7d254a161eca1a6811"
  },
  {
    "url": "/_nuxt/65f82790fd344a349f6d.js",
    "revision": "12780b3d6b122bb08849912126f39936"
  },
  {
    "url": "/_nuxt/66c51e32024428252af2.js",
    "revision": "2adbf4dcdef24467cc788698e00529fa"
  },
  {
    "url": "/_nuxt/706ecffd68188a9061fa.js",
    "revision": "ff44200959b2c9827a09924b8d56435e"
  },
  {
    "url": "/_nuxt/723763766c65673607cd.js",
    "revision": "267db3bc3e84d97a0e450e94c274e06a"
  },
  {
    "url": "/_nuxt/77ec15023f81a4130fd1.js",
    "revision": "27fcebaaa93b29c2de08518cf2666bbc"
  },
  {
    "url": "/_nuxt/80959f0fb20418e0b70b.js",
    "revision": "f4f5eec0d73f85d0c4301f2436973680"
  },
  {
    "url": "/_nuxt/c112ed361eed43979c42.js",
    "revision": "db6453d501f4b54646aac06f05f7c12d"
  },
  {
    "url": "/_nuxt/d9fb464e3d2909e96edd.js",
    "revision": "2018d6839a3709e551d6bc1340199d6b"
  },
  {
    "url": "/_nuxt/db3866c8f02d36c7138c.js",
    "revision": "9d7668668ee89d068cbfc45caff9fe98"
  },
  {
    "url": "/_nuxt/e61507b32e69a4b4dfdf.js",
    "revision": "aab9596a256d97b2c273f97f923e834a"
  },
  {
    "url": "/_nuxt/e8cb52ae8ff611e01ed3.js",
    "revision": "4d2e4fcb8b2bf2d4131433fc3ebbb0b0"
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
