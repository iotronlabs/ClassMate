<template>
	<div>
		<v-card v-if="hidden==false">
			<v-card-title>
				Tags<v-spacer />
				<v-btn icon @click.prevent="hideTag"><v-icon>close</v-icon></v-btn>
			</v-card-title>
			<hr>
			<v-card-text>
				<v-list one-line>
					<v-subheader>DAILY</v-subheader>
					<v-list-tile>
						<v-list-tile-avatar><v-icon small>done</v-icon></v-list-tile-avatar>
						<v-list-tile-content>Home</v-list-tile-content>
						<v-list-tile-action><v-icon small>apps</v-icon></v-list-tile-action>
					</v-list-tile>
				</v-list>
				<!-- <v-sheet height="200" width="250">
					<v-calendar
						ref="calendar"
						v-model="start"
						type="month"
						color="secondary"
						height="200"
						widht="250"
					></v-calendar>
				</v-sheet> -->
			</v-card-text>
			<v-card-actions>

			</v-card-actions>
		</v-card>
	</div>
</template>

<script>
export default {
	data() {
		hidden: false
	},
	methods: {
		hideTag() {
			this.hidden=true
		}
	}
}
</script>

<style>

</style>
