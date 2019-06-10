importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/128bed0f210163ae4ccc.js",
    "revision": "d46c009f8d2bc8097de12a9b25f6309a"
  },
  {
    "url": "/_nuxt/325a0b27330c0bc28f67.js",
    "revision": "15b5474cde3fa321963ccb48b2c0804d"
  },
  {
    "url": "/_nuxt/498b3032e73ddb2bf663.js",
    "revision": "fce50ca3d134d3ffadd8b56afe9fb6fd"
  },
  {
    "url": "/_nuxt/577add6efe9389de4874.js",
    "revision": "63db39b7f29ada3b121f2da69918a742"
  },
  {
    "url": "/_nuxt/5c558f982f641295b6a9.js",
    "revision": "208d32e873f802c331fcce6f7d7719c6"
  },
  {
    "url": "/_nuxt/5e60b887294cb8943488.js",
    "revision": "039c436eff4cd6c463385c83470d4c5f"
  },
  {
    "url": "/_nuxt/60995b9b62c9a4602980.js",
    "revision": "9a1529d39bf52d549c5c81966930998d"
  },
  {
    "url": "/_nuxt/6fc9121b87e7ecceaaf9.js",
    "revision": "67ba45f438802f2ee3d340a6081478e7"
  },
  {
    "url": "/_nuxt/885c92db8abdaabcb744.js",
    "revision": "ba333bbd24291aaf198859277822224b"
  },
  {
    "url": "/_nuxt/8bcce466a6c5f34c8a5c.js",
    "revision": "d0d9b6ab73e04f27187680f33fc10668"
  },
  {
    "url": "/_nuxt/8ff3c268dbd77158a039.js",
    "revision": "808b6e5c51174749b2d8bc64ddcb07b2"
  },
  {
    "url": "/_nuxt/a310f3ba8b4b62de4b5d.js",
    "revision": "bb614ce18f2b53aca74a9a0d7380d7d8"
  },
  {
    "url": "/_nuxt/a84d09d737b478abc71e.js",
    "revision": "8116c9bbdb75a8b6bd505556d2cee78c"
  },
  {
    "url": "/_nuxt/b842c7e0f0d0e729d722.js",
    "revision": "664a4051e542ef3c45b4bd8fd7f99c12"
  },
  {
    "url": "/_nuxt/c035e251565b21fc22e5.js",
    "revision": "f2acc8d0fbcb460e40f3b0632464d1de"
  },
  {
    "url": "/_nuxt/c2ad764a6ad8d34c7e89.js",
    "revision": "7de9057d0639f4b8b93c0d1db229f664"
  },
  {
    "url": "/_nuxt/c7830928e3cce82e810e.js",
    "revision": "14b8142cea1cb40dde34accb3c35d600"
  },
  {
    "url": "/_nuxt/d3abb6a980074ca87646.js",
    "revision": "f725828bfdcb9c3a51a1a96a82ee4cf3"
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
