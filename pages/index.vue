<template>
	<div>
		<div class="text-xs-center">
			<v-chip small outline color="green">
				<v-avatar class="student-color"> S </v-avatar>
				Student
				<v-spacer />
			</v-chip>
		</div>
		<br>

		<LoginForm id="student" />
	</div>
</template>

<script>
import LoginForm from '@/components/LoginForm'
  export default {
	layout : 'LoginLayout',
	components: {
		LoginForm
	}
}
</script>

<style scoped>

</style>

