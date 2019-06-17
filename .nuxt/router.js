import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'

const _41238cca = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _10ba2036 = () => interopDefault(import('..\\pages\\assessment-results.vue' /* webpackChunkName: "pages_assessment-results" */))
const _1cd40663 = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _a8fa52ce = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _cc0fadb4 = () => interopDefault(import('..\\pages\\forum.vue' /* webpackChunkName: "pages_forum" */))
const _ad948d5a = () => interopDefault(import('..\\pages\\table.vue' /* webpackChunkName: "pages_table" */))
const _5127500d = () => interopDefault(import('..\\pages\\take-assessment.vue' /* webpackChunkName: "pages_take-assessment" */))
const _48012767 = () => interopDefault(import('..\\pages\\addUsersForms\\addStudent.vue' /* webpackChunkName: "pages_addUsersForms_addStudent" */))
const _1e99458e = () => interopDefault(import('..\\pages\\addUsersForms\\addTeacher.vue' /* webpackChunkName: "pages_addUsersForms_addTeacher" */))
const _37a5a32e = () => interopDefault(import('..\\pages\\user\\admin.vue' /* webpackChunkName: "pages_user_admin" */))
const _2344be16 = () => interopDefault(import('..\\pages\\user\\audit.vue' /* webpackChunkName: "pages_user_audit" */))
const _4eb5bd7a = () => interopDefault(import('..\\pages\\user\\staff.vue' /* webpackChunkName: "pages_user_staff" */))
const _4c7e7cfc = () => interopDefault(import('..\\pages\\user\\teacher.vue' /* webpackChunkName: "pages_user_teacher" */))
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
      path: "/assessment-results",
      component: _10ba2036,
      name: "assessment-results"
    }, {
      path: "/chat",
      component: _1cd40663,
      name: "chat"
    }, {
      path: "/dashboard",
      component: _a8fa52ce,
      name: "dashboard"
    }, {
      path: "/forum",
      component: _cc0fadb4,
      name: "forum"
    }, {
      path: "/table",
      component: _ad948d5a,
      name: "table"
    }, {
      path: "/take-assessment",
      component: _5127500d,
      name: "take-assessment"
    }, {
      path: "/addUsersForms/addStudent",
      component: _48012767,
      name: "addUsersForms-addStudent"
    }, {
      path: "/addUsersForms/addTeacher",
      component: _1e99458e,
      name: "addUsersForms-addTeacher"
    }, {
      path: "/user/admin",
      component: _37a5a32e,
      name: "user-admin"
    }, {
      path: "/user/audit",
      component: _2344be16,
      name: "user-audit"
    }, {
      path: "/user/staff",
      component: _4eb5bd7a,
      name: "user-staff"
    }, {
      path: "/user/teacher",
      component: _4c7e7cfc,
      name: "user-teacher"
    }, {
      path: "/",
      component: _20caf752,
      name: "index"
    }],

    fallback: false
  })
}
