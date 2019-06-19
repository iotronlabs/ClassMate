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
						<div v-if="n==1 && id=='user'">Student Form</div>
						<div v-if="n==2 && id=='user'">Teacher Form</div>
						<div v-if="n==3 && id=='user'">Staff Form</div>

						<div v-if="n==1 && id=='course'">Department Form</div>
						<div v-if="n==2 && id=='course'">Subject Form</div>
						<div v-if="n==3 && id=='course'">Class Form</div>

					</v-toolbar-title>
					<v-spacer></v-spacer>
					<v-btn icon dark @click="dialog = false">
						<v-icon>close</v-icon>
					</v-btn>
				</v-toolbar>
				<!-- <div v-if="n==1 && id=='user'"><AddStudentForm mode="add" :details={} /></div>
				<div v-if="n==2 && id=='user'"><AddTeacherForm /></div>
				<div v-if="n==3 && id=='user'"><AddStudentForm /></div> -->

				<div v-if="n==1 && id=='course'"><DepartmentConfigForm /></div>
				<div v-if="n==2 && id=='course'"><SubjectConfigForm /></div>
				<div v-if="n==3 && id=='course'"><ClassConfigForm /></div>
      	</v-card>
    </v-dialog>
</v-toolbar>
</template>

<script>
// import AddStudentForm from '@/components/UserConfig/AddStudentForm'
// import AddTeacherForm from '@/components/UserConfig/AddTeacherForm'
// import AddStaffForm from '@/components/UserConfig/AddStaffForm'

import DepartmentConfigForm from '@/components/CourseConfig/DepartmentConfigForm'
import SubjectConfigForm from '@/components/CourseConfig/SubjectConfigForm'
import ClassConfigForm from '@/components/CourseConfig/ClassConfigForm'

export default {
	components: {
		// AddStudentForm,
		// AddTeacherForm,
		// AddStaffForm,
		DepartmentConfigForm,
		SubjectConfigForm,
		ClassConfigForm
	},
	data() {
		return {
			dialog: false,
			search: '',

		}
	},
	props: {
		n: {
			type: Number
		},
		id: {
			type: String
		}
	}
}
</script>

<style>

</style>
