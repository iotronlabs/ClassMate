export default  {
	getActiveUser({commit},payload) {
		commit('setActiveUser',payload)
	}
}
