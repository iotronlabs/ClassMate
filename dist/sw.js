importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0f8d75f7517d5256277c.js",
    "revision": "1ac9e3773406c2b360ff05f159abbcb7"
  },
  {
    "url": "/_nuxt/11c20797ffed8de02fe9.js",
    "revision": "958b7804c58feb8db08a59576394875a"
  },
  {
    "url": "/_nuxt/11c62ff0c8f90344148c.js",
    "revision": "6ac2339470e49f4f9c6027573eed4029"
  },
  {
    "url": "/_nuxt/1e8a872aa15a2b7728ca.js",
    "revision": "0295ce75040beffe2cc147e624f2dbe0"
  },
  {
    "url": "/_nuxt/264d4c21c6b5ec1219c1.js",
    "revision": "bd1511da47c04cc06833a2ab4e93d24b"
  },
  {
    "url": "/_nuxt/3a4a9f4ad1e6a24ad55f.js",
    "revision": "06cc5f51e781106fbfa3f99500cf1d54"
  },
  {
    "url": "/_nuxt/3bd25f7373407cdc01de.js",
    "revision": "f98a01cc6ae506c52810760b699aca8e"
  },
  {
    "url": "/_nuxt/4d63bd8715a5c3cf7586.js",
    "revision": "cb7eddd4bcad23a87f9f51cd55e841c3"
  },
  {
    "url": "/_nuxt/5b83a5c5e8092df01045.js",
    "revision": "a989b9ff1e040f83db275d745bbf9e84"
  },
  {
    "url": "/_nuxt/617e941a34f3e2f63f4b.js",
    "revision": "1ecf195e7eb90aa5fb2a0734d514c396"
  },
  {
    "url": "/_nuxt/681bbcd08472e5f7cad7.js",
    "revision": "39a5d257f7cc0fd2a76866b0523312fc"
  },
  {
    "url": "/_nuxt/95649ca258b28853e3d2.js",
    "revision": "f1c382365003f54d36765f6bc96a9d20"
  },
  {
    "url": "/_nuxt/9ddb63628d1f8d992438.js",
    "revision": "5b5be1b73bd4e8ea57d02ae81e363cf9"
  },
  {
    "url": "/_nuxt/a0163bffd737f2a4eabe.js",
    "revision": "7af8a8e8601ca9df01ae27daae75d844"
  },
  {
    "url": "/_nuxt/ae8ec21c8a4e01157ad5.js",
    "revision": "8087ef697106de01cdc1af24c37ee0ee"
  },
  {
    "url": "/_nuxt/c6a9e4d6e7104af861a4.js",
    "revision": "300c8879494b9c55ba1ca4acf5d2f288"
  },
  {
    "url": "/_nuxt/cd311d8c6c3f795c8e81.js",
    "revision": "a29e49972ad664d7f150f379fea1451c"
  },
  {
    "url": "/_nuxt/dcf39610cd8f8341be04.js",
    "revision": "e738924b0f2fef1bcfb2635cc1322e7c"
  },
  {
    "url": "/_nuxt/ebd77178213a872e3716.js",
    "revision": "14f7041fb4e9152188b3fef29a80c7f4"
  },
  {
    "url": "/_nuxt/ed3ef8a05a4433cf2a03.js",
    "revision": "e098483ee8e680566f3177bac5137f54"
  },
  {
    "url": "/_nuxt/efeb5b9053fa9f9f061d.js",
    "revision": "b780d120f1a23e7f53c564fb52921538"
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
