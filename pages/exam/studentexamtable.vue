<template>
<div>
	<v-toolbar flat color="lightgrey" >
      	<v-text-field v-model="search" append-icon="search" label="Search" single-line hide-details ></v-text-field>
      	
			
    </v-toolbar>


    <v-data-table :headers="headers" :items="exm_details" item-key="sub_code" v-model="selected" select-All class="elevation-1">
	 	
		<template v-slot:items="props">
			<tr :active="props.selected" @click="props.selected = !props.selected">
				<td >{{ props.item.exm_name }}</td>
				<td >{{ props.item.exm_sub }}</td>
				<td >{{ props.item.exm_dead }}</td>
				<td >{{ props.item.exm_sta }}</td>
				<td ><v-btn>Take Assessment</v-btn></td>
				<td class="justify-center layout px-0">
	
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
	layout: 'DashboardNavigationLayout',
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
			{ text: 'Name ', value: 'exm_name', sortable: false },
			{ text: 'Subject', value: 'exm_sub' ,sortable: false},
			{ text: 'Deadline', value: 'exm_dead', sortable: false },
			{ text: 'Status', value: 'exm_sta', sortable: false },
			{ text: 'Action', value: 'exm_act', sortable: false }
		],
		rules: {
			required: v => !!v || 'Required.'
		},

		exm_details:[
			{
				exm_name : 'DBMS',
				exm_sub : 'Database Principles',
				exm_dead : '06/20/2019',
				exm_sta : 'ACTIVE'
			},
			{
				exm_name : 'Ms Office Tools	',
				exm_sub : 'Office Automation 1',
				exm_dead : '01/23/2019',
				exm_sta : 'ACTIVE'
			},
			{
				exm_name : 'NEW',
				exm_sub : 'Routing And Switching',
				exm_dead : '06/20/2019',
				exm_sta : 'ACTIVE'
			}

		]
		

		
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
		
		toggleAll () {
			if (this.selected.length) this.selected = []
			else this.selected = this.sub_details.slice()
		},

	
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

