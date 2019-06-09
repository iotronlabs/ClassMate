<template>
<div>
	<v-container grid-list-xl>
		<v-layout wrap justify-start>
			<v-flex d-flex xs12 sm12 md12>
	        	<v-card >
	           		<!--<v-card-title primary class="title">Lorem</v-card-title>-->
	            	<v-card-text>
	            	
		            	<v-breadcrumbs :items="items">
		    				<template v-slot:divider>
		     					<v-icon>chevron_right</v-icon>
		    				</template>
		 				</v-breadcrumbs>
	            	</v-card-text>
	            	<v-card color = "grey" class = "card">
	            		<v-subheader style = "font-size : 20px;">
	            			SCHOOL OF ELECTRONIC ENGINEERING
	            		</v-subheader>
	            		<hr style = "border : 2px solid;">
	            			<v-card color = "grey">
	            				<br>
			           			<v-card class = "post1" color ="grey" >
			           				<center>
			           					<br>
			           					Top Authors
			           					<br>
			           					--
			           					<br>
			           					--
			           					<br>
			           					--
		           					</center>
	           					</v-card>
			           			<v-card class = "post1" color = "grey">
					           			<center>
					           				<br>
					           				Total Posts
					           				<br><br>
					           				99
				           			</center>
			           			</v-card>
	           			
			            	
			            		<v-subheader >
			            			Electronic and Telecommunication
			            		</v-subheader>
		            			<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<br><br><br>
				           		<hr style = "border : 2px solid;">
			           		</v-card>
			           		<v-card color = "grey">
	            				<br>
			           			<v-card class = "post1" color ="grey" >
			           				<center>
			           				
		           					</center>
	           					</v-card>
			           			<v-card class = "post1" color = "grey">
					           			<center>
					           				
				           			</center>
			           			</v-card>
	           			
			            	
			            		<v-subheader >
			            			Electronic and Electrical
			            		</v-subheader>
		            			<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<v-chip>Topic chip</v-chip>&nbsp;
				           		<br><br><br>
				           		<hr style = "border : 2px solid;">
			           		</v-card>
			           		<v-card color = "grey">
	            				<br>
			           			
			            	
			            		<v-subheader >
			            			Electronics and Instrumentation
			            		</v-subheader>
		            			
				           		<br><br><br>
				           		
			           		</v-card>



		           		
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