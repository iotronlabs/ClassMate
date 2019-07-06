import vuex from 'vuex'
import dashboard from './modules/dashboard'
import forum from './modules/forum'

const createStore = () => {
	return new vuex.Store({
		namespaced: true,
		modules: {
			dashboard,
			forum
		}
	})
}

export default createStore
