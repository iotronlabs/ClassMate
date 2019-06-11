<template>
  <div>
		<div class="text-xs-center">
			<v-chip small outline color="red">
				<v-avatar class="admin-color"> A </v-avatar>
				Admin
				<v-spacer />
			</v-chip>
		</div>
		<br>
		<LoginForm id="admin" />
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
