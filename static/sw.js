importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/028e1f2d883ec4ab0a71.js",
    "revision": "4576655f1adf95191384191f81413c73"
  },
  {
    "url": "/_nuxt/1f5e36cbd0f71530a054.js",
    "revision": "d813b8063ceca448e0845a8895df66ec"
  },
  {
    "url": "/_nuxt/2642052766ada95af7c5.js",
    "revision": "f8f46bf6549bae97bf30e5e07e283af5"
  },
  {
    "url": "/_nuxt/3d595dfae4e134179ef3.js",
    "revision": "b59a08c502ee6b0d793f59e2abbe51c2"
  },
  {
    "url": "/_nuxt/3e6afc95773e374f2fb2.js",
    "revision": "2e95838e0227f94328c5346908359df2"
  },
  {
    "url": "/_nuxt/40a7e9646a8979ca6684.js",
    "revision": "b8c57f005f95a3fee4cad8f8dde0984e"
  },
  {
    "url": "/_nuxt/53ecd64110d74e11da4e.js",
    "revision": "a059329557c48c33f10c7c9515a58c86"
  },
  {
    "url": "/_nuxt/5989c15b4bb6279d754a.js",
    "revision": "8968beceb7e4f820bbc21159fad6a8c7"
  },
  {
    "url": "/_nuxt/6bdcdab90b713f842200.js",
    "revision": "820082b992fc06a88f2ffd1b56bcccd8"
  },
  {
    "url": "/_nuxt/8cdf2adc15603528048a.js",
    "revision": "ea967f2eff8b0ba10eb61ca97309c664"
  },
  {
    "url": "/_nuxt/940a9e54edd3e846e25d.js",
    "revision": "cac266a681b02211bfd8c9cb0235a5e2"
  },
  {
    "url": "/_nuxt/9702ed0ff7836786ca3c.js",
    "revision": "9317bae12fc0ba082e7c41e45a4b66c8"
  },
  {
    "url": "/_nuxt/9791ff21f8bbc4c2d7b2.js",
    "revision": "81dceca3b462b073910e5009205e629e"
  },
  {
    "url": "/_nuxt/98be2fb8d27890ef3c09.js",
    "revision": "ef5a3279eda615ba9e836266db8e55ab"
  },
  {
    "url": "/_nuxt/9c04babd8a16e4a79a37.js",
    "revision": "b450db073d05803a3ede9b435f990ae5"
  },
  {
    "url": "/_nuxt/f72e256770e31bef818f.js",
    "revision": "5692f989a6b2d33dbfa7a53de3ea68da"
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
