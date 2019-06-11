<template>
<div>
	<v-container grid-list-xl>
		<v-layout wrap justify-start>
			<v-flex d-flex xs12 sm12 md12>
	        	<v-card >
					<v-card-text>
						<v-breadcrumbs :items="items">
							<template v-slot:divider>
								<v-icon>chevron_right</v-icon>
							</template>
						</v-breadcrumbs>
						<v-subheader class="forum-heading">School of Electronic Engineering
							<v-spacer />
							<v-btn>Subscribe</v-btn>
						</v-subheader>
					</v-card-text>
					<v-layout row wrap>
						<v-flex xs12 sm12 md8 lg8>
								<Forum1 />
								<Forum2 />
								<Forum3 />
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
				href: '/'
			},
			{
				text: 'Forum',
				disabled: false,
				href: '/'
			}
		]
	})
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
