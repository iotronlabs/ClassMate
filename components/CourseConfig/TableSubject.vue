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
					<v-toolbar-title>Subject Form</v-toolbar-title>
						<v-spacer></v-spacer>
						<v-btn icon dark @click="dialog = false">
							<v-icon>close</v-icon>
						</v-btn>
					</v-toolbar>
					<v-form ref="form" method="post" id="form" enctype="multipart/form-data">
						<v-container fluid>
							<v-layout>
								<v-flex xs12 sm6 md4>
									<v-text-field :disabled="disabled" v-model="editedItem.sub_code" label="Code"></v-text-field>
								</v-flex>
								<v-flex xs12 sm6 md6>
									<v-text-field :disabled="disabled" v-model="editedItem.sub_name" label="Subject Name"></v-text-field>
								</v-flex>
								<!-- <v-flex xs12 sm6 md4>
									<v-select
										v-model="editedItem.sub_teacher"
										:items="teachers"
										:menu-props="{ maxHeight: '400' }"
										label="Select Teacher"
										multiple
									></v-select>
								</v-flex> -->
							</v-layout>
							<v-layout>
								<v-flex xs12 sm6 md12>
									<v-combobox
										v-model="editedItem.topics"
										:disabled="disabled"
										label="Enter the topics"
										multiple
										chips
									></v-combobox>

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


    <v-data-table :headers="headers" :items="sub_details" item-key="sub_code" v-model="selected" select-All class="elevation-1">
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
				<td class="text-xs-center">{{ props.item.sub_code }}</td>
				<td class="text-xs-right">{{ props.item.sub_name }}</td>
				<td class="text-xs-right">{{ props.item.sub_stream }}</td>
				<td class="text-xs-right">{{ props.item.sub_department }}</td>
				<td class="text-xs-right">{{ props.item.sub_teacher }}</td>
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

		headers: [
		  	// { text: 'Sl_No', align: 'left', sortable: true,	value: 'sub_code'},
			{ text: 'Subject Code ', value: 'sub_code', sortable: false },
			{ text: 'Subject Name', value: 'sub_name' ,sortable: false},
			{ text: 'Stream', value: 'sub_stream', sortable: false },
			{ text: 'Department', value: 'sub_department', sortable: false },
			{ text: 'Teachers', value: 'sub_teacher', sortable: false }
		],
		rules: {
			required: v => !!v || 'Required.'
		},

		sub_details: [],
		editedIndex: -1,
		editedItem: {
			id:'',
			sub_code: '',
			sub_name: '',
			sub_teacher: [],
			topics: []
		},
		defaultItem: {
			id: '',
			sub_code: '',
			sub_name: '',
			sub_teacher: [],
			topics: []
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
			const sub_response = await this.$axios.get('/api/subjects')
			this.sub_details = sub_response.data
		},
		addItem() {
			this.disabled=false
		},
		async viewItem(item) {
			this.editedIndex = this.sub_details.indexOf(item)
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
			this.editedIndex = this.sub_details.indexOf(item)
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
				index=this.sub_details.map((e) => e.sub_code).indexOf(id)
				this.sub_details.splice(index,1)
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
				Object.assign(this.sub_details[this.editedIndex], this.editedItem)
			} else {
				this.sub_details.push(this.editedItem)
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
			else this.selected = this.sub_details.slice()
		},

		async submitForm() {
			console.log(this.editedItem.topics)
			let response
			if(this.editedIndex == -1)
			{
				response = await this.$axios.post(`/api/subjects/register`,{
					sub_code: this.editedItem.sub_code,
					sub_name: this.editedItem.sub_name,
					topics: this.editedItem.topics
				})
				if(response.data.success==true)
				{
					// this.sub_details.push(this.editedItem)
					this.dialog = false
					this.message="New Subject added successfully"
					this.snackbar=true
				}
			}
			else
			{
				var sub_id= this.editedItem.id
				response = await this.$axios.post(`/api/subjects/${sub_id}`,{
					sub_code: this.editedItem.sub_code,
					sub_name: this.editedItem.sub_name,
					topics: this.editedItem.topics
				})
				if(response.data.success==true)
				{
					this.dialog=false
					this.message="Subject successfully updated"
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

