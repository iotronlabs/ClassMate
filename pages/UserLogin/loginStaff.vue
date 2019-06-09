<template>
 	<div>
		<div class="text-xs-center">
				<v-chip small outline color="#f2c94c">
					<v-avatar id="staff-color"> St </v-avatar>
					Staff
					<v-spacer />
				</v-chip>
			</div>
		<br>
		<LoginForm id="staff-color" />
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
