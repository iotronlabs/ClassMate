<template>
<div>
	<Searchbox />

	<v-card class = "forum-content-card">
		<v-card-text>
			<font size = "5" > Analog Electronics (AEC)</font>
			<br><br>
			<v-chip
				v-for="chip in chips"
				v-bind:key="chip.id"
				@click="activeSubject(chip.id)"
				>{{ chip.title }}
			</v-chip>
		</v-card-text>
	</v-card>
</div>
</template>


<script>
import { mapActions } from 'vuex'
import Searchbox from '@/components/Searchbox'
export default {
	components: {
		Searchbox
	},
	data() {
		return {
			chips: [
				{
					title: 'Subject1',
					id: 'Subject1'
				},
				{
					title: 'Subject 2',
					id: 'Subject2'
				}
			]
		}
	},
	methods: {
		...mapActions('forum',['getActiveForumMenu']),
		activeSubject(subject) {
			this.getActiveForumMenu('Subject')
		}
	},
	created() {
		this.getActiveForumMenu('Stream')
	}
}
</script>


<style scoped>
.forum-content-card
{
	margin-left : 2%;
	margin-right : 2%;
}
</style>





