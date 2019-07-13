importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0163d52d9e6a08ae2971.js",
    "revision": "8e79117dc50a1864b7cd9df983e9a1f3"
  },
  {
    "url": "/_nuxt/086377a69838bcff47aa.js",
    "revision": "b75090af9c35465fb596fe77e67bf805"
  },
  {
    "url": "/_nuxt/12d1206a3438d8ecb92a.js",
    "revision": "3b56daa7d01fc9f4cd3cef783620e5b8"
  },
  {
    "url": "/_nuxt/15e84f995e150e88878f.js",
    "revision": "fe863c0303e87c8d5abd829f45222a69"
  },
  {
    "url": "/_nuxt/1b34b8ca814553cd8bf4.js",
    "revision": "3cea1667e8c17add63462c0c1a81b55a"
  },
  {
    "url": "/_nuxt/2205f7d1e75cbd498fab.js",
    "revision": "78acc09067163c67bd6ec7237d84b1cb"
  },
  {
    "url": "/_nuxt/34cb10800e780a86cd00.js",
    "revision": "3d700d58cf94a5d7d0e893f6c7422596"
  },
  {
    "url": "/_nuxt/36276debd3141d9aee61.js",
    "revision": "88a70faceb0a34cedece13aa39062114"
  },
  {
    "url": "/_nuxt/39003a425e8cda27146c.js",
    "revision": "c18e9e9c341195ea185503203bbfbbdc"
  },
  {
    "url": "/_nuxt/39c950477bc77b20b20f.js",
    "revision": "21e230a2f44e05931842b65af8072b3f"
  },
  {
    "url": "/_nuxt/3d0d866ae235e8ed0ffe.js",
    "revision": "48b1e6a90948bf8a41a2ed25124cdb37"
  },
  {
    "url": "/_nuxt/3dab772d7faee9b521f4.js",
    "revision": "f2e5d41ba79565c8916c5c7b39a06071"
  },
  {
    "url": "/_nuxt/3f52189b95d03390720d.js",
    "revision": "e95492466c385a2659d5990c513b0e9c"
  },
  {
    "url": "/_nuxt/5269f86e1e488810857c.js",
    "revision": "aef33884c0dfdfa37a0c88530ddbde9a"
  },
  {
    "url": "/_nuxt/529570f2f08d672fa280.js",
    "revision": "e959f2e7bdcb0e8b492c267b8ccb0bb1"
  },
  {
    "url": "/_nuxt/5f00b41e1465f433a920.js",
    "revision": "3b556720e22d9b4910a3182d10f8eedf"
  },
  {
    "url": "/_nuxt/600dd0befcf425aa7cbe.js",
    "revision": "17e6d3f1e802e15e57335367ee112fcb"
  },
  {
    "url": "/_nuxt/7f4081a38354d3a11a7d.js",
    "revision": "5dea3e4ac096ae27900b55ed16ced407"
  },
  {
    "url": "/_nuxt/81b8f772d5be23c4a9d1.js",
    "revision": "75d492103aa3ef498c8a5e26b957cca5"
  },
  {
    "url": "/_nuxt/91f62c0027270196df33.js",
    "revision": "dd198ac4dcc5543ac3b5394d02f6b930"
  },
  {
    "url": "/_nuxt/9390d52db2119b41f036.js",
    "revision": "c6792d8a6f9f02be27332d5f4721dc9c"
  },
  {
    "url": "/_nuxt/94c491c6780830a645b5.js",
    "revision": "c726b0542b8b9eb50ce5af7daea7d3cf"
  },
  {
    "url": "/_nuxt/954ff0fe3c565b1ad8e6.js",
    "revision": "9bf06a418ec1f850721b293e43f158db"
  },
  {
    "url": "/_nuxt/98d68605ac954ed6db32.js",
    "revision": "20d6e8371216d56693ecf1693a250624"
  },
  {
    "url": "/_nuxt/b30edbd33e2b99021598.js",
    "revision": "6ff2c8ae421f77e936283f1d67be9cc3"
  },
  {
    "url": "/_nuxt/b5140c209c5200a17c52.js",
    "revision": "1f8f5ecd92caff72a8390025aae9f00b"
  },
  {
    "url": "/_nuxt/d166f059b8f61819ee0a.js",
    "revision": "0c95fd23b47d9087051ae38737044eed"
  },
  {
    "url": "/_nuxt/d87ee9ec358b9b4464bc.js",
    "revision": "c269117f52759f010e7c1cd7a1905200"
  },
  {
    "url": "/_nuxt/f03ef5b63a1b9c0ff60f.js",
    "revision": "0f5753b6e9d2a71c4cc01fcb86ffe93e"
  },
  {
    "url": "/_nuxt/f7d62100230e1a777e64.js",
    "revision": "1b40d156515f45510363f049a11c23d6"
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
