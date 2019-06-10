import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'

const _41238cca = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _1cd40663 = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _a8fa52ce = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _ad948d5a = () => interopDefault(import('..\\pages\\table.vue' /* webpackChunkName: "pages_table" */))
const _48012767 = () => interopDefault(import('..\\pages\\addUsersForms\\addStudent.vue' /* webpackChunkName: "pages_addUsersForms_addStudent" */))
const _1e99458e = () => interopDefault(import('..\\pages\\addUsersForms\\addTeacher.vue' /* webpackChunkName: "pages_addUsersForms_addTeacher" */))
const _15295ea9 = () => interopDefault(import('..\\pages\\UserLogin\\loginAdmin.vue' /* webpackChunkName: "pages_UserLogin_loginAdmin" */))
const _1f59d135 = () => interopDefault(import('..\\pages\\UserLogin\\loginAudit.vue' /* webpackChunkName: "pages_UserLogin_loginAudit" */))
const _7fb1edba = () => interopDefault(import('..\\pages\\UserLogin\\loginStaff.vue' /* webpackChunkName: "pages_UserLogin_loginStaff" */))
const _2f2f9d3c = () => interopDefault(import('..\\pages\\UserLogin\\loginTeacher.vue' /* webpackChunkName: "pages_UserLogin_loginTeacher" */))
const _20caf752 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))
const _810188ce = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _3585169c = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _0ec5fcac = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _04ad1078 = () => interopDefault(import('..\\pages\\addUsersForms\\addStudent.vue' /* webpackChunkName: "pages_addUsersForms_addStudent" */))
const _4975a2c2 = () => interopDefault(import('..\\pages\\addUsersForms\\addTeacher.vue' /* webpackChunkName: "pages_addUsersForms_addTeacher" */))
const _5368d93a = () => interopDefault(import('..\\pages\\user\\admin.vue' /* webpackChunkName: "pages_user_admin" */))
const _5d994bc6 = () => interopDefault(import('..\\pages\\user\\audit.vue' /* webpackChunkName: "pages_user_audit" */))
const _841d2f6a = () => interopDefault(import('..\\pages\\user\\staff.vue' /* webpackChunkName: "pages_user_staff" */))
const _490a90e6 = () => interopDefault(import('..\\pages\\user\\teacher.vue' /* webpackChunkName: "pages_user_teacher" */))
const _345edfe8 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

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
      component: _810188ce,
      name: "addStaff"
    }, {
      path: "/chat",
      component: _3585169c,
      name: "chat"
    }, {
      path: "/dashboard",
      component: _0ec5fcac,
      name: "dashboard"
    }, {
      path: "/table",
      component: _ad948d5a,
      name: "table"
    }, {
      path: "/addUsersForms/addStudent",
      component: _04ad1078,
      name: "addUsersForms-addStudent"
    }, {
      path: "/addUsersForms/addTeacher",
      component: _4975a2c2,
      name: "addUsersForms-addTeacher"
    }, {
      path: "/user/admin",
      component: _5368d93a,
      name: "user-admin"
    }, {
      path: "/user/audit",
      component: _5d994bc6,
      name: "user-audit"
    }, {
      path: "/user/staff",
      component: _841d2f6a,
      name: "user-staff"
    }, {
      path: "/user/teacher",
      component: _490a90e6,
      name: "user-teacher"
    }, {
      path: "/",
      component: _345edfe8,
      name: "index"
    }],

    fallback: false
  })
}
