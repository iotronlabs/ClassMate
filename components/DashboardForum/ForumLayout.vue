<template>
<div>
	<v-container grid-list-xl>
		<v-layout wrap justify-start>
			<v-flex d-flex xs12 sm12 md12>
	        	<v-card >
					<v-card-text>
						<v-breadcrumbs :items="items">
							<template v-slot:item="props">
								<a @click.stop="getActiveForumMenu(props.item.text)">{{ props.item.text.toUpperCase() }}</a>
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
						<v-flex xs12 sm12 md8 lg8>
								<div v-if="breadcrumbs.subject.active"><Forum3 /></div>
								<div v-else-if="breadcrumbs.stream.active"><Forum2 /></div>
								<div v-else-if="breadcrumbs.forum.active"><Forum1 /></div>
						</v-flex>
						<v-flex xs12 sm12 md4 lg4>
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
</div>
</template>

<script>
import { mapState } from 'vuex'
import { mapActions } from 'vuex'

import Forum1 from './ForumScreen1'
import Forum2 from './ForumScreen2'
import Forum3 from './ForumScreen3'

export default {
	components: {
		Forum1,
		Forum2,
		Forum3
	},
	data: () => ({
		items:[
			{
				text: 'Dashboard',
				disabled: false,
				href: '/dashboard'
			},
			{
				text: 'Forum',
				disabled: false,
			}
		]
	}),
	computed: {
		...mapState({
			breadcrumbs : state => state.forum.breadcrumbs
		})
	},
	methods: {
		...mapActions('forum',['getActiveForumMenu'])
	},
	mounted() {
		if(this.breadcrumbs.stream.active)
		{
			this.items.push({
				text: 'Stream',
				disabled: false
			})
		}
		if(this.breadcrumbs.subject.active)
		{
			this.items.push({
				text: 'Subject'
			})
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
