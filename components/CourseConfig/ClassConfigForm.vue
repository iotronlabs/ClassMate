<template>
<v-app >
<v-card >
    <v-form ref="form" method="post" id="form" @submit.prevent="submitForm">
		<v-container fluid>
			<v-layout>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="class_name" label="Class Name"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-select v-model="stream" :items="streams" label="Assign Stream"></v-select>
				</v-flex>

				<v-flex xs12 sm6 md4>
					<v-text-field v-model="class_teacher" label="Class Teacher"></v-text-field>
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
						ref="menu1"
						v-model="start_date"
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
						label="Date of Birth"
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
						ref="menu2"
						v-model="end_date"
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
						label="Date of Birth"
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
			class_name: '',
			class_teacher: '',

			streams: ['streams1','streams2','streams3'],
			stream: '',


			editedIndex: -1,
			editedItem: {
				id: '1',
				name : '--',
				dob: '--',
				email: '--',
				contact: '--',
				stream: '--',
				section: '24'
			},
			date1: new Date().toISOString().substr(0, 10),
			date2: new Date().toISOString().substr(0, 10),
			menu1: false,
			menu2: false,
			start_date: '',
			end_date: ''
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
