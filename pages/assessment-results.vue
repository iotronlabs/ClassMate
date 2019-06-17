<template >
    <div class="global-font">
    <v-layout justify-left row wrap>
        <v-flex xs12 sm6 md6  >
            <v-card>
                <v-card-title>
                <span class="headline">Results information</span>
                </v-card-title>
                <v-divider></v-divider>
                <v-list>
                <v-list-tile @click="">
                    <v-list-tile-action>
                    <v-avatar>1</v-avatar>
                    </v-list-tile-action>

                    <v-list-tile-content>
                    <v-list-tile-title>Exam name</v-list-tile-title>
                    </v-list-tile-content>
                    
                    <v-list-tile-content>
                    <v-list-tile-title>Economics</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>

                <v-divider></v-divider>

                <v-list-tile @click="">
                    <v-list-tile-action>
                    <v-avatar>2</v-avatar>
                    </v-list-tile-action>

                    <v-list-tile-content>
                    <v-list-tile-title>Student name</v-list-tile-title>
                    </v-list-tile-content>
                    
                    <v-list-tile-content>
                    <v-list-tile-title>Anik Adhikary</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>

                <v-divider></v-divider>

                <v-list-tile @click="">
                    <v-list-tile-action>
                    <v-avatar>3</v-avatar>
                    </v-list-tile-action>

                    <v-list-tile-content>
                    <v-list-tile-title>Score</v-list-tile-title>
                    </v-list-tile-content>
                    
                    <v-list-tile-content>
                    <v-list-tile-title>50%</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>

                <v-divider></v-divider>

                <v-list-tile @click="">
                    <v-list-tile-action>
                    <v-avatar>4</v-avatar>
                    </v-list-tile-action>

                    <v-list-tile-content>
                    <v-list-tile-title>Next Re-take</v-list-tile-title>
                    </v-list-tile-content>
                    
                    <v-list-tile-content>
                    <v-list-tile-title>01/07/2019</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
                </v-list>            
            </v-card>
        
        </v-flex>
    <!-- </v-layout>
    <v-layout justify-right xs12 sm6 md6> -->
        <v-flex xs12 sm6 md5>
            
            <v-card>
                <v-card-title>
                <span class="headline">Status</span>
                </v-card-title>
                <v-divider></v-divider>
                <v-card-text> Well done! You have passed this examination. </v-card-text>         
            </v-card>
        </v-flex>
        

        
        
    </v-layout>
    
    </div>
</template>

<style lang="scss" scoped>
.v-card {
    padding: 20px;
    margin: 20px;
}
</style>
