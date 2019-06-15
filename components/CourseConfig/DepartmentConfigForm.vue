<template>
<v-app >
<v-card >
    <v-form ref="form" method="post" id="form" @submit.prevent="submitForm">
		<v-container fluid>
			<v-layout>
				<v-flex xs12 sm6 md4>
					<v-select v-model="department" :items="departments" label="Assign Department"></v-select>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="dept_code" label="Department Code"></v-text-field>
				</v-flex>
			</v-layout>
			<v-layout>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="dept_name" label="Department Name"></v-text-field>
				</v-flex>

				<v-flex xs12 sm6 md4>
					<v-select v-model="course_length" :items="course_lengths" label="Assign course length"></v-select>
				</v-flex>
			</v-layout>
			<v-layout>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="stream_code" label="Stream Code"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="stream_name" label="Stream Name"></v-text-field>
				</v-flex>

			</v-layout>
			<v-layout>

				<v-flex xs12 sm6 md4>
					<v-select
						v-model="subject"
						:items="subjects"
						:menu-props="{ maxHeight: '400' }"
						label="Assign subjects"
						multiple
						chips
					></v-select>
				</v-flex>
				<v-flex xs12 sm6 md4>

				</v-flex>
			</v-layout>
			<v-spacer></v-spacer><br>
      		<v-btn round color="success" light type="submit" form="login-form" >Submit</v-btn>
       		<v-btn  round color="primary" type="submit" form="login-form"  @click="reset">Clear form</v-btn>
    	</v-container>
 	</v-form>
</v-card>
</v-app>
</template>

<script>
 export default {
	data() {
		return {
			dept_code:'',
			dept_name: '',
			stream_name: '',
			stream_code: '',

			course_lengths:[
				'sub1','sub2'
			],
			course_length: '',

			departments: ['dept1','dept2','dept3'],
			department: '',

			subject: [],
			subjects: ['sub1','sub2','sub3'],

			editedIndex: -1,
			editedItem: {
				id: '1',
				name : '--',
				dob: '--',
				email: '--',
				contact: '--',
				stream: '--',
				section: '24'
			}
		}
	},
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

	methods: {
		reset () {
			this.$refs.form.reset()
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
	}
}
</script>

<style>

</style>
