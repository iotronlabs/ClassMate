<template>
	<v-content class="global-font">
		<v-container fluid>
			<v-layout align-center justify-center>
				<v-flex xs12>
					<!-- <Calendar /> -->
					<ForumLayout />
				</v-flex>
			</v-layout>
		</v-container>
	</v-content>
</template>

<script>
import Calendar from '../components/DashboardCalendar/Calendar'
import ForumLayout from '../components/DashboardForum/ForumLayout'
export default {
	components: {
		Calendar,
		ForumLayout
	},
	layout: 'DashboardNavigationLayout'
}
</script>


<style>

</style>
