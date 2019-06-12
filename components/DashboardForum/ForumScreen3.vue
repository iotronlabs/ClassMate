<template>
<div>
	<Searchbox />

	<v-card class="forum-content-card">
		<v-card-text>
			<v-chip>Topic chip</v-chip>
			<v-subheader class="forum-content-subheader">
				Question Title
			</v-subheader>
			<v-card-text>
				<h3>Last answered at Feb 8,2019 at 12 pm</h3>
			</v-card-text>
		</v-card-text>
		<!-- <v-card-action>
			Like and comment icon will be here
		</v-card-action> -->
	</v-card>
</div>
</template>

<script>
import Searchbox from '@/components/Searchbox'
export default {
	components : {
		Searchbox
	},
	data () {
		return {
			active: null,
			text: '16 Answers......',
			text2 : 'Top answer'
		}
  	},
	methods: {
		next () {
			const active = parseInt(this.active)
			this.active = (active < 2 ? active + 1 : 0)
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
.forum-content-subheader
{
	font-size: 30px;
}
</style>
