<template>
  	<div>
		<div class="text-xs-center">
			<v-chip small outline color="#5753C9">
				<v-avatar id="teacher"> T </v-avatar>
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
#teacher {
	background-image: linear-gradient(30deg, #3D4E81 0%, #5753C9 48%, #6E7FF3 100%);
	color: aliceblue;
}
</style>
