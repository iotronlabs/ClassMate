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

						<ConfigToolbar :n="n"/>

						<v-data-table :headers="headers[n-1]" :items="selectUser(n)" select-all class="elevation-1" >

							<template v-slot:items="props">
									<td><v-checkbox
											v-model="props.selected"
											primary
											hide-details
										></v-checkbox>
									</td>
									<td>{{ props.item.id }}</td>
									<td class="text-xs">{{ props.item.name }} </td>
									<td class="text-xs">{{ props.item.dob }}</td>
									<td class="text-xs">{{ props.item.email }}</td>
									<td class="text-xs">{{ props.item.contact }}</td>
									<td class="text-xs" v-if="n==1">{{ props.item.stream }}</td>
									<td class="text-xs" v-if="n==1">{{ props.item.section }}</td>
									<td class="text-xs" v-if="n==2">{{ props.item.subject}}</td>

								<td class="justify-center layout px-0">
									<v-icon small class="mr-2" @click="editItem(props.item)" >
										edit
									</v-icon>
									<v-icon small @click="deleteItem(props.item)">
										delete
									</v-icon>

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
export default {
	components: {
		ConfigToolbar
	},
  	data: () => ({
		active: '',
		heading : ['Student' , 'Teacher' , 'Staff'],
		items: ['A', 'B', 'C', 'D'],
		dialogAdd: false,
		dialog: false,
		headers: [
			[
				{ text: 'Sl_No',	align: 'left', sortable: true,	value: 'id'},
				{ text: 'Name', value: 'name' },
				{ text: 'Date of birth ', value: 'dob' },
				{ text: 'Email', value: 'email' },
				{ text: 'Contact Number', value: 'contact' },
				{ text: 'Stream', value: 'stream' },
				{ text: 'Section', value: 'section' }
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
		defaultItem: {
			id: '1',
			name : '--',
			dob: '--',
			email: '--',
			contact: '--',
			stream: '--',
			section: ''
		},
		selected: []
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
		initialize () {
			this.Serial_No =
			{
				student_data: [
					{
						id: '1',
						name : '--',
						dob: '--',
						email: '--',
						contact: '--',
						stream: '--',
						section: '24'
					},
					{
						id: '2',
						name : '--',
						dob: '--',
						email: '--',
						contact: '--',
						stream: '--',
						section: '24'
					},
					{
						id: '3',
						name : '--',
						dob: '--',
						email: '--',
						contact: '--',
						stream: '--',
						section: '24'
					},
					{
						id: '4',
						name : '--',
						dob: '--',
						email: '--',
						contact: '--',
						stream: '--',
						section: '24'
					}
				],
				teacher_data : [
					{
						id: '2',
						name: '--',
						dob: '--',
						email: '--',
						contact: '--',
						subject: '--'
					},
				]
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
		editItem (item) {
			this.editedIndex = this.Serial_No.indexOf(item)
			this.editedItem = Object.assign({}, item)
			this.dialog = true
		},
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
</style>
