<template>
	<v-content>
		<v-container fluid>
			<v-layout align-center justify-center>
				<v-flex xs12>
					<Calendar />
				</v-flex>
			</v-layout>
		</v-container>
	</v-content>
</template>

<script>
import Calendar from '../components/Calendar'
export default {
	components: {
		Calendar
	},
	layout: 'DashboardNavigationLayout'
}
</script>


<style>

</style>
