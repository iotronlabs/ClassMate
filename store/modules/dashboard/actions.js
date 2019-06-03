export default  {
	getActiveUser({commit},user) {
		commit('setActiveUser',user)
	}
}
