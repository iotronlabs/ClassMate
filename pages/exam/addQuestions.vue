<template>
<div >
  <v-content class = "global-font">
  <v-container fluid>

    <v-tabs v-model="active" color="cyan" dark slider-color="yellow" >
          <v-tab v-for="head in heading" :key="head" ripple >
              {{head}}

          </v-tab>
          <v-tab-item v-for="n in 2" :key="n" >

            <v-card class = "card-content">

              <v-subheader> Exam Name</v-subheader>
               <v-layout wrap align-center>

                   <v-flex xs12 sm6 md9 d-flex>
                       <v-select :items="items" label="---Select exam---" solo outline  >
                       </v-select>
                    </v-flex>
              </v-layout>
              <v-subheader large > Question</v-subheader>
              <v-layout  wrap v-if = "n==2">
                  <v-flex xs12 sm6 md9 d-flex>
                    <v-text-field label="Enter Question" solo outline ></v-text-field>
                  </v-flex>
              </v-layout>
              <v-layout  wrap v-if = "n==1">
                  <v-flex xs12 sm6 md9 d-flex>
                    <v-text-field label="Enter Question" solo outline ></v-text-field>
                  </v-flex>
                   <v-flex xs12 sm6 md9 >
             <br>
              <h3>Option1</h3><br>
             <v-text-field
             v-model="a"
              type="text"
             placeholder="  Enter Option 1"         
             required
             outline
             solo
         
           >
           </v-text-field>
          </v-flex>
              <v-flex xs12 sm6 md9 >
             <br>
              <h3>Option2</h3><br>
             <v-text-field
             v-model="a"
              type="text"
             placeholder="  Enter Option 2"         
             required
             outline
         
           >
           </v-text-field>
          </v-flex>
              <v-flex xs12 sm6 md9 >
             <br>
              <h3>Option3</h3><br>
             <v-text-field
             v-model="a"
              type="text"
             placeholder=" Enter Option 3"         
             required
             outline
         
           >
           </v-text-field>
          </v-flex>
              <v-flex xs12 sm6 md9 >
             <br>
              <h3>Option4</h3><br>
             <v-text-field
             v-model="a"
              type="text"
             placeholder=" Enter Option 4"         
             required
             outline
         
           >
           </v-text-field>
          </v-flex>
           <v-flex xs12 sm6 md9>
               
          
                       <v-select :items="items" label="-Select answer" solo outline  >
                       </v-select>
                    
        
        
        </v-flex>

        </v-layout>

              <v-subheader large v-if = "n==2"> Answer </v-subheader>
              <v-layout v-if = "n==2">
                  <v-flex xs12 sm6 d-flex>
                    <v-text-field label="Enter Answer" solo outline ></v-text-field>
                  </v-flex>

              </v-layout>

              <v-btn > Submit</v-btn>

              <v-layout>



              </v-layout>



          </v-card>


          </v-tab-item>
      </v-tabs>


  </v-container>
  </v-content>
</div>
</template>


<script>
export default{
  layout: 'DashboardNavigationLayout',
  data: () => ({

 heading : ['Multiple choice' , 'Filling blanks'],


 answer:[],
 items:[],

 




  })


  }

  </script>

  <style scoped>
.card-content{
  padding : 10px 20px 10px 20px;

}
.select-action
{
	width: 100%;
	padding-left: 2%;
	padding-right: 2%;
}

  </style>
