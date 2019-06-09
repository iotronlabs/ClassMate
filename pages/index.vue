<template>
	<div>
		<div class="text-xs-center">
			<v-chip small outline color="#087a49">
				<v-avatar id="student"> S </v-avatar>
				Student
				<v-spacer />
			</v-chip>
		</div>
		<br>

		<LoginForm id="student" />
	</div>
</template>

<script>
import LoginChips from '@/components/LogInChips'
import LoginForm from '@/components/LoginForm'
  export default {
	layout : 'LoginLayout',
	components: {
		LoginChips,
		LoginForm
	}
}
</script>

<style scoped>
#student
{
	background-image: linear-gradient(30deg, #087a49 0%, #3cba92 100%);
	color: aliceblue;
}
</style>

