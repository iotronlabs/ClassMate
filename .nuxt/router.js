import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'

const _61dc55b6 = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _16ce254f = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _bc39a9a6 = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _7d75512c = () => interopDefault(import('..\\pages\\exam\\index.vue' /* webpackChunkName: "pages_exam_index" */))
const _5db7ed8c = () => interopDefault(import('..\\pages\\exam2.vue' /* webpackChunkName: "pages_exam2" */))
const _417c308c = () => interopDefault(import('..\\pages\\forum.vue' /* webpackChunkName: "pages_forum" */))
const _4d916cd8 = () => interopDefault(import('..\\pages\\config\\course.vue' /* webpackChunkName: "pages_config_course" */))
const _49d8bcf8 = () => interopDefault(import('..\\pages\\config\\user.vue' /* webpackChunkName: "pages_config_user" */))
const _ab54963e = () => interopDefault(import('..\\pages\\exam\\add-exam.vue' /* webpackChunkName: "pages_exam_add-exam" */))
const _6c108dfb = () => interopDefault(import('..\\pages\\exam\\add-questions.vue' /* webpackChunkName: "pages_exam_add-questions" */))
const _3592649a = () => interopDefault(import('..\\pages\\exam\\result.vue' /* webpackChunkName: "pages_exam_result" */))
const _31f0d6d1 = () => interopDefault(import('..\\pages\\exam\\rules.vue' /* webpackChunkName: "pages_exam_rules" */))
const _04d8acf2 = () => interopDefault(import('..\\pages\\exam\\student-exam.vue' /* webpackChunkName: "pages_exam_student-exam" */))
const _9d86286c = () => interopDefault(import('..\\pages\\exam\\studentexamtable.vue' /* webpackChunkName: "pages_exam_studentexamtable" */))
const _0c296880 = () => interopDefault(import('..\\pages\\exam\\teacher-exam.vue' /* webpackChunkName: "pages_exam_teacher-exam" */))
const _cfd26cfa = () => interopDefault(import('..\\pages\\exam\\teacherexamtable.vue' /* webpackChunkName: "pages_exam_teacherexamtable" */))
const _786aa406 = () => interopDefault(import('..\\pages\\user\\admin.vue' /* webpackChunkName: "pages_user_admin" */))
const _6409beee = () => interopDefault(import('..\\pages\\user\\audit.vue' /* webpackChunkName: "pages_user_audit" */))
const _2e533d0e = () => interopDefault(import('..\\pages\\user\\staff.vue' /* webpackChunkName: "pages_user_staff" */))
const _8a8b30e0 = () => interopDefault(import('..\\pages\\user\\teacher.vue' /* webpackChunkName: "pages_user_teacher" */))
const _34e442eb = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

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
      component: _61dc55b6,
      name: "addStaff"
    }, {
      path: "/chat",
      component: _16ce254f,
      name: "chat"
    }, {
      path: "/dashboard",
      component: _bc39a9a6,
      name: "dashboard"
    }, {
      path: "/exam",
      component: _7d75512c,
      name: "exam"
    }, {
      path: "/exam2",
      component: _5db7ed8c,
      name: "exam2"
    }, {
      path: "/forum",
      component: _417c308c,
      name: "forum"
    }, {
      path: "/config/course",
      component: _4d916cd8,
      name: "config-course"
    }, {
      path: "/config/user",
      component: _49d8bcf8,
      name: "config-user"
    }, {
      path: "/exam/add-exam",
      component: _ab54963e,
      name: "exam-add-exam"
    }, {
      path: "/exam/add-questions",
      component: _6c108dfb,
      name: "exam-add-questions"
    }, {
      path: "/exam/result",
      component: _3592649a,
      name: "exam-result"
    }, {
      path: "/exam/rules",
      component: _31f0d6d1,
      name: "exam-rules"
    }, {
      path: "/exam/student-exam",
      component: _04d8acf2,
      name: "exam-student-exam"
    }, {
      path: "/exam/studentexamtable",
      component: _9d86286c,
      name: "exam-studentexamtable"
    }, {
      path: "/exam/teacher-exam",
      component: _0c296880,
      name: "exam-teacher-exam"
    }, {
      path: "/exam/teacherexamtable",
      component: _cfd26cfa,
      name: "exam-teacherexamtable"
    }, {
      path: "/user/admin",
      component: _786aa406,
      name: "user-admin"
    }, {
      path: "/user/audit",
      component: _6409beee,
      name: "user-audit"
    }, {
      path: "/user/staff",
      component: _2e533d0e,
      name: "user-staff"
    }, {
      path: "/user/teacher",
      component: _8a8b30e0,
      name: "user-teacher"
    }, {
      path: "/",
      component: _34e442eb,
      name: "index"
    }],

    fallback: false
  })
}
