<template>
  <div>
		<div class="text-xs-center">
			<v-chip small outline color="#fa2912">
				<v-avatar id="admin"> A </v-avatar>
				Admin
				<v-spacer />
			</v-chip>
		</div>
		<br>
		<LoginForm id="admin" />
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

<style lang="css" scoped>
#admin {
	background-image: linear-gradient(30deg, #fa2912 0%, #fe51a7 100%);
	color: aliceblue;
}
</style>
