<template>
	<v-content>
		<v-container fluid>
			<v-layout align-center justify-center>
				<v-flex xs12>
					<DashboardCalendar />
				</v-flex>
			</v-layout>
		</v-container>
	</v-content>
</template>

<script>
import DashboardCalendar from '../components/DashboardCalendar'
export default {
	components: {
		DashboardCalendar
	},
	layout: 'DashboardNavigationLayout'
}
</script>


<style>

</style>
