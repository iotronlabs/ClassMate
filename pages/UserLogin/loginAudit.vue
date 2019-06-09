<template>
  	<div>
		<div class="text-xs-center">
			<v-chip small outline color="#5614b0">
				<v-avatar id="audit"> Au </v-avatar>
				Audit
				<v-spacer />
			</v-chip>
		</div>
		<br>
		<LoginForm id="audit" />
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
#audit {
		background-image: linear-gradient(30deg, #5614b0 0%, #d04ed6 100%);
		color: aliceblue;
	}
</style>
