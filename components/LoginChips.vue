<template>
	<div class="text-xs-center">
		<v-chip small outline
			v-for="chip in chips"
			v-bind:key="chip.avatar"
			:selected="chip.selected"
		>
			<v-avatar :id="chip.id">{{ chip.avatar }}</v-avatar>
			{{ chip.title }}
			<v-spacer />
		</v-chip>
	</div>
</template>

<script>
export default {
	data() {
		return {
			chips: [
				{
					avatar : 'S',
					title: 'Student',
					selected: true,
					id: 'student'
				},
				{
					avatar: 'T',
					title: 'Teacher',
					selected: false,
					id: 'teacher'
				},
				{
					avatar: 'Ad',
					title: 'Admin',
					selected: false,
					id: 'admin'
				},
				{
					avatar: 'St',
					title: 'Staff',
					selected: false,
					id: 'staff'
				},
				{
					avatar: 'Au',
					title: 'Audit',
					selected: false,
					id: 'audit'
				}
			],
		}
	}
}
</script>

<style>
	#student {
		background-image: linear-gradient(30deg, #087a49 0%, #3cba92 100%);
		color: aliceblue;
	}
	#teacher {
		background-image: linear-gradient(30deg, #3D4E81 0%, #5753C9 48%, #6E7FF3 100%);
		color: aliceblue;
	}
	#admin {
		background-image: linear-gradient(30deg, #fa2912 0%, #fe51a7 100%);
		color: aliceblue;
	}
	#staff {
		background-image: linear-gradient(30deg, #f2994a 0%, #f2c94c 100%);
		color: aliceblue;
	}
	#audit {
		background-image: linear-gradient(30deg, #5614b0 0%, #d04ed6 100%);
		color: aliceblue;
	}
</style>
