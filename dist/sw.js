importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0533aa785c98deb4facb.js",
    "revision": "71877f4a29858c5ce5e129ef370f6ddd"
  },
  {
    "url": "/_nuxt/0981c402baa2d267dfa2.js",
    "revision": "b75090af9c35465fb596fe77e67bf805"
  },
  {
    "url": "/_nuxt/0c4227cf6ecd953fc412.js",
    "revision": "88a70faceb0a34cedece13aa39062114"
  },
  {
    "url": "/_nuxt/12d1206a3438d8ecb92a.js",
    "revision": "3b56daa7d01fc9f4cd3cef783620e5b8"
  },
  {
    "url": "/_nuxt/154c760ee64e2a631d9b.js",
    "revision": "18297d18ab17c8c8ba7360bfcc299555"
  },
  {
    "url": "/_nuxt/15e84f995e150e88878f.js",
    "revision": "fe863c0303e87c8d5abd829f45222a69"
  },
  {
    "url": "/_nuxt/17b2e2a85b50841e220f.js",
    "revision": "21e230a2f44e05931842b65af8072b3f"
  },
  {
    "url": "/_nuxt/1b34b8ca814553cd8bf4.js",
    "revision": "3cea1667e8c17add63462c0c1a81b55a"
  },
  {
    "url": "/_nuxt/26d5f7e7fd937e07cabe.js",
    "revision": "dd198ac4dcc5543ac3b5394d02f6b930"
  },
  {
    "url": "/_nuxt/39003a425e8cda27146c.js",
    "revision": "c18e9e9c341195ea185503203bbfbbdc"
  },
  {
    "url": "/_nuxt/3ec7715afb032defb0b9.js",
    "revision": "48b1e6a90948bf8a41a2ed25124cdb37"
  },
  {
    "url": "/_nuxt/51926e69136bd3953042.js",
    "revision": "8a27e73b0e4a0e807548f5500f1a9fb7"
  },
  {
    "url": "/_nuxt/579b31ddf756a105084c.js",
    "revision": "1b40d156515f45510363f049a11c23d6"
  },
  {
    "url": "/_nuxt/6091862082048e5efeb6.js",
    "revision": "e932baff75beeb04da82e9799d2faf7d"
  },
  {
    "url": "/_nuxt/6ab467a5f5dc10d05b58.js",
    "revision": "6ff2c8ae421f77e936283f1d67be9cc3"
  },
  {
    "url": "/_nuxt/751d5b3b2cf99065eb79.js",
    "revision": "78acc09067163c67bd6ec7237d84b1cb"
  },
  {
    "url": "/_nuxt/81b8f772d5be23c4a9d1.js",
    "revision": "75d492103aa3ef498c8a5e26b957cca5"
  },
  {
    "url": "/_nuxt/8791ad0e8d2150938ce1.js",
    "revision": "c12b41230ad74069e22e05aa50f6e4f9"
  },
  {
    "url": "/_nuxt/98d68605ac954ed6db32.js",
    "revision": "20d6e8371216d56693ecf1693a250624"
  },
  {
    "url": "/_nuxt/a1391455b15bca96227a.js",
    "revision": "f459358ed045bc48eacbaba5d059ad3c"
  },
  {
    "url": "/_nuxt/abbc1f0b58db0f675c73.js",
    "revision": "aef33884c0dfdfa37a0c88530ddbde9a"
  },
  {
    "url": "/_nuxt/ae7404b2cf4de124539e.js",
    "revision": "c726b0542b8b9eb50ce5af7daea7d3cf"
  },
  {
    "url": "/_nuxt/b5140c209c5200a17c52.js",
    "revision": "1f8f5ecd92caff72a8390025aae9f00b"
  },
  {
    "url": "/_nuxt/cca58a69b83ca10e231a.js",
    "revision": "04ac6453b5856d577ba1bd90d89b5712"
  },
  {
    "url": "/_nuxt/cf2d6cfe6917dfc3e93f.js",
    "revision": "3b556720e22d9b4910a3182d10f8eedf"
  },
  {
    "url": "/_nuxt/d166f059b8f61819ee0a.js",
    "revision": "0c95fd23b47d9087051ae38737044eed"
  },
  {
    "url": "/_nuxt/d22eb01ae6b6e835e717.js",
    "revision": "128c7eab507c35bcc4d668f029aef5d1"
  },
  {
    "url": "/_nuxt/d87ee9ec358b9b4464bc.js",
    "revision": "c269117f52759f010e7c1cd7a1905200"
  },
  {
    "url": "/_nuxt/e1828438988429bdb949.js",
    "revision": "9bf06a418ec1f850721b293e43f158db"
  },
  {
    "url": "/_nuxt/f8586af13cc8c128ec0f.js",
    "revision": "235b43be0452f14e83868d78bb3db2d1"
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
