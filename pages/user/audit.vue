<template>
  	<div>
		<div class="text-xs-center">
			<v-chip small outline color="#5614b0">
				<v-avatar id="audit-color"> Au </v-avatar>
				Audit
				<v-spacer />
			</v-chip>
		</div>
		<br>
		<LoginForm id="audit-color" />
	</div>
</template>

<script>
import LoginForm from '@/components/LoginForm'
export default {
	layout: 'LoginLayout',
	components : {
		LoginForm
	}
}

</script>

<style scoped>

</style>
