<template>
	<v-content class="global-font">
		<v-container fluid>
			<v-layout align-center justify-center>
				<v-flex xs12>
					 
						<Table />
					 <!--<Calendar /> -->
					
				</v-flex>
			</v-layout>
		</v-container>
	</v-content>
</template>

<script>
import Table from '../components/table'
//import Calendar from '../components/DashboardCalendar/Calendar'

export default {
	components: {
		//Calendar,
		
		Table,
	},
	layout: 'DashboardNavigationLayout'
}
</script>


<style>

</style>
