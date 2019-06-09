import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'

const _41238cca = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _1cd40663 = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _a8fa52ce = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _48012767 = () => interopDefault(import('..\\pages\\addUsersForms\\addStudent.vue' /* webpackChunkName: "pages_addUsersForms_addStudent" */))
const _1e99458e = () => interopDefault(import('..\\pages\\addUsersForms\\addTeacher.vue' /* webpackChunkName: "pages_addUsersForms_addTeacher" */))
const _15295ea9 = () => interopDefault(import('..\\pages\\UserLogin\\loginAdmin.vue' /* webpackChunkName: "pages_UserLogin_loginAdmin" */))
const _1f59d135 = () => interopDefault(import('..\\pages\\UserLogin\\loginAudit.vue' /* webpackChunkName: "pages_UserLogin_loginAudit" */))
const _7fb1edba = () => interopDefault(import('..\\pages\\UserLogin\\loginStaff.vue' /* webpackChunkName: "pages_UserLogin_loginStaff" */))
const _2f2f9d3c = () => interopDefault(import('..\\pages\\UserLogin\\loginTeacher.vue' /* webpackChunkName: "pages_UserLogin_loginTeacher" */))
const _20caf752 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

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
      component: _41238cca,
      name: "addStaff"
    }, {
      path: "/chat",
      component: _1cd40663,
      name: "chat"
    }, {
      path: "/dashboard",
      component: _a8fa52ce,
      name: "dashboard"
    }, {
      path: "/addUsersForms/addStudent",
      component: _48012767,
      name: "addUsersForms-addStudent"
    }, {
      path: "/addUsersForms/addTeacher",
      component: _1e99458e,
      name: "addUsersForms-addTeacher"
    }, {
      path: "/UserLogin/loginAdmin",
      component: _15295ea9,
      name: "UserLogin-loginAdmin"
    }, {
      path: "/UserLogin/loginAudit",
      component: _1f59d135,
      name: "UserLogin-loginAudit"
    }, {
      path: "/UserLogin/loginStaff",
      component: _7fb1edba,
      name: "UserLogin-loginStaff"
    }, {
      path: "/UserLogin/loginTeacher",
      component: _2f2f9d3c,
      name: "UserLogin-loginTeacher"
    }, {
      path: "/",
      component: _20caf752,
      name: "index"
    }],

    fallback: false
  })
}
