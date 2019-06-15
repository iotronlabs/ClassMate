<template>
<v-app >
<v-card >
    <v-form ref="form" method="post" id="form" @submit.prevent="submitForm">
		<v-container fluid>
			<v-layout>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="code" label="Code"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="name" label="Subject"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
        			<v-select
						v-model="teacher"
						:items="teachers"
						:menu-props="{ maxHeight: '400' }"
						label="Select Teacher"
						multiple
					></v-select>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<!-- <v-combobox
						v-model="topic"
						:items="topics"
						label="Enter the topics"
						multiple
						chips
					></v-combobox> -->

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
			code:'',
			name: '',

			topics:[
				'sub1','sub2'
			],
			topic: [],

			teachers: ['teacher1','teacher 2','teacher3'],
			teacher: [],


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
