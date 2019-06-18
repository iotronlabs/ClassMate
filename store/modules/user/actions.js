export default  {
	async fetchStudent({commit},id) {
		const response = await this.$axios.get(`/api/students/${id}/show`)
		commit('setStudent',response.data.data)
	}
}
