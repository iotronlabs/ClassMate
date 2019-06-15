<template>
<v-toolbar flat color = "lightgrey">
	<v-text-field v-model="search" append-icon="search" label="Search" single-line hide-details>
	</v-text-field>
	<v-spacer></v-spacer>
	<v-dialog v-model="dialog" fullscreen hide-overlay transition="dialog-bottom-transition">
		<template v-slot:activator="{ on }">
        	<v-btn color="primary" dark v-on="on">Add New</v-btn>
    	</template>
      	<v-card>
				<v-toolbar dark color="primary">
					<v-toolbar-title>
						<div v-if="n==1">Student Form</div>
						<div v-if="n==2">Teacher Form</div>
						<div v-if="n==3">Staff Form</div>
					</v-toolbar-title>
					<v-spacer></v-spacer>
					<v-btn icon dark @click="dialog = false">
						<v-icon>close</v-icon>
					</v-btn>
				</v-toolbar>
				<div v-if="n==1"><AddStudentForm /></div>
				<div v-if="n==2"><AddTeacherForm /></div>
				<div v-if="n==3"><AddStudentForm /></div>
      	</v-card>
    </v-dialog>
</v-toolbar>
</template>

<script>
import AddStudentForm from '@/components/UserConfig/AddStudentForm'
import AddTeacherForm from '@/components/UserConfig/AddTeacherForm'
import AddStaffForm from '@/components/UserConfig/AddStaffForm'
export default {
	components: {
		AddStudentForm,
		AddTeacherForm,
		AddStaffForm
	},
	data() {
		return {
			dialog: false
		}
	},
	props: {
		n: {
			type: Number
		}
	},
	mounted() {
		console.log(this.n)
	}
}
</script>

<style>

</style>
