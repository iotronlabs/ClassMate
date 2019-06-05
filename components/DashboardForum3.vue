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
	            	<br>
	            	<v-card color = "grey" class = "topic">
		            	<center>
            				<br>
		            		<font size = "4">Topics</font><br><br>
		            		<v-chip>Topic chip</v-chip><br><br>
		            		<v-chip>Topic chip</v-chip><br><br>
		            		<v-chip>Topic chip</v-chip><br><br>
		            		<v-chip>Topic chip</v-chip><br><br>
		            		<v-chip>Topic chip</v-chip><br><br>
		            	</center>
	            	</v-card>
	            	<v-card color = "grey" class = "card">
	            	<br>
	            	<font size = "5">&nbsp;Analog Electronics (AEC)</font>
	            	<v-btn class = "subscribe" >Subscribe</v-btn>
	            	<br><br><br>
	            		<v-card class = "card1">
	            			<v-subheader style = "font-size:30px;">
	            				Heading Question
	            			</v-subheader>
	            			<br>
	            			 	<v-tabs v-model="active" color="cyan" dark slider-color="yellow" class = "card1">
        							<v-tab v-for="n in 3" :key="n" ripple>
         								Topic {{ n }}
  
       								</v-tab>
       								<v-tab-item v-for="n in 3":key="n">
          								<v-card flat>
            								<v-card-text>{{ text }}<br><br><br>{{text2}}</v-card-text>
          								</v-card>
        							</v-tab-item>
      							</v-tabs>
      							<div class="text-xs-center mt-3">
        							<v-btn @click="next">next topic</v-btn>
								</div>
								<br>
	            		</v-card>
	            		<br>
	            		<v-card class = "card1">
	            			<br><br><br>
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
        href: '/'
      },
      {
        text: 'Forum',
        disabled: false,
        href: '/'
      },
      {
        text: 'ETC',
        disabled: false,
        href: '/'
      },
      {
        text: 'AEC',
        disabled: false,
        href: '/'
      }
    ]

   }),

   data () {
    return {
      active: null,
      text: '16 Answers......',
      text2 : 'Top answer'
    }
  },
  methods: {
    next () {
      const active = parseInt(this.active)
      this.active = (active < 2 ? active + 1 : 0)
    }
  }
}
</script>


<style scoped>

.card
{
	margin-left : 20px;
	margin-right : 400px;
}
.topic
{
	float: right;
	width : 350px;
	height : 520px;
	margin-right : 20px;
}
.subscribe
{
	float: right;
}
.card1
{
	margin-left : 20px;
	margin-right : 20px
}

</style>