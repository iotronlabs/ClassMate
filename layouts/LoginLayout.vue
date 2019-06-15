<template>
	<v-app class="global-font">
		<v-content>
			<v-container fluid fill-height class="container-grad">
				<v-layout align-center justify-center>
				<v-flex xs12 sm8 md4>
					<v-card class="elevation-12 card-design">
						<v-toolbar class="login-grad">
							<center><img src="/classmate.png"></center>
						</v-toolbar>
						<v-card-text>
							

							<nuxt />

						</v-card-text>
						<br>
					</v-card>
				</v-flex>
				</v-layout>
			</v-container>
		</v-content>

		<v-footer class="footer">
			<v-layout>
				<v-flex>
					Made with <span class="heart">&hearts;</span> at
					<a href="http://www.iotronlabs.com" target="_blank" class="footer-link">Iotronlabs</a>
				</v-flex>
			</v-layout>
		</v-footer>
  	</v-app>

</template>

<script>
export default {

}
</script>

<style scoped>

.container-grad
{
	background-image: linear-gradient(to top,#4e54c8 0%, #8f94fb 100%);	
}
.login-grad
{
	background-image: linear-gradient(to right,#434343 0%, black 100%);
	border-radius: 0px 0px 15px 15px;
}

.v-toolbar {
	height: 60px;
}

.card-design {
	border-radius: 15px;
	
}
.toolbar-text {
	font-size: 1.5em;
	color: white;
}
img
{
	height: 30px;
	width: 25%;
	min-width: 100px;
}
.footer
{
	background-image: linear-gradient(to top,#4e54c8 0%, #8f94fb 100%);
	text-align: center;
	color: white;
	
}
.heart
{
	color: #e25555;
}
.footer-link
{
	text-decoration: none;
	color: #fff;
}
</style>
