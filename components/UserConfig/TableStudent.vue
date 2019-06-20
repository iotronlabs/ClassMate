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
					<v-toolbar-title>Student Form</v-toolbar-title>
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

						<h2> Student Details</h2>
						<v-layout row wrap>

							<v-flex xs12 sm6 md3 >
								<v-text-field
									v-model="editedItem.s_fname"
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
									v-model="editedItem.s_mname"
									type="text"
									placeholder="Middle"
									:disabled="disabled"
								>
								</v-text-field>
							</v-flex>

							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.s_surname"
									type="text"
									placeholder="Last"
									:disabled="disabled"
								>
								</v-text-field>
							</v-flex>
						</v-layout>
						<v-layout  wrap>
							<v-flex xs12 sm6 md3>
									<v-radio-group v-model="editedItem.s_gender" label="Gender">
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
									v-model="editedItem.s_dob"
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
									v-model="editedItem.s_age"
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
									v-model="editedItem.s_email"
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
									v-model="editedItem.s_contact"
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
									v-model="editedItem.s_religion"
									label="Religion"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.s_nationality"
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
									v-model="editedItem.s_address"
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
									v-model="editedItem.s_address_city"
									type="text"
									placeholder="City"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.s_address_pin"
									type="text"
									placeholder="Pin/zip code"
									:disabled="disabled"
								> </v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-select
									v-if="editedItem.s_nationality=='Indian' || editedItem.s_nationality=='indian' || editedItem.s_nationality=='INDIAN' || editedItem.s_nationality=='India' || editedItem.s_nationality=='india' || editedItem.s_nationality=='INDIA'"
									v-model="editedItem.s_state"
									:items="states"
									label="State"
									solo
									:disabled="disabled"
								></v-select>
							</v-flex>
						</v-layout>
						<br>

						<v-layout row>
							<v-flex xs12 sm6 offset-s3>
							</v-flex>
						</v-layout>
						<h1>Guardian Details </h1>
						<v-layout row wrap>

							<v-flex xs12 sm6 md3 >
								<v-text-field
								v-model="editedItem.guardian_fname"
								:rules="[rules.required]"
								label="Guardian Name"
								type="text"
								placeholder="First"
								required
								:disabled="disabled"
							>
							</v-text-field>
							</v-flex>

							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.guardian_mname"
									type="text"
									placeholder="Middle"
									:disabled="disabled"
								></v-text-field>
							</v-flex>

							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.guardian_surname"
									type="text"
									placeholder="Last"
									:disabled="disabled"
								>
								</v-text-field>
							</v-flex>
						</v-layout >
						<br>
					<!-- email -->
						<v-layout row wrap >
							<v-flex xs12 sm12 md3>
								<v-text-field
									name="email"
									type="email"
									v-model="editedItem.guardian_email"
									:rules="[rules.required,rules.emailValid]"
									label=" Email id"
									placeholder="enter email id"
									autocomplete="off"
									required
									:disabled="disabled"
								>
								</v-text-field>
							</v-flex>
							<br>
							<!-- contact  -->
							<v-flex xs12 sm12 md3>
								<v-text-field
									v-model="editedItem.guardian_contact"
									type="tel"
									label="Contact no"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
						</v-layout>
								<!-- address   address pincode state-->
							<v-flex xs12 sm12 md9>
								<v-text-field
									name="streetaddress"
									type="text"
									v-model="editedItem.guardian_address"
									label="Address"
									placeholder="street address"
									autocomplete="off"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
						<v-layout row wrap>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.guardian_city"
									type="text"
									placeholder="city"
									:disabled="disabled"
								></v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-text-field
									v-model="editedItem.guardian_pin"
									type="text"
									placeholder="pin/zip code"
									:disabled="disabled"
								> </v-text-field>
							</v-flex>
							<v-flex xs12 sm6 md3>
								<v-select
									v-if="editedItem.s_nationality=='Indian' || editedItem.s_nationality=='indian' || editedItem.s_nationality=='INDIAN' || editedItem.s_nationality=='India' || editedItem.s_nationality=='india' || editedItem.s_nationality=='INDIA'"
									v-model="editedItem.guardian_state"
									:items="states"
									label="State"
									solo
									:disabled="disabled"
								></v-select>
							</v-flex>
						</v-layout>
						<v-layout row>

						</v-layout>
						<h1>Class Details</h1>
						<v-layout row wrap>
							<v-flex xs12 sm12 md4>
								<v-select
									v-model="editedItem.department"
									:items="departments"
									label="Department"
									required
									solo
									:disabled="disabled"
								></v-select>
							</v-flex>
							<v-flex xs12 sm12 md4>
								<v-select
									v-model="editedItem.stream"
									:items="streams"
									label="Streams"
									required
									solo
									:disabled="disabled"
								></v-select>
							</v-flex>
							<v-flex xs12 sm12 md4>
								<v-select
									v-model="editedItem.clas"
									:items="classes"
									label="Class"
									required
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


    <v-data-table :headers="headers" :items="user_details" item-key="s_id" v-model="selected" select-All class="elevation-1">
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
				<td class="text-xs-center">{{ props.item.s_id }}</td>
				<td class="text-xs-right">{{ props.item.s_fname + ' ' + props.item.s_mname + ' ' + props.item.s_surname}}</td>
				<td class="text-xs-right">{{ props.item.s_dob }}</td>
				<td class="text-xs-right">{{ props.item.s_email }}</td>
				<td class="text-xs-right">{{ props.item.s_contact }}</td>
				<td class="text-xs-right">{{ props.item.stream }}</td>
				<td class="text-xs-right">{{ props.item.class_id }}</td>
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
		  	{ text: 'Sl_No', align: 'left', sortable: true,	value: 's_id'},
			{ text: 'Name', sortable: false},
			{ text: 'Date of birth ', value: 's_dob', sortable: false },
			{ text: 'Email', value: 's_email', sortable: false },
			{ text: 'Contact Number', value: 's_contact', sortable: false },
			{ text: 'Stream', value: 'stream', sortable: false },
			{ text: 'Section', value: 'class_id', sortable: true }
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
		departments:[],
		streams: [],
		classes:[],
		rules: {
			required: v => !!v || 'Required.',
			emailValid : v=> /.+@.+/.test(v) || 'E-mail must be valid'
		},

		user_details: [],
		editedIndex: -1,
		editedItem: {
			s_id: '',
			s_fname: '',
			s_mname: '',
			s_surname: '',
			s_email: '',
			s_gender: '',
			s_contact: '',
			s_dob: '',
			s_age: '',
			s_religion: '',
			s_nationality: '',
			s_address_city: '',
			s_address: '',
			s_address_pin: '',
			s_address_state: '',
			guardian_fname: '',
			guardian_mname: '',
			guardian_surname: '',
			guardian_email: '',
			guardian_contact: '',
			guardian_address: '',
			guardian_city: '',
			guardian_pin: '',
			guardian_state: '',
			department: '',
			stream: '',
			class: '',
			image:null,
			imageUrl:'',
		},
		defaultItem: {
			s_id: '',
			s_fname: '',
			s_mname: '',
			s_surname: '',
			s_email: '',
			s_gender: '',
			s_contact: '',
			s_dob: '',
			s_religion: '',
			s_nationality: '',
			s_address: '',
			s_address_city: '',
			s_address_pin: '',
			s_address_state: '',
			guardian_fname: '',
			guardian_mname: '',
			guardian_surname: '',
			guardian_email: '',
			guardian_contact: '',
			guardian_address: '',
			guardian_city: '',
			guardian_pin: '',
			guardian_state: '',
			department: '',
			stream: '',
			class: '',
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
			const student_response = await this.$axios.get('/api/students')
			this.user_details = student_response.data
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
				id=this.selected[i].s_id
				response = await this.$axios.delete(`/api/students/${id}`)
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
				index=this.user_details.map((e) => e.s_id).indexOf(id)
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
				response = await this.$axios.post(`/api/students/register`,{
					s_fname: this.editedItem.s_fname,
					s_mname: this.editedItem.s_mname,
					s_surname: this.editedItem.s_surname,
					s_email: this.editedItem.s_email,
					s_gender: this.editedItem.s_gender,
					password: this.editedItem.s_contact,
					s_contact: this.editedItem.s_contact,
					s_dob: this.date,
					s_age: this.editedItem.s_age,
					s_religion: this.editedItem.s_religion,
					s_nationality: this.editedItem.s_nationality,
					s_address: this.editedItem.s_address,
					s_address_city: this.editedItem.s_address_city,
					s_address_pin: this.editedItem.s_address_pin,
					s_address_state: this.editedItem.s_address_state,
					guardian_fname: this.editedItem.guardian_fname,
					guardian_mname: this.editedItem.guardian_mname,
					guardian_surname: this.editedItem.guardian_surname,
					guardian_email: this.editedItem.guardian_email,
					guardian_contact: this.editedItem.guardian_contact,
					guardian_address: this.editedItem.guardian_address,
					guardian_city: this.editedItem.guardian_city,
					guardian_pin: this.editedItem.guardian_pin,
					guardian_state: this.editedItem.guardian_state,
					// s_profile_picture: this.imageUrl,
					class_id: '123'
				})
				if(response.data.success==true)
				{
					// this.user_details.push(this.editedItem)
					this.dialog = false
					this.message="New Student added successfully"
					this.snackbar=true
				}
			}
			else
			{
				var id= this.editedItem.s_id
				response = await this.$axios.post(`/api/students/${id}`,{
					s_fname: this.editedItem.s_fname,
					s_mname: this.editedItem.s_mname,
					s_surname: this.editedItem.s_surname,
					s_email: this.editedItem.s_email,
					s_gender: this.editedItem.s_gender,
					s_contact: this.editedItem.s_contact,
					s_dob: this.date,
					s_age: this.editedItem.s_age,
					s_religion: this.editedItem.s_religion,
					s_nationality: this.editedItem.s_nationality,
					s_address: this.editedItem.s_address,
					s_address_city: this.editedItem.s_address_city,
					s_address_pin: this.editedItem.s_address_pin,
					s_address_state: this.editedItem.s_address_state,
					guardian_fname: this.editedItem.guardian_fname,
					guardian_mname: this.editedItem.guardian_mname,
					guardian_surname: this.editedItem.guardian_surname,
					guardian_email: this.editedItem.guardian_email,
					guardian_contact: this.editedItem.guardian_contact,
					guardian_address: this.editedItem.guardian_address,
					guardian_city: this.editedItem.guardian_city,
					guardian_pin: this.editedItem.guardian_pin,
					guardian_state: this.editedItem.guardian_state,
					// s_profile_picture: this.imageUrl,
					class_id: '123'
				})
				if(response.data.success==true)
				{
					this.dialog=false
					this.message="Student successfully updated"
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

