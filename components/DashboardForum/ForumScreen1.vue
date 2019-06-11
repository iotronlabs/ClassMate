<template>
<div>
	<v-card class="forum-content-card" color="grey">
		<v-card-text>
			<v-subheader class="forum-content-subheader">
				Electronic and Telecommunication
			</v-subheader>
			<v-chip>Topic chip</v-chip>&nbsp;
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
export default {
	data: () => ({
		items:[
			{
				text: 'Dashboard',
				disabled: false,
				href: '/'
			},
			{
				text: 'Forum',
				disabled: false,
				href: '/'
			}
		]
	})
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
