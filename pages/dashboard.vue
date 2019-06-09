<template>
	<v-content>
		<v-container fluid>
			<v-layout align-center justify-center>
				<v-flex xs12>
					<!-- <Calendar /> -->
					<!-- <Forum2 />	 -->
				</v-flex>
			</v-layout>
		</v-container>
	</v-content>
</template>

<script>
import Calendar from '../components/DashboardCalendar/Calendar'
import Forum2 from '../components/DashboardForum/ForumScreen2'
export default {
	components: {
		Calendar,
		Forum2
	},
	layout: 'DashboardNavigationLayout'
}
</script>


<style>

</style>
