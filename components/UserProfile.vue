<template>
    <!-- work in progress-->
    <!-- this page is for testing user profile component-->
    <div>
        <v-layout>
            <v-flex xs12 >
            <v-card class="user-profile">
                <center>
                <v-chip class="user-profile-avatar">
                <v-avatar
                :size="50"
                color="grey lighten-4"
                >
                <img src="https://randomuser.me/api/portraits/men/85.jpg">
                
                </v-avatar>
                <h3> John Leider</h3> 
                </v-chip> </center><br>
                <div class="text-xs-center">
                    <v-chip small outline color="#087a49">
                        <v-avatar id="student-color"> S </v-avatar>
                            Student 
                            <v-spacer />
                    </v-chip>
                    <v-chip small outline color="#4e54c8">
                        <v-avatar id="subject-color"> Sb </v-avatar>
                            Subject 
                            <v-spacer />
                    </v-chip>
                </div>				
                

                
            </v-card>
            </v-flex>
        </v-layout>			
    </div>
    				
</template>

<style scoped>
     #student-color {
		background-image: linear-gradient(30deg, #087a49 0%, #3cba92 100%);
		color: aliceblue;
	}
    #subject-color {
        background-color: #4e54c8;
        color: aliceblue;
        
    }
    .user-profile {
        padding-left: 15px;    
        padding-right: 15px;
        padding-top: 15px;
        padding-bottom: 15px;
    }
    .user-profile-avatar {
       
        width: 80%;
    }
	.v-avatar {
		height: 200%
	}
	
</style>
