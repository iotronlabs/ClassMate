<template>
	<div class="text-xs-center">
		<v-chip small outline
			v-for="chip in chips"
			v-bind:key="chip.avatar"
			:selected="chip.selected"
		>
			<v-avatar class="blue">{{ chip.avatar }}</v-avatar>
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
					selected: true
				},
				{
					avatar: 'T',
					title: 'Teacher',
					selected: false
				},
				{
					avatar: 'Ad',
					title: 'Admin',
					selected: false
				},
				{
					avatar: 'St',
					title: 'Staff',
					selected: false
				},
				{
					avatar: 'Au',
					title: 'Audit',
					selected: false
				}
			],
		}
	}
}
</script>

<style>

</style>
