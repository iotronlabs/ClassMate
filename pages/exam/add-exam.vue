<template>
<v-content class = "global-font">

 <v-card class = "card-content" >
  	<v-toolbar >
	 <span class="toolbar-text">Add Exam</span>

		</v-toolbar>
    <v-form  ref="addexam">
      <v-container fluid>

        <v-layout col wrap>

          <v-flex xs12 sm12 md6 lg6 >
              <h3>Exam Name</h3><br>
             <v-text-field
             v-model="examname"


             type="text"
             placeholder="Enter exam name"
             required
             outline
             solo

           >
           </v-text-field>
          </v-flex>
          <v-flex xs12 sm12 md6 lg6 >
              <h3>Exam Duration (Minutes)</h3><br>
             <v-text-field
             v-model="examduration"


             type="number"
             placeholder="Enter exam duration"
             required
             outline
             solo

           >
           </v-text-field>
          </v-flex>
          <v-flex xs12 sm12 md6 lg6 >
              <h3>Passmark (%)</h3><br>
             <v-text-field
             v-model="passmark"
              placeholder="Enter passmark"

             type="number"

             outline
             solo
             required

           >
           </v-text-field>
          </v-flex>

          <v-flex xs12 sm12 md6 lg6 >
           <h3>RE exam (if you take exam then show it again after some days)</h3><br>


             <v-text-field
             v-model="reexam"


             type="number"
             placeholder="Enter days to attempt"
             solo
             outline
             required

           >
           </v-text-field>
          </v-flex>


              <v-flex xs12 sm12 md6 lg6>
                  <h3> Select Deadline </h3><br>
                <v-menu
                  ref="menu"
                  v-model="menu"
                  :close-on-content-click="false"
                  :nudge-right="40"
                  :return-value.sync="date"
                  lazy
                  transition="scale-transition"
                  offset-y
                  full-width
                  min-width="290px"
                >
                  <template v-slot:activator="{ on }">
                    <v-text-field
                      v-model="date"
                     outline
                      placeholder="-select deadline"

                      readonly
                      v-on="on"
                    ></v-text-field>
                  </template>
                  <v-date-picker v-model="date" no-title scrollable>
                    <v-spacer></v-spacer>
                    <v-btn flat color="primary" @click="menu = false">Cancel</v-btn>
                    <v-btn flat color="primary" @click="$refs.menu.save(date)">OK</v-btn>
                  </v-date-picker>
                </v-menu>
              </v-flex>
          <v-flex xs12 sm12 md6 lg6>
            <h3>Select Subject</h3><br>
        <v-select
         v-model="subject"
          :items="subjects"
          label="-select subject"
          outline
          solo
        >
        </v-select>
        </v-flex>
         <v-flex xs12 sm12 md6 lg6>
               <h3>Select Category</h3><br>
        <v-select
         v-model="category"
          :items="categories"
          label="-select category"
          outline
          solo
        >
        </v-select>
        </v-flex>

          <v-flex xs12 sm12 md6 lg6>
              <h3>Terms and Conditions</h3><br>
           <v-textarea
          outline
          solo
          name="terms"
          v-model="terms"
          placeholder="enter terms and conditions"

        ></v-textarea>
      </v-flex>
    </v-layout>










      <v-spacer></v-spacer><br>
      	<v-btn round color="success" light type="submit" form="login-form" >Submit</v-btn>
       <v-btn  round color="primary" type="submit" form="login-form"  @click="reset">Clear form</v-btn>














    </v-container>
  </v-form>

</v-card>
</v-content>
</template>
<script>
export default {
    layout:"DashboardNavigationLayout",
    data(){
        return{
            examname:'' ,
            examduration:null,
            passmark:null,
            reexam:null,
            deadline:'',
            term:'',

            subject:[],
            subjects:[
                'DBMS',
                'DAA',
                'DSA'

            ],
            category:[],
            categories:[
                'asfdfg','agghdh','aghsh'
            ]
        }
    },

      methods:{
     reset () {
        this.$refs.addexam.reset()
      },

}
}
</script>
<style scoped>
.card-content{
  padding : 50px 20px 10px 20px;

}
.select-action
{
	width: 100%;
	padding-left: 2%;
	padding-right: 2%;
}

  </style>
