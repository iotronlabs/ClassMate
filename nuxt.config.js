import VuetifyLoaderPlugin from 'vuetify-loader/lib/plugin'
import pkg from './package'
import path from 'path'

export default {
  mode: 'spa',
	outputDir: path.resolve(__dirname,'../dist'),
  /*
  ** Headers of the page
  */
  head: {
    title: pkg.name,
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: pkg.description }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      {
        rel: 'stylesheet',
        href:
          'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons'
      }
    ]
  },

  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },

  /*
  ** Global CSS
  */
  css: [
    '~/assets/style/app.styl',
    '@/assets/scss/app.scss'
  ],

  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
    '@/plugins/vuetify'
  ],

  /*
  ** Nuxt.js modules
  */
  modules: [
	'@nuxtjs/pwa',
	'@nuxtjs/axios',
	'@nuxtjs/auth',
    [
      'nuxt-fontawesome', {
        imports: [
          {
            set: '@fortawesome/free-solid-svg-icons',
            icons: ['fas']
          },
          {
            set: '@fortawesome/free-regular-svg-icons',
            icons: ['far']
          },
          {
            set: '@fortawesome/free-brands-svg-icons',
            icons: ['fab']
          }
        ]
      }
    ]
],
axios: {
	// baseURL: 'http://api.thebutick.com/public',
	baseURL: 'http://localhost:8000',
	proxyHeaders: false,
	credentials: false,
	proxy: false,
	debug: true
},

auth: {
	strategies: {
		local: {
			endpoints: {
				studentLogin: { url: '/api/students/login', method='post', propertyName: 'meta.token'},
				teacherLogin: { url: '/api/teachers/login', method="post", propertyName: 'meta.token'},
				staffLogin: { url: '/api/staffs/login', method="post", propertyName: 'meta.token'},
				adminLogin: { url: '/api/admins/login', method="post", propertyName: 'meta.token'},
				userStudent: { url: '/api/students/me', method="get", propertyName: 'data'},
				userTeacher: { url: '/api/teachers/me', method="get", propertyName: 'data'},
				userStaff: { url: '/api/staffs/me', method="get", propertyName: 'data'},
				userAdmin: { url: '/api/admins/me', method="get", propertyName: 'data'},
				studentLogout: {url: '/api/students/out', method="post"},
				teacherLogout: {url: '/api/teachers/out', method="post"},
				staffLogout: {url: '/api/staffs/out', method="post"},
				adminLogout: {url: '/api/admins/out', method="post"}
			}
		}
	}
},

  /*
  ** Build configuration
  */
  build: {
    transpile: ['vuetify/lib'],
    plugins: [new VuetifyLoaderPlugin()],
    loaders: {
      stylus: {
        import: ['~assets/style/variables.styl']
      }
    },
    /*
    ** You can extend webpack config here
    */
    extend(config, ctx) {
    }
  }
}
