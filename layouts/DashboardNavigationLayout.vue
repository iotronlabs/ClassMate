<template>
	<v-app :dark="dark" class="global-font">
		<v-navigation-drawer
			v-model="primaryDrawer.model"
			:permanent="primaryDrawer.type === 'permanent'"
			:clipped="primaryDrawer.clipped"
			:floating="primaryDrawer.floating"
			:mini-variant="primaryDrawer.mini"
			absolute
			overflow
			app
		>

			<v-list>
				<div>
					<v-layout row>
						<v-flex xs10 sm10 md10 lg10>
							<UserProfile />
						</v-flex>
						<!-- <v-flex xs2 sm2 lg2 md2>
							<v-list>
								<v-list-tile-action>
									<v-btn icon
										@click.stop="closeDrawerModel">
									<v-icon>chevron_left</v-icon>
									</v-btn>
								</v-list-tile-action>
							</v-list>
						</v-flex> -->
					</v-layout>
				</div>
				<hr>
				<v-list-group
					class="tile"
					v-for="(item, i) in selectItems"
					:key="i"
					:to="item.to"
					router
					exact
				>

					<template v-slot:activator >
						<v-list-tile >
							<v-list-tile-action>
								<!-- <v-icon>{{ item.icon }}</v-icon> -->
								<font-awesome-icon :icon="[item.icon.prefix, item.icon.name]"/>
							</v-list-tile-action>
							<v-list-tile-content>
								<v-list-tile-title>{{ item.title }}</v-list-tile-title>
							</v-list-tile-content>
						</v-list-tile>
					</template>

						<v-list-tile

							v-for="subItem in item.items"
							:key="subItem.title"
						>

							<v-list-tile-content>

								<v-list  class="menu-sublist">
									<v-list-tile>
										{{ subItem.title }}
									</v-list-tile>
								</v-list>
							</v-list-tile-content>

						</v-list-tile>

				</v-list-group>
			</v-list>
			<!-- <v-list align-end justify-start class="dark-switch">
				<v-list-tile>
					<v-flex>
						<v-switch v-model="dark" primary color="indigo" :label="switchLabel"></v-switch>
					</v-flex>
				</v-list-tile>
			</v-list> -->
		</v-navigation-drawer>
		<v-toolbar :clipped-left="primaryDrawer.clipped" app absolute>
			<v-toolbar-side-icon
				@click.stop="primaryDrawer.model = !primaryDrawer.model"
			></v-toolbar-side-icon>
			<v-toolbar-title>Classmate</v-toolbar-title>
			<v-spacer />

			<span class="toolbar-icons">
			<v-menu offset-y>
			<template v-slot:activator="{ on }">
				<v-badge
			overlap
			color="orange"
			>
				<template v-slot:badge>
					<span class="badge-text">2</span>
				</template>
				<font-awesome-icon v-on="on" :icon="['far', 'bell']" size="2x"/>
			</v-badge>

			</template>
			<v-list>
				<v-list-tile>
					<v-list-tile-title>Notification 1</v-list-tile-title>
				</v-list-tile>
				<v-list-tile>
					<v-list-tile-title>Notification 2</v-list-tile-title>
				</v-list-tile>
				<v-list-tile>
					<v-list-tile-title>Notification 3</v-list-tile-title>
				</v-list-tile>
				<v-list-tile>
					<v-list-tile-title>Notification 4</v-list-tile-title>
				</v-list-tile>
			</v-list>
			</v-menu>
			</span>

			<v-menu offset-y>
				<template v-slot:activator="{ on }">
				<v-toolbar-title v-on="on">
					<span class="toolbar-icons"><v-btn icon><font-awesome-icon :icon="['fas', 'cog']" size="2x"/></v-btn></span>
				</v-toolbar-title>
				</template>

				<v-list>
				<v-list-tile
				>
					<v-list-tile-action><v-switch v-model="dark" primary color="indigo" :label="switchLabel"></v-switch></v-list-tile-action>


				</v-list-tile>
				<v-list-tile
				>
					<v-list-tile-action><font-awesome-icon :icon="['fas', 'sign-out-alt']"/></v-list-tile-action>
					<v-btn flat @click="userLogout"><v-list-tile-title >Logout</v-list-tile-title></v-btn>
				</v-list-tile>
				</v-list>
     		</v-menu>

		</v-toolbar>


		<nuxt />


        <v-footer :inset="footer.inset" app>
        	<span class="px-3">&copy; {{ new Date().getFullYear() }}</span>
        </v-footer>
	</v-app>
</template>

<script>
import {mapState} from 'vuex'
import UserProfile from '@/components/UserProfile.vue'

export default {
	name: 'DashboardNavigationLayout',
	components: {
		UserProfile
	},
    data: () => ({
		dark: true,
		primaryDrawer: {
			model: null,
			type: 'default (no property)',
			clipped: false,
			floating: true,
			mini: false
		},
		footer: {
			inset: false
		},
		right: true,
		rightDrawer: false,
		fixed: false
	}),
	computed: {
		...mapState({
			studentItems : state => state.dashboard.studentItems,
			teacherItems : state => state.dashboard.teacherItems,
			staffItems : state => state.dashboard.staffItems,
			adminItems : state => state.dashboard.adminItems,
			auditItems : state => state.dashboard.auditItems
		}),
		selectItems() {
			if(this.studentItems.active==true)
			{
				return this.studentItems.items
			}
			else if(this.teacherItems.active==true)
			{
				return this.teacherItems.items
			}
			else if(this.staffItems.active==true)
			{
				return this.staffItems.items
			}
			else if(this.adminItems.active==true)
			{
				return this.adminItems.items
			}
			else if(this.auditItems.active==true)
			{
				return this.auditItems.items
			}
		},
		switchLabel() {
			if(this.dark == true)
			{
				return 'Light Mode'
			}
			else
			{
				return 'Dark Mode'
			}
		}
	},
	methods: {
		closeDrawerModel() {
			this.primaryDrawer.model = !this.primaryDrawer.model
		},
		async userLogout() {
			await this.$auth.logout()
			.then(() => this.$toast.success('Thank You. You are successfully logged out', {icon: "done"}))
			.catch(e => {
				this.$toast.error('Failed Logging Out. Please try again', {icon: "error_outline"});
			});
			console.log(this.$auth.loggedIn)
		}
	},
	created() {
		this.primaryDrawer.model = false
	}
}
</script>


<style lang="scss" scoped >
@import '~/assets/scss/_variables.scss';

.menu-sublist
{
	margin-left: 20%;
}

.tile:hover {
	background: $primary-gradient;
	color: aliceblue;
}
.tile:active {
	background: $primary-gradient;
	color: aliceblue;
}
.subtile {
	background-color: aliceblue;
	color: blue;
}
// .subtile:active {
// 	background: aliceblue;
// 	color: $primary-gradient;
// }
.toolbar-icons {
	margin: 5px;
}
.badge-text {
	font-size: 10px;
}
</style>
