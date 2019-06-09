import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'

const _5b1e4f99 = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _98f2ee9c = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _5e3f24ac = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _489fd1f4 = () => interopDefault(import('..\\pages\\userProfile.vue' /* webpackChunkName: "pages_userProfile" */))
const _368fe43a = () => interopDefault(import('..\\pages\\UserLogin\\loginAdmin.vue' /* webpackChunkName: "pages_UserLogin_loginAdmin" */))
const _40c056c6 = () => interopDefault(import('..\\pages\\UserLogin\\loginAudit.vue' /* webpackChunkName: "pages_UserLogin_loginAudit" */))
const _bdcf196a = () => interopDefault(import('..\\pages\\UserLogin\\loginStaff.vue' /* webpackChunkName: "pages_UserLogin_loginStaff" */))
const _dde9fae6 = () => interopDefault(import('..\\pages\\UserLogin\\loginTeacher.vue' /* webpackChunkName: "pages_UserLogin_loginTeacher" */))
const _2f384be8 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

if (process.client) {
  if ('scrollRestoration' in window.history) {
    window.history.scrollRestoration = 'manual'

    // reset scrollRestoration to auto when leaving page, allowing page reload
    // and back-navigation from other pages to use the browser to restore the
    // scrolling position.
    window.addEventListener('beforeunload', () => {
      window.history.scrollRestoration = 'auto'
    })

    // Setting scrollRestoration to manual again when returning to this page.
    window.addEventListener('load', () => {
      window.history.scrollRestoration = 'manual'
    })
  }
}
const scrollBehavior = function (to, from, savedPosition) {
  // if the returned position is falsy or an empty object,
  // will retain current scroll position.
  let position = false

  // if no children detected and scrollToTop is not explicitly disabled
  if (
    to.matched.length < 2 &&
    to.matched.every(r => r.components.default.options.scrollToTop !== false)
  ) {
    // scroll to the top of the page
    position = { x: 0, y: 0 }
  } else if (to.matched.some(r => r.components.default.options.scrollToTop)) {
    // if one of the children has scrollToTop option set to true
    position = { x: 0, y: 0 }
  }

  // savedPosition is only available for popstate navigations (back button)
  if (savedPosition) {
    position = savedPosition
  }

  return new Promise((resolve) => {
    // wait for the out transition to complete (if necessary)
    window.$nuxt.$once('triggerScroll', () => {
      // coords will be used if no selector is provided,
      // or if the selector didn't match any element.
      if (to.hash) {
        let hash = to.hash
        // CSS.escape() is not supported with IE and Edge.
        if (typeof window.CSS !== 'undefined' && typeof window.CSS.escape !== 'undefined') {
          hash = '#' + window.CSS.escape(hash.substr(1))
        }
        try {
          if (document.querySelector(hash)) {
            // scroll to anchor by returning the selector
            position = { selector: hash }
          }
        } catch (e) {
          console.warn('Failed to save scroll position. Please add CSS.escape() polyfill (https://github.com/mathiasbynens/CSS.escape).')
        }
      }
      resolve(position)
    })
  })
}

export function createRouter() {
  return new Router({
    mode: 'history',
    base: decodeURI('/'),
    linkActiveClass: 'nuxt-link-active',
    linkExactActiveClass: 'nuxt-link-exact-active',
    scrollBehavior,

    routes: [{
      path: "/addStaff",
      component: _5b1e4f99,
      name: "addStaff"
    }, {
      path: "/chat",
      component: _98f2ee9c,
      name: "chat"
    }, {
      path: "/dashboard",
      component: _5e3f24ac,
      name: "dashboard"
    }, {
      path: "/userProfile",
      component: _489fd1f4,
      name: "userProfile"
    }, {
      path: "/UserLogin/loginAdmin",
      component: _368fe43a,
      name: "UserLogin-loginAdmin"
    }, {
      path: "/UserLogin/loginAudit",
      component: _40c056c6,
      name: "UserLogin-loginAudit"
    }, {
      path: "/UserLogin/loginStaff",
      component: _bdcf196a,
      name: "UserLogin-loginStaff"
    }, {
      path: "/UserLogin/loginTeacher",
      component: _dde9fae6,
      name: "UserLogin-loginTeacher"
    }, {
      path: "/",
      component: _2f384be8,
      name: "index"
    }],

    fallback: false
  })
}
