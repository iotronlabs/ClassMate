<template>
<div>
  <v-container fluid>
    
    <v-tabs v-model="active" color="primary" dark slider-color="yellow" >
         <!-- <v-tab v-for="n in 3" :key="n" ripple>
            Item {{ n }}
        </v-tab>-->

        <v-tab v-for="head in heading"  ripple>
            {{ head}}
        </v-tab>

          <v-tab-item v-for="n in 3" :key="n" >
              <v-card flat>
                <v-card-text>

                  <br><br>
                  <v-toolbar flat color = "lightgrey">
        
                  <v-text-field v-model="search" append-icon="search" label="Search" single-line hide-details>
                </v-text-field>
                  <v-spacer></v-spacer>

                  
                  <v-dialog v-model="dialog" max-width="500px">
                    <template v-slot:activator="{ on }">
                        <v-btn class="mb-2 btn-grad-primary" dark v-on="on">New Item</v-btn>
                      </template>
                      <v-card>    
                        <v-card-text>
                            <v-container grid-list-md>
                              <v-layout wrap>
                                  <v-flex xs12 sm6 md4>
                                    <v-text-field v-model="editedItem.name" label="Serial No"></v-text-field>
                                  </v-flex>
                                  <v-flex xs12 sm6 md4>
                                    <v-text-field v-model="editedItem.code" label="Code"></v-text-field>
                                  </v-flex>
                                  <v-flex xs12 sm6 md4>
                                    <v-text-field v-model="editedItem.subject" label="Subject"></v-text-field>
                                  </v-flex>
                                  <v-flex xs12 sm6 md4>
                                    <v-select :items="items" v-model="editedItem.teacher" label="teacher" solo full-width flat> </v-select>

                                  </v-flex>
                                  <v-flex xs12 sm6 md4>
                                    <v-text-field v-model="editedItem.stream" label="Stream"></v-text-field>
                                  </v-flex>
                                  <v-flex xs12 sm6 md4>
                                    <!--<v-text-field v-model="editedItem.topic" label="Topic"></v-text-field>-->





                                    <v-dialog mv-model="dialog" width="500" >
                                <template v-slot:activator="{ on }" >
                                  <v-btn  v-on="on" class="btn-grad-primary" text-color="white">
                                      Topics
                                  </v-btn>
                                </template>
        
                                <v-card>
                                <v-card-actions>
                                      <v-spacer></v-spacer>
                                      <v-btn flat @click="dialog = false">
                                        <v-icon>close</v-icon>
                                      </v-btn>
                                  </v-card-actions>
                                  <v-card-text>
                                    <v-chip>topic</v-chip>
                                    <v-chip>topic</v-chip>
                                    <v-chip>topic</v-chip>
                                    <v-chip>topic</v-chip>
                                  </v-card-text>
                                </v-card>
                            </v-dialog>





                                  </v-flex>
                              </v-layout>
                            </v-container>
                        </v-card-text>
            
                        <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn color="primary" flat @click="close">Cancel</v-btn>
                            <v-btn color="primary" flat @click="save">Save</v-btn>
                        </v-card-actions>
                    </v-card>
                  </v-dialog>
                </v-toolbar>


          <v-data-table :headers="headers" :items="Serial_No" class="elevation-1" >

                <template v-slot:items="props">
                  <td>{{ props.item.name }}</td>
                  <td class="text-xs">{{ props.item.code }} </td>
                  <td class="text-xs">{{ props.item.subject }}</td>
                  <td class="text-xs">{{ props.item.teacher }}</td>
                  <td class="text-xs">{{ props.item.stream }}</td>
                  <td class="text-xs">{{ props.item.topic }} &emsp;&emsp; 

                    <v-dialog mv-model="dialog" width="500" >
                      <template v-slot:activator="{ on }">
                        <v-btn  v-on="on" class="btn-grad-primary"
                             View All
                        </v-btn>
                      </template>
        
                      <v-card>
                
                      <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn class="btn-grad-primary" flat @click="dialog = false">
                              <v-icon>close</v-icon>
                            </v-btn>
                        </v-card-actions>
                        <v-card-text>
                          <v-chip>topic</v-chip>
                          <v-chip>topic</v-chip>
                          <v-chip>topic</v-chip>
                          <v-chip>topic</v-chip>
                        </v-card-text>

                      </v-card>
                   </v-dialog>

                  </td>
                  <td class="justify-center layout px-0">
                  <v-icon small class="mr-2" @click="editItem(props.item)" >
                    edit
                  </v-icon>
                  <v-icon small @click="deleteItem(props.item)">
                    delete
                  </v-icon>
                  
                </td>
                  
                </template>
              </v-data-table>

              <br>



                </v-card-text>
             </v-card>
          </v-tab-item>
        </v-tabs>
  
        <!-- <div class="text-xs-center mt-3">
          <v-btn @click="next">next tab</v-btn>
         </div>
         <br><br><br> -->

      

        
  </v-container>
</div>
</template>

<script>
export default{
  data: () => ({

  heading : ['Teacher' , 'Student' , 'Staff'],
    items: ['A', 'B', 'C', 'D'],

    dialog: false,
    headers: [
      {
        text: 'Serial_No',
        align: 'left',
        sortable: false,
        value: 'name'
      },
      { text: 'Code', value: 'code' },
      { text: 'Subjects ', value: 'subject' },
      { text: 'Teachers', value: 'teacher' },
      { text: 'Streams', value: 'stream' },
      { text: 'Topics', value: 'topic' }
       
    ],
    Serial_No: [],
    editedIndex: -1,
    editedItem: {
      name: '',
      code : '--',
      subject: '--',
      teacher: '--',
      stream: '--',
      topic: '--'
    },
    defaultItem: {
      name: '',
      code : '--',
      subject: '--',
      teacher: '--',
      stream: '--',
      topic: '--'
    }
  }),

  computed: {
    formTitle () {
      return this.editedIndex === -1 ? 'New Item' : 'Edit Item'
    }
  },

  watch: {
    dialog (val) {
      val || this.close()
    }
  },

  created () {
    this.initialize()
  },

  methods: {
    initialize () {
      this.Serial_No = [
      {
          name: '1',
          code : '--',
          subject: '--',
          teacher: '--',
          stream: '--',
          topic: '24'
          
        },
         {
          name: '2',
          code : '--',
          subject: '--',
          teacher: '--',
          stream: '--',
          topic: '24'
          
        },
         {
          name: '3',
          code : '--',
          subject: '--',
          teacher: '--',
          stream: '--',
          topic: '24'
          
        },
         {
          name: '4',
          code : '--',
          subject: '--',
          teacher: '--',
          stream: '--',
          topic: '24'
          
        },
       {
        name: '5',
        code : '--',
        subject: '--',
        teacher: '--',
        stream: '--',
        topic: '24'
        
      }
       
      ]
    },

    editItem (item) {
      this.editedIndex = this.Serial_No.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialog = true
    },

    deleteItem (item) {
      const index = this.Serial_No.indexOf(item)
      confirm('Are you sure you want to delete this item?') && this.Serial_No.splice(index, 1)
    },

    close () {
      this.dialog = false
      setTimeout(() => {
        this.editedItem = Object.assign({}, this.defaultItem)
        this.editedIndex = -1
      }, 300)
    },

    save () {
      if (this.editedIndex > -1) {
        Object.assign(this.Serial_No[this.editedIndex], this.editedItem)
      } else {
        this.Serial_No.push(this.editedItem)
      }
      this.close()
    },
    next () {
      const active = parseInt(this.active)
      this.active = (active < 2 ? active + 1 : 0)
    }
  }
 
 
}
</script>


<style lang="scss" scoped>
@import '~/assets/scss/_variables.scss'; 

.place
{
  height : 56px;
}

.btn-grad-primary {
  background: $primary-gradient;
}

.tab-color {
  color: $primary-gradient; 
}
</style>










































