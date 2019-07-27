<template>
<div>
	<v-card class="forum-content-card" color="grey" v-for="(department_detail, index) in department_details" :key="department_detail.department_name">
		<v-card-text >
			<v-subheader class="forum-content-subheader">
				{{department_detail.department_name}}
			</v-subheader>
			<v-chip
				v-for="stream in stream_details[index]"
				v-bind:key="stream.id"
			>
				{{stream.stream_code}}
			</v-chip>
			<v-card-text>
				Top Authors
				<v-spacer />
				<span class="forum-content-views">3 Subs, 5 posts, 100 views</span>
			</v-card-text>
		</v-card-text>
		<hr>
	</v-card>
	{{ stream_details
	}}
</div>
</template>

<script>
import {mapActions} from 'vuex'
export default {
	data() {
		return {
			department_details: [],
			stream_details: []
		}
	},

	async created () {
		await this.initialize()
		await this.streamname()
	},
	methods: {
		...mapActions('forum',['getActiveForumMenu']),
		activeStream(branch) {
			this.getActiveForumMenu('Stream')
		},

		async initialize () {
			const forum1_response = await this.$axios.get('/api/departments/')
			for(var i=0; i<forum1_response.data.length;i++)
			{
				this.department_details.push(forum1_response.data[i])
			}

		},

		async streamname ()
		{
			for (var i=0; i< this.department_details.length;i++)
			{
				var streams_response=await this.$axios.get(`/api/departments/${this.department_details[i].department_code}/show_stream`)
				this.stream_details[i]=new Array()
				for(var j=0;j<streams_response.data.data.length;j++)
				{
					this.stream_details[i].push(streams_response.data.data[j])
				}
			}
		}
	}
}
</script>

<style scoped>
.forum-content-card
{
	margin-left : 2%;
	margin-right : 2%;
}
hr
{
	border : 2px solid;
}
.forum-content-views
{
	float: right;
}
</style>
