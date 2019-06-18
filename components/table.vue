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

						<ConfigToolbar :n="n" id="user" />

						<v-data-table :headers="headers[n-1]" :items="selectUser(n)" select-all class="elevation-1" >
							<template v-slot:headers="props">
								<tr>
									<th>
										<v-checkbox
											:input-value="props.all"
											:indeterminate="props.indeterminate"
											primary
											hide-details
											@click.stop="selectAll"
										></v-checkbox>
									</th>
									<th
										v-for="header in props.headers"
										:key="header.text"
									>
										{{ header.text }}
										<span v-if="header.name=='Actions'">
											<v-spacer></v-spacer>
											<v-select
												label="Solo field"
												:items="config"
												class="select-action"
												primary
												@change="changed"
												v-model="selectedAction"

											></v-select>
										</span>
									</th>
								</tr>
							</template>
							<template v-slot:items="props">
									<td><v-checkbox
											v-model="props.selected"
											primary
											hide-details
											:input-value="props.selected"
										></v-checkbox>
									</td>
									<td>{{ props.item.s_id }}</td>
									<td class="text-xs">{{ props.item.s_fname + props.item.s_mname + props.item.s_surname  }} </td>
									<td class="text-xs">{{ props.item.s_dob }}</td>
									<td class="text-xs">{{ props.item.s_email }}</td>
									<td class="text-xs">{{ props.item.s_contact }}</td>
									<!-- <td class="text-xs" v-if="n==1">{{ props.item.stream }}</td>
									<td class="text-xs" v-if="n==1">{{ props.item.section }}</td>
									<td class="text-xs" v-if="n==2">{{ props.item.subject}}</td> -->

								<td class="justify-center layout px-0">
									<!-- <v-icon small class="mr-2" @click="editItem(props.item)" >
										edit
									</v-icon>
									<v-icon small @click="deleteItem(props.item)">
										delete
									</v-icon> -->
									<v-dialog v-if="editMode" v-model="dialogEdit" fullscreen hide-overlay transition="dialog-bottom-transition">
										<template v-slot:activator="{ on }">
											<v-btn color="primary" dark v-on="on"
												 @click.prevent="editItem(props.item.s_id)">Edit</v-btn>
										</template>
										<v-card>
											<v-toolbar dark color="primary">
												<v-toolbar-title>
													<div v-if="n==1">Student Form</div>
													<div v-if="n==2">Teacher Form</div>
													<div v-if="n==3">Staff Form</div>
												</v-toolbar-title>
												<v-spacer></v-spacer>
												<v-btn icon dark @click="dialogEdit = false">
													<v-icon>close</v-icon>
												</v-btn>
											</v-toolbar>
											<div v-if="n==1"><AddStudentForm mode="edit" :details="details" /></div>
											<div v-if="n==2"><AddTeacherForm /></div>
											<div v-if="n==3"><AddStudentForm /></div>
										</v-card>
									</v-dialog>

									<v-btn v-if="viewMode">View</v-btn>
								</td>

							</template>
						</v-data-table>
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
import ConfigToolbar from '@/components/ConfigToolbar'

import AddStudentForm from '@/components/UserConfig/AddStudentForm'
import AddTeacherForm from '@/components/UserConfig/AddTeacherForm'
import AddStaffForm from '@/components/UserConfig/AddStaffForm'

export default {
	components: {
		ConfigToolbar,
		AddStudentForm,
		AddTeacherForm,
		AddStaffForm
	},
  	data: () => ({
		active: '',
		heading : ['Student' , 'Teacher' , 'Staff'],
		items: ['A', 'B', 'C', 'D'],
		dialogAdd: false,
		dialog: false,
		selectedAction: '',
		config: ['View','Edit'],
		viewMode: false,
		editMode: false,
		dialogEdit: false,
		headers: [
			[
				{ text: 'Sl_No',	align: 'left', sortable: true,	value: 's_id'},
				{ text: 'Name', value: 'name' },
				{ text: 'Date of birth ', value: 's_dob' },
				{ text: 'Email', value: 's_email' },
				{ text: 'Contact Number', value: 's_contact' },
				{ text: 'Stream', value: 'stream' },
				{ text: 'Section', value: 'class_id' },
				{ name: 'Actions'}
			],
			[
				{ text: 'Sl_No', align: 'left', sortable: true, value: 'id'},
				{ text: 'Name', value: 'name' },
				{ text: 'Date of birth ', value: 'dob' },
				{ text: 'Email', value: 'email' },
				{ text: 'Contact Number', value: 'contact value' },
				{ text: 'Subject', value: 'subject' }
			],
			[
				{ text: 'Sl_No', align: 'left', sortable: true, value: 'id'},
				{ text: 'Name', value: 'name' },
				{ text: 'Date of birth ', value: 'dob' },
				{ text: 'Email', value: 'email' },
				{ text: 'Contact Number', value: 'contact value' }
			]
		],
		Serial_No: [],
		editedIndex: -1,
		editedItem: {
			id: '1',
			name : '--',
			dob: '--',
			email: '--',
			contact: '--',
			stream: '--',
			section: '24'
		},
		selected: [],

		details:{}
  	}),
	computed: {
		formTitle () {
			return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
		}
	},
 	 watch: {
		dialog (val) {
			val || this.close()
		}
 	},
	created () {
		this.initialize()
	},
	methods: {
		async initialize () {
			const student_response = await this.$axios.get('/api/students')
			const teacher_response = await this.$axios.get('/api/teachers')
			const staff_response = await this.$axios.get('/api/staffs')
			this.Serial_No =
			{
				student_data: student_response.data,
				teacher_data : teacher_response.data,
				staff_data: staff_response.data
			}
		},
		selectUser(n) {
			if(n==1)
			{
				return this.Serial_No.student_data
			}
			else if(n==2)
			{
				return this.Serial_No.teacher_data
			}
			else if(n==3)
			{
				return this.Serial_No.staff_data
			}
		},
		async editItem(id) {
			const response = await this.$axios.get(`/api/students/${id}/show`)
			this.details= {
				...response.data.data
			}
		},
		// editItem (item) {
		// 	this.editedIndex = this.Serial_No.indexOf(item)
		// 	this.editedItem = Object.assign({}, item)
		// 	this.dialog = true
		// },
		deleteItem (item) {
			const index = this.Serial_No.indexOf(item)
			confirm('Are you sure you want to delete this item?') && this.Serial_No.splice(index, 1)
		},
		close () {
			this.dialog = false
			setTimeout(() => {
				this.editedItem = Object.assign({}, this.defaultItem)
				this.editedIndex = -1
			}, 300)
		},
		save () {
			if (this.editedIndex > -1) {
				Object.assign(this.Serial_No[this.editedIndex], this.editedItem)
			} else {
				this.Serial_No.push(this.editedItem)
			}
			this.close()
		},
		next () {
			const active = parseInt(this.active)
			this.active = (active < 2 ? active + 1 : 0)
		},
		selectAll () {
			if (this.selected.length) this.selected = []
			// else this.selected = this.desserts.slice()
		},
		changed(value) {
			this.selectedAction = value
			if(value=='Edit')
			{
				this.editMode=true
				this.viewMode=false
			}
			else if(value=='View')
			{
				this.viewMode=true
				this.editMode=false
			}
		}
	},
	beforeUpdate() {
	}
}
</script>


<style scoped>

.place
{
  height : 56px;
}
.btn
{
  margin-left : 400px ;
}
.select-action
{
	width: 10%;
	padding-left: 20%;
	padding-right: 20%;
}
</style>
