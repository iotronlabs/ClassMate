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
	            	</v-card-text>
	            	<v-card-text class = "heading">
	            		Electronic and telecommunication
	            		<v-btn class = "subscribe" >Subscribe</v-btn>
	            		<br><br>
	            	</v-card-text>

		            <v-card color = "grey" class = "card">
		            	<br>
			        	&emsp; &emsp; Filter by
			        	<v-menu offset-y>
				        	<template v-slot:activator="{ on }">
	          					<v-btn v-on="on">
	            					Semester
	          					</v-btn>
	        				</template>
	        				<v-list>
	          					<v-list-tile  v-for="(item, index) in hello" :key="index" >
	           						<v-list-tile-title>{{ item.title }}</v-list-tile-title>
	          					</v-list-tile>
	       					 </v-list>
      					</v-menu>
			           <br>

			           <v-card class = "card">
			           		<v-card-text>
			           			<v-card class = "post1" >
			           				<center>
			           					Top Authors
			           					<br>
			           					--
			           					<br>
			           					--
			           					<br>
			           					--
		           					</center>
	           					</v-card>
			           			<v-card class = "post1">
				           			<center>
				           				Total Posts
				           				<br><br>
				           				99
				           			</center>
			           			</v-card>


				           		<font size = "5" > &nbsp; Analog Electronics (AEC)</font>

				           		<br><br>
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;

			           		</v-card-text>



			            </v-card>
			            <br><br>
			            <v-card class = "card" ><br><br><br>
			            </v-card>
			            <br><br>
			            <v-card class = "card" ><br><br><br>
			            </v-card>

			            <br>
		            </v-card>
	          		<br>
	        	</v-card>



	    	</v-flex>

		</v-layout>
	</v-container>
</div>
</template>


<script>
export default{
  data: () => ({
    items:
    [
      {
        text: 'Dashboard',
        disabled: false,
        to: '/'
      },
      {
        text: 'Forum',
        disabled: false,
        to: '/'
      },
      {
        text: 'subject',
        disabled: false,
        to: '/'
      }
    ],

    hello :
    [

      { title: 'First' },
      { title: 'Second' },
      { title: 'Third' },
      { title: 'Fourth' }
    ]
  })
}
</script>


<style scoped>

.subscribe
{
	float: right;
}

.heading
{
	font-weight : bold;
	font-size : 25px;
}
.card
{
	margin-left : 20px;
	margin-right : 20px;
}

.post1
{
	float: right;
	width : 140px;
	height: 100px;
}
</style>





