<template>
<div class="container-fluid">
	<v-layout wrap :class="checkDevice ? content : ''">
		<v-flex xs10 sm10 md6 class="tag-list">
			<DashboardCalendarTags />
		</v-flex>
		<v-spacer></v-spacer>
		<v-flex	xs10 sm10 md6 class="mb-2">
			<v-sheet height="500">
				<v-calendar
					ref="calendar"
					v-model="start"
					:type="type"
					color="secondary"
				></v-calendar>
			</v-sheet>
		</v-flex>
	</v-layout>
	<v-layout>
		<v-spacer />
		<v-flex	sm4	xs12 class="text-sm-left text-xs-center">
			<v-btn @click="$refs.calendar.prev()">
				<v-icon	dark left>keyboard_arrow_left</v-icon>
				Prev
			</v-btn>
		</v-flex>
		<v-spacer></v-spacer>
		<v-flex	sm4	xs12 class="text-sm-right text-xs-center">
			<v-btn @click="$refs.calendar.next()">
				Next
				<v-icon right dark>
					keyboard_arrow_right
				</v-icon>
			</v-btn>
		</v-flex>
	</v-layout>
</div>
</template>

<script>
import DashboardCalendarTags from '@/components/DashboardCalendarTags'
export default{
	name: 'DashboardCalendar',
	components: {
		DashboardCalendarTags
	},
	data() {
		return{
			type: '4day',
			start: Date.now().toString(),
		}
	},
	computed: {
		checkDevice() {
			if(this.$vuetify.breakpoint.smAndDown==true)
			{
				return true
			}
		}
	}
}
</script>

<style scoped>
/* .container-fluid
{
	margin-top: -10%;
} */
.content
{
	margin-left: -60%;
	margin-top : -10%;
}
</style>


