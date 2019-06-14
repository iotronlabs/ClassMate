<template>
<div>
	<!-- <v-card>
		<v-card-text>
			<v-container grid-list-md>
			<v-layout wrap>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="editedItem.name" label="Serial No"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="editedItem.code" label="Code"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="editedItem.subject" label="Subject"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-select :items="items" v-model="editedItem.teacher" label="teacher" solo full-width flat> </v-select>

				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-text-field v-model="editedItem.stream" label="Stream"></v-text-field>
				</v-flex>
				<v-flex xs12 sm6 md4>
					<v-dialog mv-model="dialog" width="500" >
						<template v-slot:activator="{ on }" >
						<v-btn  v-on="on" >
							Topics
						</v-btn>
						</template>

						<v-card>
						<v-card-actions>
							<v-spacer></v-spacer>
							<v-btn color="primary" flat @click="dialog = false">
								<v-icon>close</v-icon>
							</v-btn>
						</v-card-actions>
						<v-card-text>
							<v-chip>topic</v-chip>
							<v-chip>topic</v-chip>
							<v-chip>topic</v-chip>
							<v-chip>topic</v-chip>
						</v-card-text>
						</v-card>
					</v-dialog>
				</v-flex>
			</v-layout>
			</v-container>
		</v-card-text>

		<v-card-actions>
			<v-spacer></v-spacer>
			<v-btn color="blue darken-1" flat @click="close">Cancel</v-btn>
			<v-btn color="blue darken-1" flat @click="save">Save</v-btn>
		</v-card-actions>
	</v-card> -->
</div>
</template>

<script>
 export default {
// 	data() {
// 		return {
// 			editedIndex: -1,
// 			editedItem: {
// 				id: '1',
// 				name : '--',
// 				dob: '--',
// 				email: '--',
// 				contact: '--',
// 				stream: '--',
// 				section: '24'
// 			}
// 		}
// 	},
// 	computed: {
// 		formTitle () {
// 			return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
// 		}
// 	},

//  	 watch: {
// 		dialog (val) {
// 			val || this.close()
// 		}
//  	},

// 	methods: {
// 		editItem (item) {
// 			this.editedIndex = this.Serial_No.indexOf(item)
// 			this.editedItem = Object.assign({}, item)
// 			this.dialog = true
// 		},

// 		deleteItem (item) {
// 			const index = this.Serial_No.indexOf(item)
// 			confirm('Are you sure you want to delete this item?') && this.Serial_No.splice(index, 1)
// 		},

// 		close () {
// 			this.dialog = false
// 			setTimeout(() => {
// 				this.editedItem = Object.assign({}, this.defaultItem)
// 				this.editedIndex = -1
// 			}, 300)
// 		},

// 		save () {
// 			if (this.editedIndex > -1) {
// 				Object.assign(this.Serial_No[this.editedIndex], this.editedItem)
// 			} else {
// 				this.Serial_No.push(this.editedItem)
// 			}
// 			this.close()
// 		},
// 		next () {
// 			const active = parseInt(this.active)
// 			this.active = (active < 2 ? active + 1 : 0)
// 		}
// 	}
}
</script>

<style>

</style>
