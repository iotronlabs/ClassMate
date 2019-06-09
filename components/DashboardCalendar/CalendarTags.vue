<template>
	<div>
		<v-card v-if="hidden==false">
			<v-card-title class="tag-title">
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
						<v-list-tile-avatar>
							<v-checkbox v-model="subitem.checkbox" :color="subitem.checkboxColor"></v-checkbox>
						</v-list-tile-avatar>
						<v-list-tile-content>{{subitem.title}}</v-list-tile-content>
					</v-list-tile>
					<v-spacer />
				</v-list>
				<v-sheet class="mini-calendar" height="50%" width="100%">
					<v-calendar
						ref="calendar"
						v-model="start"
						type="month"
						color="secondary"
						height="200"
						widht="250"
					></v-calendar>
				</v-sheet>
				<v-btn @click="$refs.calendar.prev()" >
					<v-icon	dark left>keyboard_arrow_left</v-icon>
					Prev
				</v-btn>
				<v-btn @click="$refs.calendar.next()" class="calendar-navigation-icons-right">
					Next
					<v-icon right dark>
						keyboard_arrow_right
					</v-icon>
				</v-btn>
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
			start: Date.now().toString(),
			items: [
				{
					title: 'Daily',
					subitems: [
						{
							checkbox: false,
							checkboxColor: 'indigo',
							title: 'Home',
							icon2: 'apps'
						},
						{
							checkbox: false,
							checkboxColor: 'yellow',
							title: 'Work',
							icon2: 'apps'
						},
						{
							checkbox: false,
							checkboxColor: 'red',
							title: 'Sport',
							icon2: 'apps'
						}
					]
				},
				{
					title: 'Apps',
					subitems: [
						{
							checkbox: false,
							checkboxColor: 'green',
							icon1: 'done',
							title: 'Plan B',
							icon2: 'apps'
						},
						{
							checkbox: false,
							checkboxColor: 'orange',
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
	padding-bottom: 5%;
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
.mini-calendar
{
	margin-top: 10%;
}
.calendar-navigation-icons-left
{
	float: left;
}
.calendar-navigation-icons-right
{
	float: right;
}
</style>
