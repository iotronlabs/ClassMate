<template>
<div>
	<v-card>
		<v-card-text>
			<v-container grid-list-md>
			<v-layout wrap>
				<v-flex xs12 sm6 md4>
					<v-select v-model="department" :items="departments" label="Assign Department"></v-select>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="dept_code" label="Department Code"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="dept_name" label="Department Name"></v-text-field>
				</v-flex>

				<v-flex xs12 sm6 md4>
					<v-select v-model="course_length" :items="course_lengths" label="Assign course length"></v-select>
				</v-flex>

				<v-flex xs12 sm6 md4>
					<v-text-field v-model="dept_code" label="Stream Code"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="dept_name" label="Stream Name"></v-text-field>
				</v-flex>



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
			</v-container>
		</v-card-text>

		<v-card-actions>
			<v-spacer></v-spacer>
			<v-btn color="blue darken-1" flat @click="close">Cancel</v-btn>
			<v-btn color="blue darken-1" flat @click="save">Save</v-btn>
		</v-card-actions>
	</v-card>
</div>
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
