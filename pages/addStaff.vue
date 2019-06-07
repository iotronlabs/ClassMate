<template>
<v-app >
    
 <v-card  >
  	<v-toolbar class="login-grad">
					<span class="toolbar-text">Staff form</span>
					
		</v-toolbar>
    <v-form  ref="form">
      <v-container fluid>

        <v-layout row wrap>

          <v-flex xs12 sm6 md3 >
             <v-text-field
             v-model="firstname"
             :rules="[rules.required]"
             label="Name"
             type="text"
             placeholder="First"         
             required
         
           >
           </v-text-field>
          </v-flex>

          <v-flex xs12 sm6 md3>
            <v-text-field
            v-model="middlename"
             type="text"
            placeholder="Middle"
            >
            </v-text-field>
          </v-flex>
          
          <v-flex xs12 sm6 md3>
              <v-text-field
              v-model="lastname"
              type="text"
              placeholder="Last" 
              >
              </v-text-field>  
          </v-flex>           
      </v-layout >
      <br>

      <!-- date of birth  -->
      <v-layout  wrap>
              <v-flex xs12 sm6 md3>
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
                      label="Date of Birth"
                      placeholder="yyyy-mm-dd"
                      
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
                
  
       
                 <!-- age -->
                      <v-flex xs12 sm6 md3>
                      <v-text-field
                            v-model="age"
                            type="text"
                            label="Age"
                            placeholder="Age"
                        >
                      </v-text-field>
                      </v-flex>
        </v-layout>
        <br>
      
        <!-- email -->
        <v-layout row wrap >
              <v-flex xs12 sm12 md3>
                <v-text-field
                    
                    name="email"
                    type="email"
                    v-model="email"
                    :rules="[rules.required,rules.emailValid]"
                    label=" Email id"
                    placeholder="enter email id"
                    autocomplete="off"
                    required>
                  </v-text-field> 
              </v-flex>
              <br>
              
              <!-- contact  -->
              <v-flex xs12 sm12 md3>
              <v-text-field 
              v-model="contact"
              type="tel"
              label="contact no"
              placeholder="+91"       
              >
              </v-text-field>
              </v-flex>
              </v-layout>
              
              <!-- religion nationality -->
              <v-layout row wrap>
              <v-flex xs12 sm6 md3>
            <v-text-field
            v-model="middlename"
             type="text"
            placeholder="Middle"
            >
            </v-text-field>
          </v-flex>
              <v-flex xs12 sm6 md3>
              <v-select
                v-model="nationality"
                :items="nations"
                label="Nationality"
                solo
              ></v-select>
            </v-flex>
          </v-layout>
     <!-- address   address pincode state-->
     <v-flex xs12 sm12 md9>
         	<v-text-field
							
							name="streetaddress"
							type="text"
							v-model="street"
							
							label=" address"
              placeholder="street address"
							autocomplete="off"
						>
						</v-text-field> 
        </v-flex>
        <br>
        <v-layout row wrap>
        <v-flex xs12 sm6 md3>
        <v-text-field
            v-model="city"
            type="text"
            placeholder="city"
        >
        </v-text-field>
        </v-flex>
        
       
        
        <v-flex xs12 sm6 md3>
        <v-text-field
            v-model="pincode"
            type="text"
            placeholder="pin/zip code"
        > </v-text-field>
        </v-flex>
        <v-flex xs12 sm6 md3>
        <v-select
         v-model="state"
          :items="states"
          label="State"
          solo
        ></v-select>
        </v-flex>
        </v-layout>
        <br>

         
        
        

      <v-spacer></v-spacer><br>
      	<v-btn round color="success" light type="submit" form="login-form" >Submit</v-btn>
       <v-btn  round color="primary" type="submit" form="login-form"  @click="reset">Clear form</v-btn>





  

        



        

     
    </v-container>
  </v-form>

</v-card>
    
</v-app>
</template>
<script>
export default {
    layout:'NavigationLayout',
    data() {
      return{
        firstname:'',
        middlename:'',
        lastname:'',
        dob:'',
        age:'',
        email:'',
        contact:null,
        religion:[],
        nationality:[],
        street:'',
        city:'',
        pincode:'',
        zip:'',
        state:[],
        date: new Date().toISOString().substr(0, 10),
        menu: false,
     
      
        
        nations:[
           'Afghan','Albanian','Algerian','American','Andorran','Angolan','Antiguans and Barbudans','indian'


        ],
        state:[],
        states:['Arunachal Pradesh','Assam', 'Bihar', 'Chhattisgarh' ,'Goa', 'Gujarat', 'Haryana' ,
        'Himachal Pradesh', 'Jammu and Kashmir',
         'Jharkhand' ,'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra' ,'Manipur', 'Meghalaya ',
         'Mizoram', 'Nagaland', 'Odisha', 'PunjabRajasthan', 
         'Sikkim', 'Tamil' ,'Nadu' ,'Telangana', 'Tripura', 'Uttar Pradesh', 'Uttarakhand',' West Bengal'

        ],
       
      	rules: {
				required: v => !!v || 'Required.',
			
				emailValid : v=> /.+@.+/.test(v) || 'E-mail must be valid'
      },
     
    }
  },
  methods:{
     reset () {
        this.$refs.form.reset()
      },

  }
}
</script>
