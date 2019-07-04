importScripts('/_nuxt/workbox.4c4f5ca6.js')

workbox.precaching.precacheAndRoute([
  {
    "url": "/_nuxt/0256e6c91acb8a816d49.js",
    "revision": "4ebac97cf632d6587e6ba69e31fd8857"
  },
  {
    "url": "/_nuxt/12152b4557446c7d5988.js",
    "revision": "ef6dd93fcd5fbb86dde0cfaf2ec1fe7e"
  },
  {
    "url": "/_nuxt/39ea7a5be43fd24348c0.js",
    "revision": "0e156d2f23754247f49efdcb66cb8f84"
  },
  {
    "url": "/_nuxt/3a783dd206f4a0d8a006.js",
    "revision": "e458d7119fd6578da25168e4091684b2"
  },
  {
    "url": "/_nuxt/3a877762fda2f3cc6268.js",
    "revision": "1469e06c0623e08b72cd7b068afc9ba4"
  },
  {
    "url": "/_nuxt/3afc6c134a76b0e50bd5.js",
    "revision": "64e0e57dd176a0b0cacf58ee6a106d65"
  },
  {
    "url": "/_nuxt/42c95fc7f1ac19a3e8e0.js",
    "revision": "fed6b23ed09c96d0077986a42e103287"
  },
  {
    "url": "/_nuxt/4f8749c54c6066a3e384.js",
    "revision": "63e55ad9403d7b29e1f0461c7c6f54e1"
  },
  {
    "url": "/_nuxt/53671c3b25704001f548.js",
    "revision": "f8c042c16990bb20cea99c364307952f"
  },
  {
    "url": "/_nuxt/5bfe934f5539d8801a22.js",
    "revision": "2c7ab0c355cb8c5e9fc66a3110f0d6cb"
  },
  {
    "url": "/_nuxt/62a6572e71cab8cc9d6d.js",
    "revision": "259dbc263a5a8ca7652a8a770224e97f"
  },
  {
    "url": "/_nuxt/71128619fc625bdbe522.js",
    "revision": "5c2accde0566aea08082aad2de44f911"
  },
  {
    "url": "/_nuxt/792ca1a38424ab1a8486.js",
    "revision": "b64f4cfecf83d368b39d552a948727f8"
  },
  {
    "url": "/_nuxt/916acfb56ccf74bc2240.js",
    "revision": "22f0984f6217a41068ecef36095ae254"
  },
  {
    "url": "/_nuxt/9b2acfc998fb0d27540c.js",
    "revision": "cfb6e40850f1891b70eddca321212e80"
  },
  {
    "url": "/_nuxt/a25f80acac1578211eec.js",
    "revision": "e65d4b6632d4c38e84d4cb78fce91315"
  },
  {
    "url": "/_nuxt/c3841edb4abe8815ca5f.js",
    "revision": "8c290d9a446d088bd2b234e05a03c789"
  },
  {
    "url": "/_nuxt/c7eca4236f19b5400487.js",
    "revision": "5d52bd69d4ad7ee9c0294b80a0a5f789"
  },
  {
    "url": "/_nuxt/c81f367355613bb398d6.js",
    "revision": "83691dfc94381924aacd781301c8c4f4"
  },
  {
    "url": "/_nuxt/caf41d2acad9ca0b1795.js",
    "revision": "09ef150bfe008c0c86e230698c428151"
  },
  {
    "url": "/_nuxt/cf3556f6b46bdd6384e0.js",
    "revision": "7939ca92ff50d0fbc5cdf6700771129c"
  },
  {
    "url": "/_nuxt/da31a1a27786faf8963f.js",
    "revision": "b92ec02d1a7d247ab76318e9a906e3fe"
  },
  {
    "url": "/_nuxt/dbd2e3af4eb8b74af39c.js",
    "revision": "14ebfbfcbd61c210211310a85df4edab"
  },
  {
    "url": "/_nuxt/e0a13de92eddaa64aeec.js",
    "revision": "0f561cb30ef359abad7b67a064876027"
  },
  {
    "url": "/_nuxt/e4d6ecf3869965b74a54.js",
    "revision": "bc45c9382568637fc4dd83cca1c35a53"
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
