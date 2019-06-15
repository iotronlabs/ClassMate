<template>
<div>
	<v-card>
		<v-card-text>
			<v-container grid-list-md>
				<v-form ref="form">
					<v-layout wrap>

						<v-flex xs12 sm6 md4>
							<v-text-field v-model="class_name" label="Class Name"></v-text-field>
						</v-flex>
						<v-flex xs12 sm6 md4>
							<v-select v-model="stream" :items="streams" label="Assign Stream"></v-select>
						</v-flex>

						<v-flex xs12 sm6 md4>
							<v-text-field v-model="teacher" label="Class Teacher"></v-text-field>
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

						<v-flex xs12 sm6 md3>
							<v-menu
								ref="menu1"
								v-model="menu1"
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
									v-model="start_date"
									label="Class Starting Date"
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

						<v-flex xs12 sm6 md3>
							<v-menu
								ref="menu2"
								v-model="menu2"
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
									v-model="end_date"
									label="Class Ending Date"
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
				</v-form>
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
			date: new Date().toISOString().substr(0, 10),
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
