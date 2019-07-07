importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/00391fd7675757fc9ed9.js",
    "revision": "cc164dc1787b04d4621b08e4165d8395"
  },
  {
    "url": "/_nuxt/0c000e3e3ff0edd0e4f5.js",
    "revision": "9f7399cd4b28186f9bdd5b7cb1efe0a7"
  },
  {
    "url": "/_nuxt/2127ad92648ec007d6d2.js",
    "revision": "300faee51f3b464d3bebb807c298144e"
  },
  {
    "url": "/_nuxt/2922d1addc8c2e8e3f76.js",
    "revision": "8b1e3829d6cc201a7a1c5202e9a0b71c"
  },
  {
    "url": "/_nuxt/2bb20924b4bbc23d8438.js",
    "revision": "1114200fa6c92bbb82f606f86e86c060"
  },
  {
    "url": "/_nuxt/514a8ad57f78813f9f1d.js",
    "revision": "7fa7d01adb9e24af1b173b9a6cecefc9"
  },
  {
    "url": "/_nuxt/7a2c7832082706795d39.js",
    "revision": "f61a3cec6acccd7c3bb3a49e44088d5e"
  },
  {
    "url": "/_nuxt/980d9a48f290e036cfc9.js",
    "revision": "20238c5c94511c7f9e1dbb502621c18d"
  },
  {
    "url": "/_nuxt/9ae81544b59a8d0c29a0.js",
    "revision": "5c3e3cff466b2275f7b33613dd98a65d"
  },
  {
    "url": "/_nuxt/9e8a61bf8bedd797a1cb.js",
    "revision": "401ac3fd7653e1d4b4a13dcb3024f754"
  },
  {
    "url": "/_nuxt/ae311df9140ea68b3750.js",
    "revision": "4823ec84cac2c8eff56a9be9bea9ab7f"
  },
  {
    "url": "/_nuxt/b570e01fd93e94a128e6.js",
    "revision": "23401b89a6be19964e10e7937a59fab3"
  },
  {
    "url": "/_nuxt/babfac1315b2dc348e8f.js",
    "revision": "6af73af3cce056781f3eb97e05ed47bd"
  },
  {
    "url": "/_nuxt/c02466e9d5de6d7c3252.js",
    "revision": "ac4b8b7f30ba60047322647a4be5e3e4"
  },
  {
    "url": "/_nuxt/c805be1cdaaa14fddf6d.js",
    "revision": "308a110adcfb880c482bb01611f9cf4f"
  },
  {
    "url": "/_nuxt/cadf5e8080749c017f1b.js",
    "revision": "641b48fbe7af9b66e9fcbd30e627ad5e"
  },
  {
    "url": "/_nuxt/cc98fc2319679ee2143a.js",
    "revision": "40f3f965894428c78e05911b2c43920b"
  },
  {
    "url": "/_nuxt/d9285b3c0438456aecc8.js",
    "revision": "5563837642d2518b2952ae0ecfaf82ea"
  },
  {
    "url": "/_nuxt/e743e095383d380c152a.js",
    "revision": "10121c457cb12dcb55acbfdee856ef71"
  },
  {
    "url": "/_nuxt/f20500fefabe1ff811cd.js",
    "revision": "ec4c7aba4caa8e3d69028f34cc584d77"
  },
  {
    "url": "/_nuxt/f427e3cd327cd9bc4a96.js",
    "revision": "bb42949c6ee64d1a9e723dbc1468e84d"
  },
  {
    "url": "/_nuxt/f933bcac43df05aeb7fd.js",
    "revision": "8a83c50b5f1a23cfecbcb65963a3150c"
  },
  {
    "url": "/_nuxt/f9904bba478e6140a1ca.js",
    "revision": "aa0797c3fb3d8d3635f0923d09f88c0a"
  },
  {
    "url": "/_nuxt/fa515a6a80c3c196887e.js",
    "revision": "69afdf9a57e4908bea551667ef19bc19"
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
