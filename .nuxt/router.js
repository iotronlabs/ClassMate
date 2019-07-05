import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'

const _05092c94 = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _35d18d62 = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _7a26972d = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _528dbd2c = () => interopDefault(import('..\\pages\\exam\\index.vue' /* webpackChunkName: "pages_exam_index" */))
const _5891598c = () => interopDefault(import('..\\pages\\exam2.vue' /* webpackChunkName: "pages_exam2" */))
const _4bc9588c = () => interopDefault(import('..\\pages\\forum.vue' /* webpackChunkName: "pages_forum" */))
const _2d4e3832 = () => interopDefault(import('..\\pages\\table.vue' /* webpackChunkName: "pages_table" */))
const _79593ffb = () => interopDefault(import('..\\pages\\addUsersForms\\addStudent.vue' /* webpackChunkName: "pages_addUsersForms_addStudent" */))
const _4ff15e22 = () => interopDefault(import('..\\pages\\addUsersForms\\addTeacher.vue' /* webpackChunkName: "pages_addUsersForms_addTeacher" */))
const _7b53504c = () => interopDefault(import('..\\pages\\exam\\exam1.vue' /* webpackChunkName: "pages_exam_exam1" */))
const _99a83c9a = () => interopDefault(import('..\\pages\\exam\\result.vue' /* webpackChunkName: "pages_exam_result" */))
const _070942d1 = () => interopDefault(import('..\\pages\\exam\\rules.vue' /* webpackChunkName: "pages_exam_rules" */))
const _ce39cc06 = () => interopDefault(import('..\\pages\\user\\admin.vue' /* webpackChunkName: "pages_user_admin" */))
const _b9d8e6ee = () => interopDefault(import('..\\pages\\user\\audit.vue' /* webpackChunkName: "pages_user_audit" */))
const _036ba90e = () => interopDefault(import('..\\pages\\user\\staff.vue' /* webpackChunkName: "pages_user_staff" */))
const _a93058e0 = () => interopDefault(import('..\\pages\\user\\teacher.vue' /* webpackChunkName: "pages_user_teacher" */))
const _2fbdaeeb = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

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
      component: _05092c94,
      name: "addStaff"
    }, {
      path: "/chat",
      component: _35d18d62,
      name: "chat"
    }, {
      path: "/dashboard",
      component: _7a26972d,
      name: "dashboard"
    }, {
      path: "/exam",
      component: _528dbd2c,
      name: "exam"
    }, {
      path: "/exam2",
      component: _5891598c,
      name: "exam2"
    }, {
      path: "/forum",
      component: _4bc9588c,
      name: "forum"
    }, {
      path: "/table",
      component: _2d4e3832,
      name: "table"
    }, {
      path: "/addUsersForms/addStudent",
      component: _79593ffb,
      name: "addUsersForms-addStudent"
    }, {
      path: "/addUsersForms/addTeacher",
      component: _4ff15e22,
      name: "addUsersForms-addTeacher"
    }, {
      path: "/exam/exam1",
      component: _7b53504c,
      name: "exam-exam1"
    }, {
      path: "/exam/result",
      component: _99a83c9a,
      name: "exam-result"
    }, {
      path: "/exam/rules",
      component: _070942d1,
      name: "exam-rules"
    }, {
      path: "/user/admin",
      component: _ce39cc06,
      name: "user-admin"
    }, {
      path: "/user/audit",
      component: _b9d8e6ee,
      name: "user-audit"
    }, {
      path: "/user/staff",
      component: _036ba90e,
      name: "user-staff"
    }, {
      path: "/user/teacher",
      component: _a93058e0,
      name: "user-teacher"
    }, {
      path: "/",
      component: _2fbdaeeb,
      name: "index"
    }],

    fallback: false
  })
}
