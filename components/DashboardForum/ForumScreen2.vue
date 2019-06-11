<template>
<div>
	<Searchbox />

	<v-card class = "forum-content-card">
		<v-card-text>
			<font size = "5" > Analog Electronics (AEC)</font>
			<br><br>
			<v-chip>Topic chip</v-chip>&nbsp;
			<v-chip>Topic chip</v-chip>&nbsp;
			<v-chip>Topic chip</v-chip>&nbsp;
			<v-chip>Topic chip</v-chip>&nbsp;
			<v-chip>Topic chip</v-chip>&nbsp;
		</v-card-text>
	</v-card>
</div>
</template>


<script>
import Searchbox from '@/components/Searchbox'
export default {
	components: {
		Searchbox
	},
	data: () => ({
		items:
		[
			{
				text: 'Dashboard',
				disabled: false,
				to: '/'
			},
			{
				text: 'Forum',
				disabled: false,
				to: '/'
			},
			{
				text: 'subject',
				disabled: false,
				to: '/'
			}
		],
	})
}
</script>


<style scoped>
.forum-content-card
{
	margin-left : 2%;
	margin-right : 2%;
}
</style>





