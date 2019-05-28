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
			<v-list>
				<v-list-tile avatar tag="div">
					<v-list-tile-avatar>
						<img src="https://randomuser.me/api/portraits/men/85.jpg">
					</v-list-tile-avatar>

					<v-list-tile-content>
						<v-list-tile-title>John Leider</v-list-tile-title>
					</v-list-tile-content>

					<v-list-tile-action>
						<v-btn icon
							v-if="this.$vuetify.breakpoint.smAndDown == true"
							@click.stop="closeDrawerModel">
						<v-icon>chevron_left</v-icon>
						</v-btn>
					</v-list-tile-action>
				</v-list-tile>
				<hr>
				<v-list-tile
					v-for="(item, i) in items"
					:key="i"
					:to="item.to"
					router
					exact
				>
				<v-list-tile-action>
					<v-icon>{{ item.icon }}</v-icon>
				</v-list-tile-action>
				<v-list-tile-content>
					<v-list-tile-title v-text="item.title" />
				</v-list-tile-content>
				</v-list-tile>
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
			<v-toolbar-title>Vuetify</v-toolbar-title>
			<v-spacer />
			<v-btn
				icon
				@click.stop="rightDrawer = !rightDrawer"
			>
				<v-icon>menu</v-icon>
			</v-btn>
		</v-toolbar>

		<v-content>

		</v-content>

		<v-navigation-drawer
			v-model="rightDrawer"
			:right="right"
			temporary
			fixed>
			<v-list>
				<v-list-tile @click.native="right = !right">
				<v-list-tile-action>
					<v-icon light>compare_arrows</v-icon>
				</v-list-tile-action>
				<v-list-tile-title>Switch drawer (click me)</v-list-tile-title>
				</v-list-tile>
			</v-list>
		</v-navigation-drawer>
        <v-footer :inset="footer.inset" app>
        	<span class="px-3">&copy; {{ new Date().getFullYear() }}</span>
        </v-footer>
	</v-app>
</template>

<script>
export default {
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
      	items: [
			{
				icon: 'apps',
				title: 'Welcome',
				to: '/'
			},
			{
				title: 'Forum',
				to: '/'
			},
			{
				title: 'Exams',
				to: '/'
			},
			{
				title: 'Calender',
				path: '/'
			},
			{
				title: 'Fees',
				path: '/'
			},
			{
				title: 'Help desk',
				path: '/'
			}
		],
		right: true,
		rightDrawer: false,
		fixed: false
	}),
	computed: {
		switchLabel() {
			console.log(this.dark)
			if(this.dark == true)
			{
				return 'Light'
			}
			else
			{
				return 'Dark'
			}
		},
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
