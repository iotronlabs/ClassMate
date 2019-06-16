<template>
<div>
  <v-container fluid>
    <v-tabs dark color="cyan" show-arrows >
      <v-tabs-slider color="yellow"></v-tabs-slider>
  
        <v-tab v-for="i in 2" :key="i" :href="'#tab-' + i" >
          Q {{ i }}
        </v-tab>
  
        <v-tabs-items>
          <v-tab-item
            v-for="texts in textss" :key="i" :value="'tab-' + i" >
              <v-card flat>
                <v-card-text>{{ texts }}</v-card-text>
              </v-card>

              <v-card flat :contents = "contents[n-1]">

                
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


textss :[
 {text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'},

 {text:'hellllllll'}

 ]

 contents: [

[
  {text : 'heloo how are you'}
],

[
  {text : 'i am fine'}
]


]



  })


  }
</script>
























































