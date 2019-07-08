<template>
<div>
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
             placeholder="Enter exam name"         
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
             placeholder="Enter exam name"         
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
             placeholder="Enter exam name"         
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
             placeholder="Enter exam name"         
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
</div>
</template>


<script>
export default{
  data: () => ({

 heading : ['Multiple choice' , 'Filling blanks'],


 answer:[],
 items:['A','B' ,'C','D'],

 




  })


  }

  </script>

  <style scoped>
.card-content{
  padding : 10px 20px 10px 20px;

}

  </style>
