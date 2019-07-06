<template>
<div class="page-table">
	<v-content class="global-font">
		<v-container fluid>
			<v-layout align-center justify-center>
				<v-flex xs12>
					<v-tabs v-model="active" color="cyan" dark slider-color="yellow">
						<v-tab v-for="head in heading" :key="head" ripple>
							{{ head}}
						</v-tab>

						<v-tab-item v-for="n in 3" :key="n" >
							<v-card flat>
								<v-card-text>
									<div v-if="n==1"><TableSubject /></div>
									<div v-if="n==2"><TableDepartment /></div>
									<div v-if="n==3"><TableClass /></div>
								</v-card-text>
							</v-card>
						</v-tab-item>
					</v-tabs>
				</v-flex>
			</v-layout>
		</v-container>
	</v-content>
</div>
</template>

<script>
import TableSubject from '@/components/CourseConfig/TableSubject'
import TableDepartment from '@/components/CourseConfig/TableDepartment'
import TableClass from '@/components/CourseConfig/TableClass'

export default {
	layout: 'DashboardNavigationLayout',
	components: {
		TableSubject,
		TableDepartment,
		TableClass
	},
  	data: () => ({
		active: '',
		heading : ['Subject' , 'Department' , 'Class'],

		dialog: false,

  	})
}
</script>


<style scoped>
.page-table
{
	padding: 2%;
}
</style>
