<template>
  <v-app id="inspire">
    <v-content>
      <v-container fluid fill-height class="container-grad">
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md7>
            <v-card class="elevation-12 card-design">
              	<v-toolbar class="login-grad">
									<span class="toolbar-text">Login form</span>
									<img src="/classmate.png">
										
									
								</v-toolbar>
				<v-card-text>
						<br>					
				  	<LoginChips />
						<br>

					<v-form @submit.prevent="checkLogin" id="login-form" class="login-form">
						<v-text-field 
							prepend-icon="person"
							name="email"
							type="email"
							v-model="email"
							:rules="[rules.required,rules.emailValid]"
							label="Enter your email id"
							required>
						</v-text-field>
						<v-text-field id="password"
							prepend-icon="lock"
							v-model="password"
							:append-icon="show ? 'visibility' : 'visibility_off'"
							:rules="[rules.required, rules.min]"
							:type="show ? 'text' : 'password'"
							name="password"
							label="Enter your password"
							hint="At least 8 characters"
							counter
							@click:append="show = !show">
						</v-text-field>
						<v-spacer></v-spacer><br>
						<div class="text-xs-center">
							<v-btn :disabled="disabled" round color="primary" type="submit" form="login-form">LogIn</v-btn>
							<v-btn round class="btn-login">SignUp</v-btn><br><br>Not Registered? Click Sign Up
						</div>
						{{message}}
					</v-form>
              </v-card-text>
            </v-card>
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
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
		checkLogin() {
			this.$router.push('/dashboard')
		}
	}
}
</script>

<style scoped>
	.container-grad {
		background-image: linear-gradient(to bottom,#4e54c8 0%, #8f94fb 100%);
	}
	.btn-login {
		background-image: linear-gradient(to bottom,#4e54c8 0%, #8f94fb 100%);
		color: aliceblue;
	}

	.login-grad {
		background-image: linear-gradient(to right,#434343 0%, black 100%);
	}
	img {
		height: 40%;
		width: 20%;	
		/* display: block; */
		margin-left: auto;	
		margin-right: auto;
	}
	.card-design {
		border-radius: 5px;
	}
	.toolbar-text {
		font-size: 1.5em;
		color: white;
	}
	.login-form {
		padding-left: 15%;
		padding-right: 15%;
	}
	
</style>
