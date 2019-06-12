<template>
<v-content class="global-font">
	<v-container grid-list-xl>
		<v-layout wrap justify-start>
			<v-flex d-flex xs12 sm12 md12>
	        	<v-card >
					<v-card-text>
						<v-breadcrumbs :items="items">
							<template v-slot:item="props">
								<nuxt-link :to="{name : props.item.to}">
									<span @click="clickedMenu(props.item.text)">{{ props.item.text.toUpperCase() }}</span>
								</nuxt-link>
							</template>
							<template v-slot:divider>
								<v-icon>chevron_right</v-icon>
							</template>
						</v-breadcrumbs>
						<v-subheader class="forum-heading">
							<span v-if="breadcrumbs.subject.active">Analog Electronics</span>
							<span v-else-if="breadcrumbs.stream.active">Electronics and Telecommunication</span>
							<span v-else-if="breadcrumbs.forum.active">School of Electronics Engineering</span>
							<v-spacer />
							<v-btn>Subscribe</v-btn>
						</v-subheader>
					</v-card-text>
					<v-layout row wrap>
						<v-flex xs10 sm10 md8 lg8>
								<div v-if="breadcrumbs.subject.active"><Forum3 /></div>
								<div v-else-if="breadcrumbs.stream.active"><Forum2 /></div>
								<div v-else-if="breadcrumbs.forum.active"><Forum1 /></div>
						</v-flex>
						<v-flex xs10 sm10 md4 lg4>
							<v-card  class ="forum-right-container">
								<center>
									<div>
										Lorem ipsum
									</div>
								</center>
							</v-card>
						</v-flex>
					</v-layout>
           		</v-card>
           	</v-flex>
    	</v-layout>
	</v-container>
</v-content>
</template>

<script>
import { mapState } from 'vuex'
import { mapActions } from 'vuex'

import Forum1 from '@/components/DashboardForum/ForumScreen1'
import Forum2 from '@/components/DashboardForum/ForumScreen2'
import Forum3 from '@/components/DashboardForum/ForumScreen3'

export default {
	components: {
		Forum1,
		Forum2,
		Forum3
	},
	layout: 'DashboardNavigationLayout',
	data: () => ({
		items:[
			{
				text: 'Dashboard',
				disabled: false,
				to: 'dashboard'
			},
			{
				text: 'Forum',
				disabled: false,
				to: 'forum',
			}
		]
	}),
	computed: {
		...mapState({
			breadcrumbs : state => state.forum.breadcrumbs
		})
	},
	methods: {
		...mapActions('forum',['getActiveForumMenu']),
		clickedMenu(menu) {
			if(menu!='dashboard')
			{
				this.getActiveForumMenu(menu)

			}
		}
	},
	beforeUpdate() {
		if(this.breadcrumbs.subject.active)
		{
			if(!this.items.find(item => item.text === 'Subject'))
			{
				this.items.push({
					text: 'Subject',
					disabled: false
				})
			}
		}
		else if(this.breadcrumbs.stream.active)
		{
			if(!this.items.find(item => item.text==='Stream'))
			{
					this.items.push({
					text: 'Stream',
					disabled: false
				})
			}
			if(this.items.find(item => item.text === 'Subject'))
			{
				this.items.pop()
			}
		}
		else if(this.breadcrumbs.forum.active)
		{
			if(this.items.find(item => item.text==='Stream'))
			{
				this.items.pop()
			}
		}
	}
}
</script>

<style scoped>
.forum-heading
{
	font-weight : bold;
	text-transform: uppercase;
	font-size : 25px;
	color: white;
}
.forum-right-container
{
	background-color: grey;
	margin-right : 5%;
}
</style>
