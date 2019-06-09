<template>
	<v-app :dark="dark">
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
			<UserProfile />
			<v-list>
				<v-list-tile avatar tag="div">
					<!-- <v-list-tile-avatar>
						<img src="https://randomuser.me/api/portraits/men/85.jpg">
					</v-list-tile-avatar>

					<v-list-tile-content>
						<v-list-tile-title>John Leider</v-list-tile-title>
					</v-list-tile-content> -->
					

					<v-list-tile-action>
						<v-btn icon
							v-if="this.$vuetify.breakpoint.smAndDown == true"
							@click.stop="closeDrawerModel">
						<v-icon>chevron_left</v-icon>
						</v-btn>
					</v-list-tile-action>
				</v-list-tile>
				<hr>
				<v-list-group
					v-for="(item, i) in selectItems"
					:key="i"
					:to="item.to"
					router
					exact
				>

					<template v-slot:activator >
						<v-list-tile>
							<v-list-tile-action>
								<v-icon>{{ item.icon }}</v-icon>
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
								<v-spacer />
								<v-list  class="menu-sublist">
									<v-list-tile>
										{{ subItem.title }}
									</v-list-tile>
								</v-list>
							</v-list-tile-content>
						</v-list-tile>
				</v-list-group>
			</v-list>
			<v-list align-end justify-start class="dark-switch">
				<v-list-tile>
					<v-flex>
						<v-switch v-model="dark" primary color="indigo" :label="switchLabel"></v-switch>
					</v-flex>
				</v-list-tile>
			</v-list>
		</v-navigation-drawer>
		<v-toolbar :clipped-left="primaryDrawer.clipped" app absolute>
			<v-toolbar-side-icon
				v-if="primaryDrawer.type !== 'permanent' && this.$vuetify.breakpoint.smAndDown == true"
				@click.stop="primaryDrawer.model = !primaryDrawer.model"
			></v-toolbar-side-icon>
			<v-toolbar-title>Classmate</v-toolbar-title>
			<v-spacer />
			<!-- <v-btn
				icon
				@click.stop="rightDrawer = !rightDrawer"
			>
				<v-icon>menu</v-icon>
			</v-btn> -->
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
				return 'Light'
			}
			else
			{
				return 'Dark'
			}
		}
	},
	methods: {
		closeDrawerModel() {
			this.primaryDrawer.type='default (no property)'
			this.primaryDrawer.model = !this.primaryDrawer.model
		}
	},
	created() {
		if(this.$vuetify.breakpoint.mdAndUp === true)
		{
			this.primaryDrawer.type='permanent'
		}
		else
		{
			this.primaryDrawer.type='default (no property)'
		}
	}
}
</script>

<style scoped>
.menu-sublist
{
	margin-left: 20%;
}
</style>
