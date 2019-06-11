import Vue from 'vue'
import Meta from 'vue-meta'
import { createRouter } from './router.js'
import NoSsr from './components/no-ssr.js'
import NuxtChild from './components/nuxt-child.js'
import NuxtError from './components/nuxt-error.vue'
import Nuxt from './components/nuxt.js'
import App from './App.js'
import { setContext, getLocation, getRouteData, normalizeError } from './utils'
import { createStore } from './store.js'

/* Plugins */

<<<<<<< HEAD
import nuxt_plugin_templatesplugin3f42a920_40a8674f from 'nuxt_plugin_templatesplugin3f42a920_40a8674f' // Source: .\\templates.plugin.3f42a920.js (mode: 'all')
import nuxt_plugin_axios_17f09266 from 'nuxt_plugin_axios_17f09266' // Source: .\\axios.js (mode: 'all')
import nuxt_plugin_nuxticons_b137b2bc from 'nuxt_plugin_nuxticons_b137b2bc' // Source: .\\nuxt-icons.js (mode: 'all')
=======
import nuxt_plugin_templatesplugin67ce12db_a218afae from 'nuxt_plugin_templatesplugin67ce12db_a218afae' // Source: .\\templates.plugin.67ce12db.js (mode: 'all')
import nuxt_plugin_axios_4b5af15b from 'nuxt_plugin_axios_4b5af15b' // Source: .\\axios.js (mode: 'all')
import nuxt_plugin_nuxticons_0fd7d8cd from 'nuxt_plugin_nuxticons_0fd7d8cd' // Source: .\\nuxt-icons.js (mode: 'all')
>>>>>>> 11d8b1284147d7bcfdd02bb6e9ab8b0d16c83222
import nuxt_plugin_vuetify_e5914fcc from 'nuxt_plugin_vuetify_e5914fcc' // Source: ..\\plugins\\vuetify (mode: 'all')

// Component: <NoSsr>
Vue.component(NoSsr.name, NoSsr)

// Component: <NuxtChild>
Vue.component(NuxtChild.name, NuxtChild)
Vue.component('NChild', NuxtChild)

// Component NuxtLink is imported in server.js or client.js

// Component: <Nuxt>`
Vue.component(Nuxt.name, Nuxt)

// vue-meta configuration
Vue.use(Meta, {
  keyName: 'head', // the component option name that vue-meta looks for meta info on.
  attribute: 'data-n-head', // the attribute name vue-meta adds to the tags it observes
  ssrAttribute: 'data-n-head-ssr', // the attribute name that lets vue-meta know that meta info has already been server-rendered
  tagIDKeyName: 'hid' // the property name that vue-meta uses to determine whether to overwrite or append a tag
})

const defaultTransition = {"name":"page","mode":"out-in","appear":true,"appearClass":"appear","appearActiveClass":"appear-active","appearToClass":"appear-to"}

async function createApp(ssrContext) {
  const router = await createRouter(ssrContext)

  const store = createStore(ssrContext)
  // Add this.$router into store actions/mutations
  store.$router = router

  // Create Root instance

  // here we inject the router and store to all child components,
  // making them available everywhere as `this.$router` and `this.$store`.
  const app = {
    router,
    store,
    nuxt: {
      defaultTransition,
      transitions: [ defaultTransition ],
      setTransitions(transitions) {
        if (!Array.isArray(transitions)) {
          transitions = [ transitions ]
        }
        transitions = transitions.map((transition) => {
          if (!transition) {
            transition = defaultTransition
          } else if (typeof transition === 'string') {
            transition = Object.assign({}, defaultTransition, { name: transition })
          } else {
            transition = Object.assign({}, defaultTransition, transition)
          }
          return transition
        })
        this.$options.nuxt.transitions = transitions
        return transitions
      },
      err: null,
      dateErr: null,
      error(err) {
        err = err || null
        app.context._errored = !!err
        err = err ? normalizeError(err) : null
        const nuxt = this.nuxt || this.$options.nuxt
        nuxt.dateErr = Date.now()
        nuxt.err = err
        // Used in src/server.js
        if (ssrContext) ssrContext.nuxt.error = err
        return err
      }
    },
    ...App
  }

  // Make app available into store via this.app
  store.app = app

  const next = ssrContext ? ssrContext.next : location => app.router.push(location)
  // Resolve route
  let route
  if (ssrContext) {
    route = router.resolve(ssrContext.url).route
  } else {
    const path = getLocation(router.options.base)
    route = router.resolve(path).route
  }

  // Set context to app.context
  await setContext(app, {
    route,
    next,
    error: app.nuxt.error.bind(app),
    store,
    payload: ssrContext ? ssrContext.payload : undefined,
    req: ssrContext ? ssrContext.req : undefined,
    res: ssrContext ? ssrContext.res : undefined,
    beforeRenderFns: ssrContext ? ssrContext.beforeRenderFns : undefined,
    ssrContext
  })

  const inject = function (key, value) {
    if (!key) throw new Error('inject(key, value) has no key provided')
    if (typeof value === 'undefined') throw new Error('inject(key, value) has no value provided')
    key = '$' + key
    // Add into app
    app[key] = value

    // Add into store
    store[key] = app[key]

    // Check if plugin not already installed
    const installKey = '__nuxt_' + key + '_installed__'
    if (Vue[installKey]) return
    Vue[installKey] = true
    // Call Vue.use() to install the plugin into vm
    Vue.use(() => {
      if (!Vue.prototype.hasOwnProperty(key)) {
        Object.defineProperty(Vue.prototype, key, {
          get() {
            return this.$root.$options[key]
          }
        })
      }
    })
  }

  if (process.client) {
    // Replace store state before plugins execution
    if (window.__NUXT__ && window.__NUXT__.state) {
      store.replaceState(window.__NUXT__.state)
    }
  }

  // Plugin execution

<<<<<<< HEAD
  if (typeof nuxt_plugin_templatesplugin3f42a920_40a8674f === 'function') {
    await nuxt_plugin_templatesplugin3f42a920_40a8674f(app.context, inject)
=======
  if (typeof nuxt_plugin_templatesplugin67ce12db_a218afae === 'function') {
    await nuxt_plugin_templatesplugin67ce12db_a218afae(app.context, inject)
  }

  if (typeof nuxt_plugin_axios_4b5af15b === 'function') {
    await nuxt_plugin_axios_4b5af15b(app.context, inject)
>>>>>>> 11d8b1284147d7bcfdd02bb6e9ab8b0d16c83222
  }

  if (typeof nuxt_plugin_nuxticons_0fd7d8cd === 'function') {
    await nuxt_plugin_nuxticons_0fd7d8cd(app.context, inject)
  }

  if (typeof nuxt_plugin_vuetify_e5914fcc === 'function') {
    await nuxt_plugin_vuetify_e5914fcc(app.context, inject)
  }

  // If server-side, wait for async component to be resolved first
  if (process.server && ssrContext && ssrContext.url) {
    await new Promise((resolve, reject) => {
      router.push(ssrContext.url, resolve, () => {
        // navigated to a different route in router guard
        const unregister = router.afterEach(async (to, from, next) => {
          ssrContext.url = to.fullPath
          app.context.route = await getRouteData(to)
          app.context.params = to.params || {}
          app.context.query = to.query || {}
          unregister()
          resolve()
        })
      })
    })
  }

  return {
    app,
    store,
    router
  }
}

export { createApp, NuxtError }
