<template>
<div>
  	<v-container fluid>

    	<v-tabs v-model="active" color="cyan" dark slider-color="yellow">
			<v-tab v-for="head in heading" :key="head" ripple>
				{{ head}}
			</v-tab>

			<v-tab-item v-for="n in 3" :key="n" >
				<v-card flat>
					<v-card-text>
						<div v-if="n==1"><TableStudent /></div>
						<div v-if="n==2"></div>
						<div v-if="n==3"></div>
					</v-card-text>
				</v-card>
			</v-tab-item>
        </v-tabs>

        <div class="text-xs-center mt-3">
          <v-btn @click="next">next tab</v-btn>
         </div>
         <br><br><br>
 	</v-container>
</div>
</template>

<script>
import TableStudent from '@/components/UserConfig/TableStudent'
import TableTeacher from '@/components/UserConfig/TableTeacher'
import TableStaff from '@/components/UserConfig/TableStaff'

export default {
	components: {
		TableStudent,
		TableTeacher,
		TableStaff
	},
  	data: () => ({
		active: '',
		heading : ['Student' , 'Teacher' , 'Staff'],

		dialog: false,

  	})
}
</script>


<style scoped>

</style>
