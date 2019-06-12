<template>
<div>
	<v-card class="forum-content-card" color="grey">
		<v-card-text>
			<v-subheader class="forum-content-subheader">
				Electronic and Telecommunication
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
			]
		}
	},
	methods: {
		...mapActions('forum',['getActiveForumMenu']),
		activeStream(branch) {
			this.getActiveForumMenu('Stream')
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
