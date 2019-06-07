<template>
  <v-app id="inspire">
    <v-content>
      <v-container fluid fill-height class="container-grad">
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md7>
            <v-card class="elevation-12 card-design">
              	<v-toolbar class="login-grad">
					<center><img src="/classmate.png"></center>
				</v-toolbar>
				<v-card-text>
					<br>
				  	<div class="text-xs-center">
							<v-chip small outline color="#fa2912">
								<v-avatar id="admin"> A </v-avatar>
								Admin
								<v-spacer />
							</v-chip>
						</div>
					<br>
					<v-form @submit.prevent="checkLogin" id="login-form" class="login-form" method="post">
						<v-text-field
							prepend-icon="person"
							label="EmailId"
							placeholder="Enter your EmailId"
							name="email"
							type="email"
							v-model="email"
							:rules="[rules.required,rules.emailValid]"
							autocomplete="off"
							required>
						</v-text-field>
						<v-text-field id="password"
							prepend-icon="lock"
							v-model="password"
							:append-icon="show ? 'visibility' : 'visibility_off'"
							:rules="[rules.required, rules.min]"
							:type="show ? 'text' : 'password'"
							name="password"
							label="Password"
							placeholder="Enter your password"
							hint="At least 8 characters"
							counter
							autocomplete="off"
							@click:append="show = !show">
						</v-text-field>
						<v-checkbox
							v-model="checkbox"
							label="Remember Me"
						></v-checkbox>
						<v-spacer></v-spacer>
						<div class="text-xs-center">
							<v-btn
								:disabled="disabled"
								round
								type="submit"
								form="login-form"
								:class="disabled ? '' : button"
							>LogIn</v-btn>
							<v-btn :disabled=true round>SignUp</v-btn>
						</div>
						{{message}}
					</v-form>
              </v-card-text>
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
import { Promise } from 'q';
import LoginChips from '@/components/LogInChips'
  export default {
    props: {
      source: String
	},
	components: {
		LoginChips
	},
	data() {
		return {
			email: '',
			password: '',
			show: false,
			rules: {
				required: v => !!v || 'Required.',
				min: v => v.length >= 8 || 'Min 8 characters',
				emailValid : v=> /.+@.+/.test(v) || 'E-mail must be valid'
			},
			checkbox: false,
			button: 'btn-login',
			message: ''
		}
	},
	computed: {
		disabled() {
			if(this.email.length==0 || this.password.length<8 || this.email==/.+@.+/.test(this.email))
			{
				return true
			}
			else
			{
				return false
			}
		}
	},
	methods: {
		async checkLogin() {
			const response = await this.$axios.post('/public/api/auth/login',{
				email: this.email,
				password: this.password
			})
			if(response.data.success == true)
			{
				this.$router.push('/dashboard')
			}
			else
			{
				this.message = response.data.message
			}
			// this.message = response.data.data
			// this.$router.push('/dashboard')
		}
	}
}
</script>

<style lang="css" scoped>
	@import url('https://fonts.googleapis.com/css?family=Fira Sans');
	.container-grad {
		background-image: linear-gradient(to top,#4e54c8 0%, #8f94fb 100%);
		font-family: 'Fira Sans';
	}
	#admin {
		background-image: linear-gradient(30deg, #fa2912 0%, #fe51a7 100%);
		color: aliceblue;
	}
	.btn-login {
		background-image: linear-gradient(to top,#4e54c8 0%, #8f94fb 100%);
		color: aliceblue;
	}

	.login-grad {
		background-image: linear-gradient(to right,#434343 0%, black 100%);
		border-radius: 0px 0px 15px 15px;
	}
	img {
		height: 40%;
		width: 20%;
		/* display: block; */
		margin-left: auto;
		margin-right: auto;
	}
	.card-design {
		border-radius: 15px;
	}
	.toolbar-text {
		font-size: 1.5em;
		color: white;
	}
	.login-form {
		padding-left: 15%;
		padding-right: 15%;
	}
	.footer
	{
		background-image: linear-gradient(to top,#4e54c8 0%, #8f94fb 100%);
		text-align: center;
		color: white;
		font-family: 'Fira Sans'
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
