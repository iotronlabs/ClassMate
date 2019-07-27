import Auth from './auth'

import './middleware'

// Active schemes
import scheme_3e2123be from './schemes/local.js'

export default function (ctx, inject) {
  // Options
  const options = {"resetOnError":false,"scopeKey":"scope","rewriteRedirects":true,"fullPathRedirect":false,"watchLoggedIn":true,"redirect":{"login":"/","logout":"/","home":"/","callback":"/dashboard"},"vuex":{"namespace":"auth"},"cookie":{"prefix":"auth.","options":{"path":"/","expires":5}},"localStorage":false,"token":{"prefix":"_token."},"refresh_token":{"prefix":"_refresh_token."},"defaultStrategy":"local"}

  // Create a new Auth instance
  const $auth = new Auth(ctx, options)

  // Register strategies
  // local
  $auth.registerStrategy('local', new scheme_3e2123be($auth, {"endpoints":{"login":{"url":"/api/auth/login","method":"post","propertyName":"token"},"logout":{"url":"/api/students/out","method":"post"},"user":{"url":"/api/auth/me","method":"get","propertyName":"data"}},"tokenRequired":true,"tokenType":"Bearer","_name":"local"}))

  // Inject it to nuxt context as $auth
  inject('auth', $auth)
  ctx.$auth = $auth

  // Initialize auth
  return $auth.init().catch(error => {
    if (process.client) {
      console.error('[ERROR] [AUTH]', error)
    }
  })
}
