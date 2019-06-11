<template>
  	<div>
		<div class="text-xs-center">
			<v-chip small outline color="blue">
				<v-avatar class="teacher-color"> T </v-avatar>
				Teacher
				<v-spacer />
			</v-chip>
		</div>
		<br>
		<LoginForm id="teacher" />
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

<style lang="css" scoped>

</style>
