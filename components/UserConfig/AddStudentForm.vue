<template>
<div>
	<v-app>
 		<v-card >
		<v-form ref="addstudent-form" method="post" id="addstudent-form" enctype="multipart/form-data">
			<v-container fluid>
				<v-layout>
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
						<img :src="imageUrl" height="160">
					</v-flex>
				</v-layout>
				<h2> Student Details</h2>
				<v-layout row wrap>

					<v-flex xs12 sm6 md3 >
						<v-text-field
							v-model="firstname"
							:rules="[rules.required]"
							label="Name"
							type="text"
							placeholder="First"
							required
						>
						</v-text-field>
					</v-flex>

					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="middlename"
							type="text"
							placeholder="Middle"
						>
						</v-text-field>
					</v-flex>

					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="lastname"
							type="text"
							placeholder="Last"
						>
						</v-text-field>
					</v-flex>
				</v-layout>

				<!-- date of birth  -->
				<v-layout  wrap>
					<v-flex xs12 sm6 md3>
							<v-radio-group v-model="s_gender" label="Gender">
							<v-radio
								v-for="gender in genders"
								:key="gender.value"
								:label="gender.label"
								:value="gender.value"
							></v-radio>
						</v-radio-group>
					</v-flex>
					<v-flex xs12 sm6 md3>
						<v-menu
							ref="menu"
							v-model="dob"
							:close-on-content-click="false"
							:nudge-right="40"
							:return-value.sync="date"
							lazy
							transition="scale-transition"
							offset-y
							full-width
							min-width="290px"
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

					<!-- age -->
					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="age"
							type="text"
							label="Age"
							placeholder="Age"
						></v-text-field>
					</v-flex>
				</v-layout>

				<!-- email -->
				<v-layout row wrap >
					<v-flex xs12 sm12 md3>
						<v-text-field
							name="email"
							type="email"
							v-model="email"
							:rules="[rules.required,rules.emailValid]"
							label=" Email id"
							placeholder="Enter Email id"
							autocomplete="off"
							required
						></v-text-field>
					</v-flex>
					<!-- contact  -->
					<v-flex xs12 sm12 md3>
						<v-text-field
							v-model="contact"
							type="tel"
							label="Contact no"
						></v-text-field>
					</v-flex>
				</v-layout>
				<!-- religion nationality -->
				<v-layout row wrap>
					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="religion"
							label="Religion"
						></v-text-field>
					</v-flex>
					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="nationality"
							label="Nationality"
						></v-text-field>
					</v-flex>
				</v-layout>
				<!-- address   address pincode state-->
					<v-flex xs12 sm12 md9>
						<v-text-field
							name="streetaddress"
							type="text"
							v-model="street"
							label=" Address"
							placeholder="Street address"
							autocomplete="off"
						></v-text-field>
					</v-flex>
				<br>
				<v-layout row wrap>
					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="city"
							type="text"
							placeholder="City"
						></v-text-field>
					</v-flex>
					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="pincode"
							type="text"
							placeholder="Pin/zip code"
						> </v-text-field>
					</v-flex>
					<v-flex xs12 sm6 md3>
						<v-select
							v-if="nationality=='Indian' || nationality=='indian' || nationality=='INDIAN' || nationality=='India' || nationality=='india' || nationality=='INDIA'"
							v-model="s_state"
							:items="states"
							label="State"
							solo
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
						v-model="gfirstname"
						:rules="[rules.required]"
						label="Guardian Name"
						type="text"
						placeholder="First"
						required
					>
					</v-text-field>
					</v-flex>

					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="gmiddlename"
							type="text"
							placeholder="Middle"
						></v-text-field>
					</v-flex>

					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="glastname"
							type="text"
							placeholder="Last"
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
							v-model="gemail"
							:rules="[rules.required,rules.emailValid]"
							label=" Email id"
							placeholder="enter email id"
							autocomplete="off"
							required>
						</v-text-field>
					</v-flex>
					<br>
					<!-- contact  -->
					<v-flex xs12 sm12 md3>
						<v-text-field
							v-model="gcontact"
							type="tel"
							label="Contact no"
						></v-text-field>
					</v-flex>
				</v-layout>
						<!-- address   address pincode state-->
					<v-flex xs12 sm12 md9>
						<v-text-field
							name="streetaddress"
							type="text"
							v-model="gstreet"
							label="Address"
							placeholder="street address"
							autocomplete="off"
						></v-text-field>
					</v-flex>
				<v-layout row wrap>
					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="gcity"
							type="text"
							placeholder="city"
						></v-text-field>
					</v-flex>
					<v-flex xs12 sm6 md3>
						<v-text-field
							v-model="gpincode"
							type="text"
							placeholder="pin/zip code"
						> </v-text-field>
					</v-flex>
					<v-flex xs12 sm6 md3>
						<v-select
							v-if="nationality=='Indian' || nationality=='indian' || nationality=='INDIAN' || nationality=='India' || nationality=='india' || nationality=='INDIA'"
							v-model="g_state"
							:items="states"
							label="State"
							solo
						></v-select>
					</v-flex>
				</v-layout>
				<v-layout row>

				</v-layout>
				<h1>Class Details</h1>
				<v-layout row wrap>
					<v-flex xs12 sm12 md4>
						<v-select
							v-model="department"
							:items="departments"
							label="Department"
							required
							solo
						></v-select>
					</v-flex>
					<v-flex xs12 sm12 md4>
						<v-select
							v-model="stream"
							:items="streams"
							label="Streams"
							required
							solo
						></v-select>
					</v-flex>
					<v-flex xs12 sm12 md4>
						<v-select
							v-model="clas"
							:items="classes"
							label="Class"
							required
							solo
						></v-select>
					</v-flex>
				</v-layout>
				<v-spacer></v-spacer><br>
				<v-btn round @click.prevent="submitForm" color="success" light type="submit" form="addstudent-form" >Submit</v-btn>
				<v-btn  round color="primary" type="submit" form="addstudent-form"  @click="reset">Clear form</v-btn>
    		</v-container>
  		</v-form>

	</v-card>
</v-app>

</div>
</template>

<script>
// import axios from 'axios'
import { Promise } from 'q';
export default {
	props: {
		mode: {
			type: String
		},
		details: {
			type: Object
		}
	},
	data() {
		return{
			firstname:'',
			middlename:'',
			lastname:'',
			dob:'',
			age:'',
			email:'',
			contact:'',
			religion:'',
			nationality:'',
			street:'',
			city:'',
			pincode:'',
			date: new Date().toISOString().substr(0, 10),
			menu: false,
			image:null,
			imageUrl:'',
			gfirstname:'',
			gmiddlename:'',
			glastname:'',
			gemail:'',
			gcontact:null,
			gstreet:'',
			gcity:'',
			gpincode:'',
			s_state:'',
			g_state: '',
			states:['Arunachal Pradesh','Assam', 'Bihar', 'Chhattisgarh' ,'Goa', 'Gujarat', 'Haryana' ,
			'Himachal Pradesh', 'Jammu and Kashmir',
			'Jharkhand' ,'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra' ,'Manipur', 'Meghalaya ',
			'Mizoram', 'Nagaland', 'Odisha', 'Punjab','Rajasthan',
			'Sikkim', 'TamilNadu' ,'Telangana', 'Tripura', 'Uttar Pradesh', 'Uttarakhand',' West Bengal'
			],
			s_gender: '',
			genders: [
				{label: 'Male', value: 'M'},
				{label: 'Female',value: 'F'},
				{label: 'Others',value: 'O'}
			],
			department: '',
			departments:[],
			stream: '',
			streams: [],
			clas: '',
			classes:[],
			rules: {
				required: v => !!v || 'Required.',
				emailValid : v=> /.+@.+/.test(v) || 'E-mail must be valid'
			},

			user_details: {}
		}
	},
	methods:{
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
				this.imageUrl=fileReader.result
			})
			fileReader.readAsDataURL(files[0])
			this.image=files[0]
		},
		async submitForm() {
			const response = await this.$axios.post('/api/students/register',{
				s_fname: this.firstname,
				s_mname: this.middlename,
				s_surname: this.lastname,
				s_email: this.email,
				s_gender: this.s_gender,
				password: this.contact,
				s_contact: this.contact,
				s_dob: this.date,
				s_age: this.age,
				s_religion: this.religion,
				s_nationality: this.nationality,
				s_address: this.street,
				s_address_pin: this.pincode,
				s_address_state: this.s_state,
				guardian_fname: this.gfirstname,
				guardian_mname: this.gmiddlename,
				guardian_surname: this.glastname,
				guardian_email: this.gemail,
				guardian_contact: this.gcontact,
				guardian_address: this.gstreet,
				guardian_pin: this.gpincode,
				guardian_state: this.g_state,
				s_profile_picture: this.imageUrl,
				class_id: '123'
			})
		}
	},
	beforeUpdate() {
		if(this.mode=="edit")
		{
			this.firstname = this.details.s_fname
			this.middlename = this.details.s_mname
			this.lastname = this.details.s_surname
			this.email = this.details.s_email
			this.s_gender = this.details.s_gender
			this.contact = this.details.s_contact
			this.date = this.details.s_dob
			this.religion = this.details.s_religion
			this.nationality = this.details.s_nationality
			this.street = this.details.s_address
			this.pincode = this.details.s_address_pin
			this.s_state = this.details.s_address_state
			this.gfirstname = this.details.guardian_fname
			this.gmiddlename = this.details.guardian_mname
			this.glastname = this.details.guardian_surname
			this.gemail = this.details.guardian_email
			this.gcontact = this.details.guardian_contact
			this.gstreet = this.details.guardian_address
			this.gpincode = this.details.guardian_pin
			this.g_state = this.details.guardian_state
		}
	}
}
</script>


<style scoped>
</style>
