<template>
    <!-- work in progress-->
    <!-- this page is for testing user profile component-->
    <div>
        <v-layout>
            <v-flex xs12 sm6 offset-sm3>
            <v-card>
                <v-avatar
                :size="50"
                color="grey lighten-4"
                >
                <img src="https://randomuser.me/api/portraits/men/85.jpg">
                
                </v-avatar>
                <h3 class="headline mb-0">John Leider</h3> 
                <br><br>
                <div class="text-xs-center">
                    <v-chip small outline color=" #087a49">
                        <v-avatar id="student"> S </v-avatar>
                            Student
                            <v-spacer />
                    </v-chip>
                    <v-chip color="primary" text-color="white">Subject</v-chip>
                </div>				
                

                
            </v-card>
            </v-flex>
        </v-layout>			
    </div>
    				
</template>

<style scoped>
     #student {
		background-image: linear-gradient(30deg, #087a49 0%, #3cba92 100%);
		color: aliceblue;
	}
</style>
