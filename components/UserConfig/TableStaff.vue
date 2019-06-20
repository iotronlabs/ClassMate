<template>
<div>
	<v-toolbar flat color="lightgrey">
      	<v-text-field v-model="search" append-icon="search" label="Search" single-line hide-details></v-text-field>
      	<v-spacer></v-spacer>
		<v-btn v-if="deleteMode==false" color="error" @click="deleteMode=true" dark v-on="on">Delete</v-btn>
		<v-dialog v-model="dialog" fullscreen hide-overlay transition="dialog-bottom-transition">
			<template v-slot:activator="{ on }">
				<v-btn color="primary" @click="addItem" dark v-on="on">Add New</v-btn>
			</template>
			<v-card>
				<v-toolbar dark color="primary">
					<v-toolbar-title>Staff Form</v-toolbar-title>
					<v-spacer></v-spacer>
					<v-btn icon dark @click="dialog = false">
						<v-icon>close</v-icon>
					</v-btn>
				</v-toolbar>
				<v-form ref="form" method="post" id="form" enctype="multipart/form-data">
					<v-container fluid>
						<!-- <v-layout>
							<v-flex xs12 sm6 >
								<v-btn raised class="primary" @click="onPickFile">add image</v-btn>
								<input
									type="file"
									ref="fileInput"
									accept="image/*"
									@change="onFilePicked"
								>
							</v-flex>
						</v-layout>

						<v-layout row>
							<v-flex xs12 sm6>
								<img :src="editedItem.imageUrl">
							</v-flex>
						</v-layout> -->

						<v-layout row wrap>

							<v-flex xs12 sm6 md3 >
								<v-text-field
									v-model="editedItem.st_fname"
									:rules="[rules.required]"
									label="Name"
									type="text"
									placeholder="First"
									required
									:disabled="disabled"
								>
								</v-text-field>
							</v-flex>

							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.st_mname"
									type="text"
									placeholder="Middle"
									:disabled="disabled"
								>
								</v-text-field>
							</v-flex>

							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.st_surname"
									type="text"
									placeholder="Last"
									:disabled="disabled"
								>
								</v-text-field>
							</v-flex>
						</v-layout>
						<v-layout  wrap>
							<v-flex xs12 sm6 md3>
									<v-radio-group v-model="editedItem.st_gender" label="Gender">
									<v-radio
										v-for="gender in genders"
										:key="gender.value"
										:label="gender.label"
										:value="gender.value"
										:disabled="disabled"
									></v-radio>
								</v-radio-group>
							</v-flex>

							<v-flex xs12 sm6 md3>
								<v-menu
									ref="menu"
									v-model="editedItem.st_dob"
									:close-on-content-click="false"
									:nudge-right="40"
									:return-value.sync="date"
									lazy
									transition="scale-transition"
									offset-y
									full-width
									min-width="290px"
									:disabled="disabled"
								>
									<template v-slot:activator="{ on }">
										<v-text-field
										v-model="date"
										label="Date of Birth"
										placeholder="yyyy-mm-dd"
										readonly
										v-on="on"
										></v-text-field>
									</template>
									<v-date-picker v-model="date" no-title scrollable>
										<v-spacer></v-spacer>
										<v-btn flat color="primary" @click="menu = false">Cancel</v-btn>
										<v-btn flat color="primary" @click="$refs.menu.save(date)">OK</v-btn>
									</v-date-picker>
								</v-menu>
							</v-flex>
						</v-layout>
						<v-layout>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.st_age"
									type="text"
									label="Age"
									placeholder="Age"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
						</v-layout>

						<!-- email -->
						<v-layout row wrap >
							<v-flex xs12 sm12 md3>
								<v-text-field
									name="email"
									type="email"
									v-model="editedItem.st_email"
									:rules="[rules.required,rules.emailValid]"
									label=" Email id"
									placeholder="Enter Email id"
									autocomplete="off"
									required
									:disabled="disabled"
								></v-text-field>
							</v-flex>
							<!-- contact  -->
							<v-flex xs12 sm12 md3>
								<v-text-field
									v-model="editedItem.st_contact"
									type="tel"
									label="Contact no"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
						</v-layout>
						<!-- religion nationality -->
						<v-layout row wrap>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.st_religion"
									label="Religion"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.st_nationality"
									label="Nationality"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
						</v-layout>
						<!-- address   address pincode state-->
							<v-flex xs12 sm12 md9>
								<v-text-field
									name="streetaddress"
									type="text"
									v-model="editedItem.st_address"
									label=" Address"
									placeholder="Street address"
									autocomplete="off"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
						<br>
						<v-layout row wrap>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.st_address_city"
									type="text"
									placeholder="City"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.st_address_pin"
									type="text"
									placeholder="Pin/zip code"
									:disabled="disabled"
								> </v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-select
									v-if="editedItem.st_nationality=='Indian' || editedItem.st_nationality=='indian' || editedItem.st_nationality=='INDIAN' || editedItem.st_nationality=='India' || editedItem.st_nationality=='india' || editedItem.st_nationality=='INDIA'"
									v-model="editedItem.st_state"
									:items="states"
									label="State"
									solo
									:disabled="disabled"
								></v-select>
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


    <v-data-table :headers="headers" :items="user_details" item-key="st_id" v-model="selected" select-All class="elevation-1">
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
				<td class="text-xs-center">{{ props.item.st_id }}</td>
				<td class="text-xs-right">{{ props.item.st_fname + ' ' + props.item.st_mname + ' ' + props.item.st_surname}}</td>
				<td class="text-xs-right">{{ props.item.st_dob }}</td>
				<td class="text-xs-right">{{ props.item.st_email }}</td>
				<td class="text-xs-right">{{ props.item.st_contact }}</td>
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
		  	{ text: 'Sl_No', align: 'left', sortable: true,	value: 'st_id'},
			{ text: 'Name', sortable: false},
			{ text: 'Date of birth ', value: 'st_dob', sortable: false },
			{ text: 'Email', value: 'st_email', sortable: false },
			{ text: 'Contact Number', value: 'st_contact', sortable: false }
		],
		date: new Date().toISOString().substr(0, 10),
		menu: false,
		image:null,
		states:[
			'Arunachal Pradesh','Assam', 'Bihar', 'Chhattisgarh' ,'Goa', 'Gujarat', 'Haryana' ,
			'Himachal Pradesh', 'Jammu and Kashmir',
			'Jharkhand' ,'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra' ,'Manipur', 'Meghalaya ',
			'Mizoram', 'Nagaland', 'Odisha', 'Punjab','Rajasthan',
			'Sikkim', 'TamilNadu' ,'Telangana', 'Tripura', 'Uttar Pradesh', 'Uttarakhand',' West Bengal'
		],
		genders: [
			{label: 'Male', value: 'M'},
			{label: 'Female',value: 'F'},
			{label: 'Others',value: 'O'}
		],
		rules: {
			required: v => !!v || 'Required.',
			emailValid : v=> /.+@.+/.test(v) || 'E-mail must be valid'
		},

		user_details: [],
		editedIndex: -1,
		editedItem: {
			st_id: '',
			st_fname: '',
			st_mname: '',
			st_surname: '',
			st_email: '',
			st_gender: '',
			st_contact: '',
			st_dob: '',
			st_age: '',
			st_religion: '',
			st_nationality: '',
			st_address_city: '',
			st_address: '',
			st_address_pin: '',
			st_address_state: '',
			image:null,
			imageUrl:'',
		},
		defaultItem: {
			st_id: '',
			st_fname: '',
			st_mname: '',
			st_surname: '',
			st_email: '',
			st_gender: '',
			st_contact: '',
			st_dob: '',
			st_religion: '',
			st_nationality: '',
			st_address: '',
			st_address_city: '',
			st_address_pin: '',
			st_address_state: '',
			image:null,
			imageUrl:'',
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
		onFilePicked(event){
			const files=event.target.files
			let filename=files[0].name;
			if (filename.lastIndexOf('.')<=0)
			{
				return alert('please add a valid file')
			}
			const fileReader=new FileReader()
			fileReader.addEventListener ('load',() => {
				this.editedItem.imageUrl=fileReader.result
			})
			fileReader.readAsDataURL(files[0])
			this.editedItem.image=files[0]
		},
		async initialize () {
			const staff_response = await this.$axios.get('/api/staffs')
			this.user_details = staff_response.data
		},
		addItem() {
			this.disabled=false
		},
		viewItem(item) {
			this.editedIndex = this.user_details.indexOf(item)
			this.editedItem = Object.assign({}, item)
			this.disabled=true
			this.dialog=true
		},
		editItem (item) {
			this.disabled=false
			this.editedIndex = this.user_details.indexOf(item)
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
				id=this.selected[i].st_id
				response = await this.$axios.delete(`/api/staffs/${id}`)
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
				index=this.user_details.map((e) => e.st_id).indexOf(id)
				this.user_details.splice(index,1)
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
				Object.assign(this.user_details[this.editedIndex], this.editedItem)
			} else {
				this.user_details.push(this.editedItem)
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
			else this.selected = this.user_details.slice()
		},

		async submitForm() {
			let response
			if(this.editedIndex == -1)
			{
				response = await this.$axios.post(`/api/staffs/register`,{
					st_fname: this.editedItem.st_fname,
					st_mname: this.editedItem.st_mname,
					st_surname: this.editedItem.st_surname,
					st_email: this.editedItem.st_email,
					st_gender: this.editedItem.st_gender,
					password: this.editedItem.st_contact,
					st_contact: this.editedItem.st_contact,
					st_dob: this.date,
					st_age: this.editedItem.st_age,
					st_religion: this.editedItem.st_religion,
					st_nationality: this.editedItem.st_nationality,
					st_address: this.editedItem.st_address,
					st_address_city: this.editedItem.st_address_city,
					st_address_pin: this.editedItem.st_address_pin,
					st_address_state: this.editedItem.st_address_state
					// st_profile_picture: this.imageUrl
				})
				if(response.data.success==true)
				{
					// this.user_details.push(this.editedItem)
					this.dialog = false
					this.message="New Staff added successfully"
					this.snackbar=true
				}
			}
			else
			{
				var id= this.editedItem.st_id
				response = await this.$axios.post(`/api/staffs/${id}`,{
					st_fname: this.editedItem.st_fname,
					st_mname: this.editedItem.st_mname,
					st_surname: this.editedItem.st_surname,
					st_email: this.editedItem.st_email,
					st_gender: this.editedItem.st_gender,
					st_contact: this.editedItem.st_contact,
					st_dob: this.date,
					st_age: this.editedItem.st_age,
					st_religion: this.editedItem.st_religion,
					st_nationality: this.editedItem.st_nationality,
					st_address: this.editedItem.st_address,
					st_address_city: this.editedItem.st_address_city,
					st_address_pin: this.editedItem.st_address_pin,
					st_address_state: this.editedItem.st_address_state
					// s_profile_picture: this.imageUrl,
				})
				if(response.data.success==true)
				{
					this.dialog=false
					this.message="Staff successfully updated"
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

