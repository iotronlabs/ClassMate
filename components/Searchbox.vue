<template>
<div>
	<v-card color = "grey" class ="forum-content-card">
		<v-card-title>
			<v-text-field v-model="search" append-icon="search" label="Search" >
			</v-text-field>
			<v-spacer/>
			<div>
				Filter by
				<v-menu offset-y>
					<template v-slot:activator="{ on }">
						<v-btn v-on="on">
							Semester
						</v-btn>
					</template>
					<v-list>
						<v-list-tile  v-for="(item, index) in semester" :key="index" >
							<v-list-tile-title>{{ item.title }}</v-list-tile-title>
						</v-list-tile>
						</v-list>
				</v-menu>
			</div>
		</v-card-title>
	</v-card>
</div>
</template>

<script>
export default {
	data() {
		return {
			search: '',
			semester :
			[

				{ title: 'First' },
				{ title: 'Second' },
				{ title: 'Third' },
				{ title: 'Fourth' }
			]
		}
	}
}
</script>

<style scoped>
.forum-content-card
{
	margin-left : 2%;
	margin-right : 2%;
}

</style>
