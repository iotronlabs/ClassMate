<template>
  <v-app id="inspire">
    <v-content>
      <v-container fluid fill-height>
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md8>
            <v-card class="elevation-12">
              <v-toolbar dark color="primary">
                <v-toolbar-title>Login form</v-toolbar-title>
              </v-toolbar>
              <v-card-text>
                <v-form>
                  <v-text-field 
				  	prepend-icon="person" 
					name="email" 
					type="email"
					v-model="email"
					:rules="[rules.required,rules.emailValid]"
					label="Email"
					required></v-text-field>
                  <v-text-field id="password" 
					prepend-icon="lock" 
					v-model="password"
					:append-icon="show ? 'visibility' : 'visibility_off'"
					:rules="[rules.required, rules.min]"
					:type="show ? 'text' : 'password'"
					name="input-10-1"
					label="Password"
					hint="At least 8 characters"
					counter
					@click:append="show = !show"></v-text-field>
                </v-form>
              </v-card-text>
              <v-card-actions>
                <v-spacer></v-spacer>
                <div class="text-xs-center">
					<v-btn round color="primary" dark>LogIn</v-btn>
					<v-btn round color="primary">SignUp</v-btn><br><br>Not Registered, Click Sign Up
				</div>
              </v-card-actions>
            </v-card>
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
  export default {
    props: {
      source: String
	},
	data() {
		return {
			// drawer: null,
			email: '',
			password: '',
			show: false,
			rules: {
				required: v => !!v || 'Required.',
				min: v => v.length >= 8 || 'Min 8 characters',
				emailValid : v=> /.+@.+/.test(v) || 'E-mail must be valid'
			}
		}
	}
  }
</script>