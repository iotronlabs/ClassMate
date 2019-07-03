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
					<v-toolbar-title>Class Form</v-toolbar-title>
						<v-spacer></v-spacer>
						<v-btn icon dark @click="dialog = false">
							<v-icon>close</v-icon>
						</v-btn>
					</v-toolbar>
					<v-form ref="form" method="post" id="form" enctype="multipart/form-data">
						<v-container fluid>
							<v-layout>
								<v-flex xs12 sm6 md4>
									<v-text-field :disabled="disabled" v-model="editedItem.class_name" label="Class Name"></v-text-field>
								</v-flex>
								<v-flex xs12 sm6 md4>
									<v-select :disabled="disabled" v-model="editedItem.class_stream" :items="streams" label="Assign Stream"></v-select>
								</v-flex>

								<v-flex xs12 sm6 md4>
									<v-text-field :disabled="disabled" v-model="editedItem.class_teacher" label="Class Teacher"></v-text-field>
								</v-flex>

								<v-flex xs12 sm6 md4>
									<!-- Add Sections here multi chip type -->
									<!-- <v-combobox
										v-model="topic"
										:items="topics"
										label="Enter the topics"
										multiple
										chips
									></v-combobox> -->

								</v-flex>
							</v-layout>
							<v-layout>
								<v-flex xs12 sm6 md3>
									<v-menu
										:disabled="disabled"
										ref="menu1"
										v-model="editedItem.start_date"
										:close-on-content-click="false"
										:nudge-right="40"
										:return-value.sync="date1"
										lazy
										transition="scale-transition"
										offset-y
										full-width
										min-width="290px"
									>
									<template v-slot:activator="{ on }">
										<v-text-field
										v-model="date1"
										label="Start Date"
										placeholder="yyyy-mm-dd"
										readonly
										v-on="on"
										></v-text-field>
									</template>
									<v-date-picker v-model="date1" no-title scrollable>
										<v-spacer></v-spacer>
										<v-btn flat color="primary" @click="menu1 = false">Cancel</v-btn>
										<v-btn flat color="primary" @click="$refs.menu1.save(date1)">OK</v-btn>
									</v-date-picker>
								</v-menu>
								</v-flex>

								<v-flex xs12 sm6 md3>
									<v-menu
										:disabled="disabled"
										ref="menu2"
										v-model="editedItem.end_date"
										:close-on-content-click="false"
										:nudge-right="40"
										:return-value.sync="date2"
										lazy
										transition="scale-transition"
										offset-y
										full-width
										min-width="290px"
									>
									<template v-slot:activator="{ on }">
										<v-text-field
										v-model="date2"
										label="End Date"
										placeholder="yyyy-mm-dd"
										readonly
										v-on="on"
										></v-text-field>
									</template>
									<v-date-picker v-model="date2" no-title scrollable>
										<v-spacer></v-spacer>
										<v-btn flat color="primary" @click="menu2 = false">Cancel</v-btn>
										<v-btn flat color="primary" @click="$refs.menu2.save(date2)">OK</v-btn>
									</v-date-picker>
								</v-menu>
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


    <v-data-table :headers="headers" :items="class_details" item-key="sub_code" v-model="selected" select-All class="elevation-1">
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
				<td class="text-xs-center">{{ props.item.class_id }}</td>
				<td class="text-xs-right">{{ props.item.class_name }}</td>
				<td class="text-xs-right">{{ props.item.class_stream }}</td>
				<td class="text-xs-right">{{ props.item.class_teacher }}</td>
				<td class="text-xs-right">{{ props.item.start_date }}</td>
				<td class="text-xs-right">{{ props.item.end_date }}</td>
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

		date1: new Date().toISOString().substr(0, 10),
		date2: new Date().toISOString().substr(0, 10),
		menu1: false,
		menu2: false,
		streams: [],
		teachers: [],

		headers: [
			  // { text: 'Sl_No', align: 'left', sortable: true,	value: 'sub_code'},
			{ text:'Class Id', value: 'class_id'},
			{ text: 'Class Name ', value: 'class_name', sortable: false },
			// { text: 'Sections', value: '', sortable: false},
			{ text: 'Stream', value: 'class_stream', sortable: false },
			{ text: 'Teacher', value: 'class_teacher', sortable: false },
			{ text: 'Start Date' , value: 'start_date' },
			{ text: 'End Date', value: 'end_date'}
		],
		rules: {
			required: v => !!v || 'Required.'
		},

		class_details: [],
		editedIndex: -1,
		editedItem: {
			class_id: '',
			class_name: '',
			// sections: [],
			class_stream: '',
			class_teacher: '',
			start_date: '',
			end_date: ''
		},
		defaultItem: {
			class_id: '',
			class_name: '',
			// sections: [],
			class_stream: '',
			class_teacher: '',
			start_date: '',
			end_date: ''
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
		onPickFile()
		{
			this.$refs.fileInput.click()
		},
		async initialize () {
			// const class_response = await this.$axios.get('/api/subjects')
			this.class_details = class_response.data
		},
		addItem() {
			this.disabled=false
		},
		viewItem(item) {
			this.editedIndex = this.class_details.indexOf(item)
			this.editedItem = Object.assign({}, item)
			this.disabled=true
			this.dialog=true
		},
		editItem (item) {
			this.disabled=false
			this.editedIndex = this.class_details.indexOf(item)
			this.editedItem = Object.assign({}, item)
			this.dialog = true
		},
		async deleteItem () {
			var i
			let response
			let id
			let index
			for(i=0;i<(this.selected.length);i++)
			{
				id=this.selected[i].sub_code
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
				index=this.class_details.map((e) => e.sub_code).indexOf(id)
				this.class_details.splice(index,1)
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
				Object.assign(this.class_details[this.editedIndex], this.editedItem)
			} else {
				this.class_details.push(this.editedItem)
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
			else this.selected = this.class_details.slice()
		},

		async submitForm() {
			let response
			// Send classteacher by splitting into fname,mname,surname
			let teacher = this.editedItem.class_teacher.split(" ")
			if(teacher.length == 2)
			{
				// mname is null
			}
			else if(teacher.length == 3)
			{

			}
			if(this.editedIndex == -1)
			{
				response = await this.$axios.post(`/api/classes/register`,{
					class_name: this.editedItem.class_name,
					class_teacher: this.editedItem.class_teacher,
					class_stream: this.editedItem.class_stream,
					// section: this.editedItem.section,
					start_date: this.editedItem.start_date,
					end_date: this.editedItem.end_date
				})
				if(response.data.success==true)
				{
					// this.class_details.push(this.editedItem)
					this.dialog = false
					this.message="New Class added successfully"
					this.snackbar=true
				}
			}
			else
			{
				var id= this.editedItem.class_id
				response = await this.$axios.post(`/api/classes/${id}`,{
					class_name: this.editedItem.class_name,
					class_teacher: this.editedItem.class_teacher,
					class_stream: this.editedItem.class_stream,
					// section: this.editedItem.section,
					start_date: this.editedItem.start_date,
					end_date: this.editedItem.end_date
				})
				if(response.data.success==true)
				{
					this.dialog=false
					this.message="Class successfully updated"
					this.snackbar=true
				}
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

