<template>
<div>
	<v-container fluid>

		<v-tabs v-model="active" color="cyan" dark slider-color="yellow" >
      		<v-tab v-for="head in heading" :key="n" ripple >
          		{{head}}
  
      		</v-tab>
        	<v-tab-item v-for="n in 5" :key="n" >
          		
      			<v-card class = "card-content">
      			
      				<v-subheader> Exam Name</v-subheader>
					<v-layout wrap align-center>
		        
		 				<v-flex xs12 sm6 d-flex>
		          			<v-select :items="items" label="---Select exam---" solo outline  >
		          			</v-select>
		        		</v-flex>
	        		</v-layout>
		        	<v-subheader large> Question</v-subheader>	
		      		<v-layout>
			            <v-flex xs12 sm6 d-flex>
			            	<v-text-field label="Enter Question" solo outline ></v-text-field>
			          	</v-flex>
  
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

items : ['A','B' ,'C']



  })


  }

  </script>

  <style scoped>
.card-content{
	padding : 10px 20px 10px 20px;

}

  </style>
