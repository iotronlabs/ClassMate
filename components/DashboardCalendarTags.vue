<template>
	<div>
		<v-card v-if="hidden==false">
			<v-card-title>
				Tags<v-spacer />
				<v-btn icon @click.prevent="hideTag"><v-icon>close</v-icon></v-btn>
			</v-card-title>
			<hr>
			<v-card-text>
				<v-list one-line
					v-for="item in items"
					v-bind:key="item.title"
					class="tag-list"
				>
					<v-subheader>{{ item.title }}</v-subheader>
					<v-list-tile
						v-for="subitem in item.subitems"
						v-bind:key="subitem.title"
						class="tag-list-tile"
					>
						<v-list-tile-avatar><v-icon small>{{ subitem.icon1 }}</v-icon></v-list-tile-avatar>
						<v-list-tile-content>{{subitem.title}}</v-list-tile-content>
						<v-list-tile-action><v-icon small>{{ subitem.icon2 }}</v-icon></v-list-tile-action>
					</v-list-tile>
					<v-spacer />
					<v-icon class="tag-list-add">add</v-icon>
				</v-list>
				<!-- <v-sheet height="200" width="250">
					<v-calendar
						ref="calendar"
						v-model="start"
						type="month"
						color="secondary"
						height="200"
						widht="250"
					></v-calendar>
				</v-sheet> -->
			</v-card-text>
			<v-card-actions>

			</v-card-actions>
		</v-card>
	</div>
</template>

<script>
export default {
	data() {
		return {
			hidden: false,
			items: [
				{
					title: 'Daily',
					subitems: [
						{
							icon1: 'done',
							title: 'Home',
							icon2: 'apps'
						},
						{
							icon1: 'done',
							title: 'Work',
							icon2: 'apps'
						},
						{
							icon1: 'done',
							title: 'Sport',
							icon2: 'apps'
						}
					]
				},
				{
					title: 'Apps',
					subitems: [
						{
							icon1: 'done',
							title: 'Plan B',
							icon2: 'apps'
						},
						{
							icon1: 'done',
							title: 'Apple Mail',
							icon2: 'apps'
						},
					]
				}
			]
		}
	},
	methods: {
		hideTag() {
			this.hidden=true
		}
	}
}
</script>

<style scoped>
.tag-list
{
	margin-top: -5%;
}
.tag-list-tile
{
	padding: -10%;
	margin-top: -5%;
}
.tag-list-add
{
	padding-left: 87%;
}
</style>
