<template>
<div>
	<v-toolbar flat color="lightgrey">
      	<v-text-field v-model="search" append-icon="search" label="Search" single-line hide-details></v-text-field>
      	<v-spacer></v-spacer>
		<v-btn v-if="deleteMode==false" color="error" @click="deleteMode=true" dark v-on="on">Delete</v-btn>
		<v-dialog v-model="dialog" persistent max-width="600px">
			<template v-slot:activator="{ on }">
				<v-btn color="primary" @click="addItem" dark v-on="on">Add New</v-btn>
			</template>
			<v-card>
				<v-toolbar dark color="primary">
					<v-toolbar-title>Department and Stream Form</v-toolbar-title>
						<v-spacer></v-spacer>
						<v-btn icon dark @click="dialog = false">
							<v-icon>close</v-icon>
						</v-btn>
					</v-toolbar>
					<v-form ref="form" method="post" id="form" enctype="multipart/form-data">
						<v-container fluid>
							<v-layout>
								<v-flex xs12 sm6 md4>
									<v-select :disabled="disabled" v-model="editedItem.department_name" :items="departments" label="Assign Department"></v-select>
								</v-flex>
								<!-- Add new department option that will pop up another modal -->
								<v-dialog :disabled="disabled" v-model="addDialog" persistent max-width="500px">
									<template v-slot:activator="{ on }">
										<v-btn flat v-on="on"><v-icon>add</v-icon>Add New<br>Department</v-btn>
									</template>
									<v-card>
										<v-toolbar dark>
											<v-toolbar-title>Add New Department</v-toolbar-title>
											<v-spacer></v-spacer>
											<v-btn icon dark @click="addDialog=false">
												<v-icon>close</v-icon>
											</v-btn>
										</v-toolbar>
										<v-form ref="addForm" id="addForm" method="post" enctype="multipart/form-data">
											<v-layout>
												<v-flex xs10 sm10 md10 offset-md1 offset-xs1 offset-sm-1>
													<v-text-field v-model="dept_name" label="Department Name" :disabled="disabled"></v-text-field>
												</v-flex>
											</v-layout>
											<v-layout>
												<v-flex xs10 sm10 md10 offset-md1 offset-xs1 offset-sm-1>
													<v-text-field v-model="dept_code" label="Department Code" :disabled="disabled"></v-text-field>
												</v-flex>
											</v-layout>
											<v-spacer></v-spacer><br>
											<v-layout>
												<v-flex xs12 sm10 md10 offset-md3 offset-xs2 offset-sm-2>
													<v-btn round @click.prevent="submitAddForm" color="success" light type="submit" form="form" :disabled="disabled" >Submit</v-btn>
													<v-btn  round color="primary" type="submit" form="form"  @click.prevent="resetAddForm" :disabled="disabled">Clear form</v-btn>
												</v-flex>
											</v-layout>
										</v-form>
									</v-card>
								</v-dialog>
							</v-layout>
							<v-layout>
								<!-- <v-flex xs12 sm6 md4>
									<v-text-field v-model="dept_name" label="Department Name"></v-text-field>
								</v-flex> -->

							</v-layout>
							<v-layout>
								<v-flex xs12 sm6 md4>
									<v-text-field :disabled="disabled" v-model="editedItem.stream_code" label="Stream Code"></v-text-field>
								</v-flex>
								<v-flex xs12 sm6 md4>
									<v-text-field :disabled="disabled" v-model="editedItem.stream_name" label="Stream Name"></v-text-field>
								</v-flex>
								<v-flex xs12 sm6 md4>
									<v-select :disabled="disabled" v-model="editedItem.course_length" :items="course_lengths" label="Assign course length"></v-select>
								</v-flex>

							</v-layout>
							<v-layout>

								<v-flex xs12 sm12 md12>
									<v-select
										v-model="editedItem.subjects"
										:items="subjects"
										:menu-props="{ maxHeight: '400' }"
										label="Assign subjects"
										multiple
										chips
										:disabled="disabled"
									></v-select>
								</v-flex>
								<v-flex xs12 sm6 md4>

								</v-flex>
							</v-layout>
						<v-spacer></v-spacer><br>
						<v-btn round @click.prevent="submitForm" color="success" light type="submit" form="form" :disabled="disabled" >Submit</v-btn>
						<v-btn  round color="primary" type="submit" form="form"  @click.prevent="reset" :disabled="disabled">Clear form</v-btn>
					</v-container>
				</v-form>
			</v-card>
		</v-dialog>
    </v-toolbar>


    <v-data-table :headers="headers" :items="dept_details" item-key="department_code" v-model="selected" select-All class="elevation-1">
	 	<template v-slot:headers="props">
			<tr>
				<th v-if="deleteMode==true">
					<v-checkbox
						:input-value="props.all"
						:indeterminate="props.indeterminate"
						primary
						hide-details
						@click.stop="toggleAll"
					></v-checkbox>
				</th>
				<th
					v-if="deleteMode==false"
					v-for="header in props.headers"
					:key="header.text"
				>

					{{ header.text }}
				</th>

				<th>
					<div v-if="deleteMode">
					<v-layout>
						<v-flex>
							{{selected.length}} rows selected
							<v-btn color="error" @click="deleteItem">Confirm</v-btn>
							<v-btn color="info" @click="deleteMode=false" class="btn-cancel">Cancel</v-btn>
						</v-flex>
					</v-layout>
				</div>
				</th>
			</tr>
	 	</template>
		<template v-slot:items="props">
			<tr :active="props.selected" @click="props.selected = !props.selected">
				<td v-if="deleteMode">
					<v-checkbox
						primary
						hide-details
						:input-value="props.selected"
					></v-checkbox>
				</td>
				<td class="text-xs-center">{{ props.item.department_code }}</td>
				<td class="text-xs-right">{{ props.item.department_name }}</td>
				<td class="text-xs-right">{{ props.item.stream_code }}</td>
				<td class="text-xs-right">{{ props.item.stream_name }}</td>
				<td class="text-xs-right">{{ props.item.course_length }}</td>
				<td class="justify-center layout px-0">
					<span v-if="deleteMode==false">
						<v-menu offset-y>
							<template v-slot:activator="{ on }">
								<v-btn dark	v-on="on">Actions</v-btn>
							</template>
							<v-list>
								<v-list-tile
									v-for="(item, index) in settings"
									:key="index"
									@click="changed(item.title)"
								>
								<v-list-tile-title @click="item.title=='Edit' ? editItem(props.item) : viewItem(props.item)">{{ item.title }}</v-list-tile-title>
								</v-list-tile>
							</v-list>
							</v-menu>
					</span>
				</td>
			</tr>
      	</template>
		<template v-slot:no-data>
			<div>No data </div>
		</template>
    </v-data-table>

	<!-- snackbar -->
	<v-snackbar
		v-model="snackbar"
		:timeout="timeout"
		top
		vertical
    >
		{{ message }}
		<v-btn
			color="pink"
			flat
			@click="snackbar = false"
		>
			Close
		</v-btn>
    </v-snackbar>
  </div>
</template>

<script>
export default {
    data: () => ({
		dialog: false,
		addDialog: false,
		search: '',
		message: '',
		snackbar: false,
		timeout: 3000,

		selectedAction: '',
		config: ['View','Edit'],
		viewMode: false,
		editMode: false,
		deleteMode: false,
		disabled: false,
		selected: [],
		settings :
		[
			{ title: 'View' },
			{ title: 'Edit' }
		],

		subjects: [],
		departments: [],
		dept_name: '',
		dept_code: '',
		course_lengths: ['1year-2sem','2years-4sem','3years-6sem','4years-8sem'],

		headers: [
		  	// { text: 'Sl_No', align: 'left', sortable: true,	value: 'department_code'},
			{ text: 'Department Code ', value: 'department_code', sortable: false },
			{ text: 'Department Name', value: 'department_name' ,sortable: false},
			{ text: 'Stream Code', value: 'stream_code', sortable: false },
			{ text: 'Stream Name', value: 'stream_name', sortable: false },
			{ text: 'Course Length', value: 'course_length', sortable: false }
		],
		rules: {
			required: v => !!v || 'Required.'
		},

		dept_details: [],
		editedIndex: -1,
		editedItem: {
			department_name: '',
			stream_name: '',
			stream_code: '',
			course_length: '',
			subjects: []
		},
		defaultItem: {
			department_name: '',
			stream_name: '',
			stream_code: '',
			course_length: '',
			subjects: []
		}
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
		reset () {
			this.$refs.form.reset()
		},
		resetAddForm () {
			this.$refs.addForm.reset()
		},
		async initialize () {
			const dept_response = await this.$axios.get('/api/streams')
			this.dept_details = dept_response.data
			for(var i in dept_response.data)
			{
				this.departments.push(dept_response.data[i].department_name)
			}
			const sub_response = await this.$axios.get('/api/subjects')
			for(var i in sub_response.data)
			{
				this.subjects.push(sub_response.data[i].sub_name)
			}
		},
		addItem() {
			this.disabled=false
		},
		async viewItem(item) {
			this.editedIndex = this.dept_details.indexOf(item)
			this.editedItem = Object.assign({}, item)
			const response = await this.$axios.get(`/api/subjects/stream/${item.stream_name}`)
			let i
			this.editedItem.subjects= new Array()
			for(i=0;i<(response.data.length);i++)
			{
				this.editedItem.subjects.push(response.data[i].sub_name)
			}
			this.disabled=true
			this.dialog=true
		},
		async editItem (item) {
			this.disabled=false
			this.editedIndex = this.dept_details.indexOf(item)
			this.editedItem = Object.assign({}, item)
			const response = await this.$axios.get(`/api/subjects/stream/${item.stream_name}`)
			let i
			this.editedItem.subjects= new Array()
			for(i=0;i<(response.data.length);i++)
			{
				this.editedItem.subjects.push(response.data[i].sub_name)
			}
			this.dialog = true
		},
		async deleteItem () {
			var i
			let response
			let id
			let index
			for(i=0;i<(this.selected.length);i++)
			{
				id=this.selected[i].department_code
				response = await this.$axios.delete(`/api/subjects/${id}`)
				if(response.data.success==true)
				{
					if(this.selected.length!=1)
					{
						this.message=`${this.selected.length} item deleted`
					}
					else
					{
						this.message=`${this.selected.length} items deleted`
					}
					this.snackbar=true
				}
				index=this.dept_details.map((e) => e.department_code).indexOf(id)
				this.dept_details.splice(index,1)
			}
			this.deleteMode=false
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
				Object.assign(this.dept_details[this.editedIndex], this.editedItem)
			} else {
				this.dept_details.push(this.editedItem)
			}
			this.close()
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
		},
		toggleAll () {
			if (this.selected.length) this.selected = []
			else this.selected = this.dept_details.slice()
		},

		async submitForm() {
			let response
			if(this.editedIndex == -1)
			{
				response = await this.$axios.post(`/api/streams/register`,{
					department_name: this.editedItem.department_name,
					stream_code: this.editedItem.stream_code,
					stream_name: this.editedItem.stream_name,
					course_length: this.editedItem.course_length,
					subjects: this.editedItem.subjects
				})
				if(response.data.success==true)
				{
					// this.dept_details.push(this.editedItem)
					this.dialog = false
					this.message="New Department and Stream added successfully"
					this.snackbar=true
				}
			}
			else
			{
				var id= this.editedItem.id
				response = await this.$axios.post(`/api/streams/${id}`,{
					department_name: this.editedItem.department_name,
					stream_code: this.editedItem.stream_code,
					stream_name: this.editedItem.stream_name,
					course_length: this.editedItem.course_length,
					subjects: this.editedItem.subjects
				})
				if(response.data.success==true)
				{
					this.dialog=false
					this.message="Department and Stream successfully updated"
					this.snackbar=true
				}
			}
		},
		async submitAddForm() {
			const response = await this.$axios.post('/api/departments/register',{
				department_name: this.dept_name,
				department_code: this.dept_code
			})
			if(response.data.success==true)
			{
				this.message="New Department Added"
				this.addDialog=false
				this.snackbar=true
				this.departments.push(this.dept_name)
			}
		}
    }
}
</script>

<style scoped>
.select-action
{
	width: 100%;
	padding-left: 20%;
	padding-right: 20%;
}
</style>

