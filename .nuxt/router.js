import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'

const _6a6a9720 = () => interopDefault(import('..\\pages\\addStaff.vue' /* webpackChunkName: "pages_addStaff" */))
const _7fdcf109 = () => interopDefault(import('..\\pages\\chat.vue' /* webpackChunkName: "pages_chat" */))
const _56c0a3b3 = () => interopDefault(import('..\\pages\\dashboard.vue' /* webpackChunkName: "pages_dashboard" */))
const _70d6c032 = () => interopDefault(import('..\\pages\\exam\\index.vue' /* webpackChunkName: "pages_exam_index" */))
const _16829912 = () => interopDefault(import('..\\pages\\exam2.vue' /* webpackChunkName: "pages_exam2" */))
const _cfe6d980 = () => interopDefault(import('..\\pages\\forum.vue' /* webpackChunkName: "pages_forum" */))
const _50ae34ce = () => interopDefault(import('..\\pages\\config\\course.vue' /* webpackChunkName: "pages_config_course" */))
const _53e0133e = () => interopDefault(import('..\\pages\\config\\user.vue' /* webpackChunkName: "pages_config_user" */))
const _21cca01b = () => interopDefault(import('..\\pages\\exam\\add-exam.vue' /* webpackChunkName: "pages_exam_add-exam" */))
const _d7a4d1fe = () => interopDefault(import('..\\pages\\exam\\add-questions.vue' /* webpackChunkName: "pages_exam_add-questions" */))
const _5e033f6d = () => interopDefault(import('..\\pages\\exam\\result.vue' /* webpackChunkName: "pages_exam_result" */))
const _255245d7 = () => interopDefault(import('..\\pages\\exam\\rules.vue' /* webpackChunkName: "pages_exam_rules" */))
const _8663307e = () => interopDefault(import('..\\pages\\exam\\student-exam.vue' /* webpackChunkName: "pages_exam_student-exam" */))
const _87cc05f8 = () => interopDefault(import('..\\pages\\exam\\studentexamtable.vue' /* webpackChunkName: "pages_exam_studentexamtable" */))
const _8db3ec0c = () => interopDefault(import('..\\pages\\exam\\teacher-exam.vue' /* webpackChunkName: "pages_exam_teacher-exam" */))
const _ba184a86 = () => interopDefault(import('..\\pages\\exam\\teacherexamtable.vue' /* webpackChunkName: "pages_exam_teacherexamtable" */))
const _91a7c5fa = () => interopDefault(import('..\\pages\\user\\admin.vue' /* webpackChunkName: "pages_user_admin" */))
const _7d46e0e2 = () => interopDefault(import('..\\pages\\user\\audit.vue' /* webpackChunkName: "pages_user_audit" */))
const _21b4ac14 = () => interopDefault(import('..\\pages\\user\\staff.vue' /* webpackChunkName: "pages_user_staff" */))
const _5b7c2d16 = () => interopDefault(import('..\\pages\\user\\teacher.vue' /* webpackChunkName: "pages_user_teacher" */))
const _24a2231e = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

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
      component: _6a6a9720,
      name: "addStaff"
    }, {
      path: "/chat",
      component: _7fdcf109,
      name: "chat"
    }, {
      path: "/dashboard",
      component: _56c0a3b3,
      name: "dashboard"
    }, {
      path: "/exam",
      component: _70d6c032,
      name: "exam"
    }, {
      path: "/exam2",
      component: _16829912,
      name: "exam2"
    }, {
      path: "/forum",
      component: _cfe6d980,
      name: "forum"
    }, {
      path: "/config/course",
      component: _50ae34ce,
      name: "config-course"
    }, {
      path: "/config/user",
      component: _53e0133e,
      name: "config-user"
    }, {
      path: "/exam/add-exam",
      component: _21cca01b,
      name: "exam-add-exam"
    }, {
      path: "/exam/add-questions",
      component: _d7a4d1fe,
      name: "exam-add-questions"
    }, {
      path: "/exam/result",
      component: _5e033f6d,
      name: "exam-result"
    }, {
      path: "/exam/rules",
      component: _255245d7,
      name: "exam-rules"
    }, {
      path: "/exam/student-exam",
      component: _8663307e,
      name: "exam-student-exam"
    }, {
      path: "/exam/studentexamtable",
      component: _87cc05f8,
      name: "exam-studentexamtable"
    }, {
      path: "/exam/teacher-exam",
      component: _8db3ec0c,
      name: "exam-teacher-exam"
    }, {
      path: "/exam/teacherexamtable",
      component: _ba184a86,
      name: "exam-teacherexamtable"
    }, {
      path: "/user/admin",
      component: _91a7c5fa,
      name: "user-admin"
    }, {
      path: "/user/audit",
      component: _7d46e0e2,
      name: "user-audit"
    }, {
      path: "/user/staff",
      component: _21b4ac14,
      name: "user-staff"
    }, {
      path: "/user/teacher",
      component: _5b7c2d16,
      name: "user-teacher"
    }, {
      path: "/",
      component: _24a2231e,
      name: "index"
    }],

    fallback: false
  })
}
