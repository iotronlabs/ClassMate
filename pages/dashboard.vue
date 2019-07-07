<template>
	<v-content class="global-font">
		<v-container fluid>
			<v-layout align-center justify-center>
				<v-flex xs12>

						<!--<Table /> -->
					 <!--<Calendar /> -->
					<!-- <exam /> -->
					<!-- <exam2 /> -->
				</v-flex>
			</v-layout>
		</v-container>
	</v-content>
</template>

<script>
// import Table from '../components/table'
//import Calendar from '../components/DashboardCalendar/Calendar'
// import exam from '@/components/exam'
// import exam2 from '@/components/exam2'
 //import Table from '../components/studentexamtable'

export default {
	middleware: ['auth'],
	components: {
		//Calendar,
		// exam,
		// exam2,
		 //Table,
	},
	layout: 'DashboardNavigationLayout',
	mounted() {
		console.log(this.$auth.loggedIn)
		console.log(this.$auth.user)
	}
}
</script>


<style>

</style>
