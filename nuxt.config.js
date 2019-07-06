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
  loading: {
	name: 'chasing-dots',
  	color: '#white',
  	background: 'white',
	  height: '4px'
},

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
	'@nuxtjs/toast',
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

toast: {
    position: 'top-right',
    duration: 2000
},
axios: {
	// baseURL: 'http://api.thebutick.com/public',
	baseURL: 'http://localhost:8000',
	proxyHeaders: false,
	credentials: false,
	proxy: false,
	debug: true
},

auth: {
	redirect: {
		home: '/',
		logout: '/',
		login: '/',
		callback: '/dashboard',
	},
	watchLoggedIn: true,
	refresh_token: {
		prefix: '_refresh_token.',
	},
	token: {
		prefix: '_token.',
	},
	localStorage: false,
	cookie: {
		prefix: 'auth.',
		options: {
		  path: '/',
		  expires: 5,
		  // domain: '',
		  // secure - false,
		},
	},
	strategies: {
		local: {
			endpoints: {
				login: {url: '/api/auth/login',	method: 'post',	propertyName: 'token'},
				user: {url: '/api/auth/me',method: 'get',propertyName: 'data'},
          		logout: {url: '/api/students/out'}
			},
			tokenRequired: true,
        	tokenType: 'Bearer',
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
