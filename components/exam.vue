<template>
<div>
  <v-container fluid>
    <v-tabs dark color="cyan" show-arrows >
  <v-tabs-slider color="yellow"></v-tabs-slider>
  
  <v-tab v-for="i in 30" :key="i" :href="'#tab-' + i" >
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
<v-subheader>sdxcfgvbhjnkml,;.'</v-subheader>-->

<v-tabs-items>
        <v-tab-item
          v-for="i in 30"
          :key="i"
          :value="'tab-' + i"
        >
          <v-card flat>
            <v-card-text>{{ text }}</v-card-text>
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

[
  {text : 'heloo how are you'}
],

[
  {text : 'i am fine'}
]


],



  })


  }
</script>


