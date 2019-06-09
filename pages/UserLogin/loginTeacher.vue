<template>
  	<div>
		<div class="text-xs-center">
			<v-chip small outline color="#5753C9">
				<v-avatar id="teacher-color"> T </v-avatar>
				Teacher
				<v-spacer />
			</v-chip>
		</div>
		<br>
		<LoginForm id="teacher-color" />
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
