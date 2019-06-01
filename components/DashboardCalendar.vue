<template>
<div class="container-fluid">
	<v-layout>
		<v-flex xs12 s10 md8 class="text-md-left text-xs-center tag-list">
			<DashboardCalendarTags />
		</v-flex>
		<v-spacer></v-spacer>
		<v-flex	xs12 s12 md11 class="mb-2">
			<v-sheet height="300">
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
	}
}
</script>

<style scoped>
.container-fluid
{
	margin-top: -10%;
}
.tag-list
{
	margin-left: -60%;
}
</style>


