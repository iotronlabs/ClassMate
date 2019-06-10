<template>
	<v-form @submit.prevent="checkLogin" id="login-form" class="login-form" method="post">
		<v-text-field
			prepend-icon="person"
			label="Email ID"
			placeholder=" "
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
			placeholder=" "
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
</template>

<script>
import { mapActions } from 'vuex'
export default {
	name: 'LogInForm',
	props : {
		id: String
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
			message: '',
			url : ''
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
	created() {
		// console.log(this.id)
		if(this.id == 'student')
		{
			this.url = '/api/students/login'
		}
		else if(this.id == 'teacher')
		{
			this.url='/api/teachers/login'
		}
		else if(this.id == 'staff')
		{
			this.url='/api/staffs/login'
		}
		else if(this.id == 'admin')
		{
			this.url='/api/admins/login'
		}
	},
	methods: {
		...mapActions('dashboard',['getActiveUser']),
		async checkLogin() {
			await this.getActiveUser(this.id)
			const response = await this.$axios.post(this.url,{
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
.login-form {
	padding-left: 15%;
	padding-right: 15%;
}
.btn-login {
	background-image: linear-gradient(to top,#4e54c8 0%, #8f94fb 100%);
	color: aliceblue;
}
</style>
