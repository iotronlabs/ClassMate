<template>
	<v-app id="inspire">
        <v-content>
        	<v-container fluid>
                <v-layout align-center justify-center>
                	<v-flex xs12>
                		
                	</v-flex>
                </v-layout>
        	</v-container>
        </v-content>
        <v-footer :inset="footer.inset" app>
        	<span class="px-3">&copy; {{ new Date().getFullYear() }}</span>
        </v-footer>
	</v-app>
</template>

<script>
export default {
	layout: 'NavigationLayout',
    data: () => ({
		dark: true,
		drawers: ['Default (no property)', 'Permanent', 'Temporary'],
		primaryDrawer: {
		model: null,
		type: 'default (no property)',
		clipped: false,
		floating: false,
		mini: false
	},
		footer: {
			inset: true
      	}
    })
}
</script>

<style>

</style>
