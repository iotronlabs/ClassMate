import vuex from 'vuex'
import dashboard from './modules/dashboard'

const createStore = () => {
	return new vuex.Store({
		namespaced: true,
		modules: {
			dashboard
		}
	})
}

export default createStore
