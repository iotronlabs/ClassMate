<template>
<div>
  	<v-container fluid>
    	<v-tabs dark color="cyan" show-arrows >
			<v-tabs-slider color="yellow"></v-tabs-slider>

			<v-tab v-for="i in k.length" :key="i" :href="'#tab-' + i" >
				Q {{ i }}
			</v-tab>

			<!-- <v-tabs-items>
				<v-tab-item v-for="contents in content" :key="i":value="'tab-' + i">
				<v-card flat>
					<v-card-text>{{ contents }}</v-card-text>
				</v-card>
				</v-tab-item>
			</v-tabs-items>
			</v-tabs>
			<v-subheader>sdxcfgvbhjnkml,;.'</v-subheader> -->

				<v-tabs-items>
					<v-tab-item v-for="i in k.length" :key="i" :value="'tab-' + i">
						<v-card flat class = "card-content">
							<v-card-text>{{ content[i-1].text }}</v-card-text>

								<v-radio-group v-model="column" column >
							        <v-radio label="Option 1" value="radio-1"></v-radio>
							        <v-radio label="Option 2" value="radio-2"></v-radio>
							        <v-radio label="Option 3" value="radio-3"></v-radio>
							        <v-radio label="Option 4" value="radio-4"></v-radio>
						      	</v-radio-group>



							<!-- <v-layout>
								<v-flex md1>
									<v-btn>
										<v-icon small >
											edit
										</v-icon>
									</v-btn>
								</v-flex>
								<v-flex>
									<v-btn>
										<v-icon small >
											delete
										</v-icon>
									</v-btn>
								</v-flex>
							</v-layout> -->
							<br><br>
							<v-layout>
								<v-btn to="result"> Submit</v-btn>
							</v-layout>
						</v-card>


        			</v-tab-item>
     			 </v-tabs-items>
    		</v-tabs>

  </v-container>
</div>
</template>



<script>
export default {
  data: () => ({
		content: [
			{text: '1. aabbaabb'},
			{text: '2. ccddccdd'},
			{text: '3. eeffeeff'},
			{text: '4. gghhgghh'}
		],

		k: ['a','b','c','d']
	}),

}
</script>


</script>

  <style scoped>
.card-content{
	padding : 10px 20px 10px 20px;

}

  </style>


