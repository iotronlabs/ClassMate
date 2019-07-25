<template>
<div>
	<v-card class="forum-content-card" color="grey" v-for="department_detail in department_details">
		<v-card-text >
			<v-subheader class="forum-content-subheader">

					{{department_detail}}

			</v-subheader>
			<v-chip
				v-for="chip in chips"
				v-bind:key="chip.id"
				@click="activeStream(chip.id)">
				{{chip.title}}
			</v-chip>
			<v-card-text>
				Top Authors
				<v-spacer />
				<span class="forum-content-views">3 Subs, 5 posts, 100 views</span>
			</v-card-text>
		</v-card-text>
		<hr>
	</v-card>
	

</div>
</template>

<script>
import {mapActions} from 'vuex'
export default {
	data() {
		return {
			chips: [
				{
					title: 'Stream 1',
					id: 'Stream 1'
				},
				{
					title: 'Stream 2',
					id: 'Stream 2'
				}
			],
			
			department_details: [],
			department_details1: []
		}

		
	},

	created () {
		this.initialize()
	},
	methods: {
		...mapActions('forum',['getActiveForumMenu']),
		activeStream(branch) {
			this.getActiveForumMenu('Stream')
		},

		async initialize () {
			const forum1_response = await this.$axios.get('/api/departments/')
			for(var i in forum1_response.data)
			{
				this.department_details.push(forum1_response.data[i].department_name)
				this.department_details1.push(forum1_response.data[i].department_code)
			}
			
			console.log(this.department_details)
			console.log(this.department_details1)
		},
		
		async streamname ()
		{
			var streams_response 
			for (var i in department_details1)
			{
				 streams_response.push( await this.$axios.get(`api/department/${department_details1[i]} /show_stream`))
					
				console.log(streams_response)
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
