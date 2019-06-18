<template >
    <div class="global-font">
    <v-layout justify-left row wrap>
        <v-flex xs12 sm6 md6  >
            <v-card>
                <v-card-title>
                <span class="headline">Examination Properties</span>
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
                    <v-list-tile-title>MS Office Tools</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>

                <v-divider></v-divider>

                <v-list-tile @click="">
                    <v-list-tile-action>
                    <v-avatar>2</v-avatar>
                    </v-list-tile-action>

                    <v-list-tile-content>
                    <v-list-tile-title>Exam name</v-list-tile-title>
                    </v-list-tile-content>
                    
                    <v-list-tile-content>
                    <v-list-tile-title>MS Office Tools</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>

                <v-divider></v-divider>

                <v-list-tile @click="">
                    <v-list-tile-action>
                    <v-avatar>3</v-avatar>
                    </v-list-tile-action>

                    <v-list-tile-content>
                    <v-list-tile-title>Exam name</v-list-tile-title>
                    </v-list-tile-content>
                    
                    <v-list-tile-content>
                    <v-list-tile-title>MS Office Tools</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>

                <v-divider></v-divider>

                <v-list-tile @click="">
                    <v-list-tile-action>
                    <v-avatar>4</v-avatar>
                    </v-list-tile-action>

                    <v-list-tile-content>
                    <v-list-tile-title>Exam name</v-list-tile-title>
                    </v-list-tile-content>
                    
                    <v-list-tile-content>
                    <v-list-tile-title>MS Office Tools</v-list-tile-title>
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
                <span class="headline">Terms and conditons</span>
                </v-card-title>
                <v-divider></v-divider>
                
                    <v-checkbox
                        v-model="ex4"
                        label="I agree"
                        color="indigo"
                        value="indigo"
                        hide-details
                        >
                    </v-checkbox>
                    
            </v-card>
            <v-card>
                <v-card-title>
                <span class="headline">Take Assessment</span>
                </v-card-title>
                <v-divider></v-divider>
                <v-card-text> You are good to go</v-card-text>
                <v-btn color="blue">Retake Assessment</v-btn>
                    
                             
                    
               
            </v-card>
            <v-card>
                <v-card-title>
                <span class="headline">Assessment History</span>
                </v-card-title>
                <v-divider></v-divider>
                <v-card-text> You attend this exam on 06/14/2019 , your score was 0% </v-card-text>         
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
