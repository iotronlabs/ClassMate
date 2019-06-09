<template>
 	<div>
		<div class="text-xs-center">
				<v-chip small outline color="#f2c94c">
					<v-avatar id="staff"> St </v-avatar>
					Staff
					<v-spacer />
				</v-chip>
			</div>
		<br>
		<LoginForm id="staff" />
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
#staff {
	background-image: linear-gradient(30deg, #f2994a 0%, #f2c94c 100%);
	color: aliceblue;
}
</style>
