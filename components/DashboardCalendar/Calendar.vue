<template>
<div>
  <v-layout wrap >
    <v-flex xs12 sm12 md5 offset-md-1 offset-lg-1 class="tag-list">
      <CalendarTags />
    </v-flex>
    <v-spacer></v-spacer>
    <v-flex xs12 sm12 md6 :class="$vuetify.breakpoint.smAndDown ? smCalendar : ''">
      <v-sheet height="500">
        <v-calendar
          ref="calendar"
          v-model="start"
          :type="type"
          color="secondary"
        ></v-calendar>
      </v-sheet>
      <v-btn @click="$refs.calendar.prev()">
        <v-icon dark left>keyboard_arrow_left</v-icon>
        Prev
      </v-btn>
      <v-btn @click="$refs.calendar.next()" class="calendar-navigation-icons-right">
        Next
        <v-icon right dark>
          keyboard_arrow_right
        </v-icon>
      </v-btn>
    </v-flex>
  </v-layout>
</div>
</template>

<script>
import CalendarTags from '@/components/DashboardCalendar/CalendarTags'
export default{
  name: 'Calendar',
  components: {
    CalendarTags
  },
  data() {
    return{
      type: '4day',
      start: Date.now().toString(),
      smCalendar : 'sm-calendar'
    }
  },
  computed: {
    checkDevice() {
      if(this.$vuetify.breakpoint.smAndDown==true)
      {
        return true
      }
    }
  }
}
</script>

<style scoped>
.sm-calendar
{
  margin-top: 30%;
}
.calendar-navigation-icons-right
{
  float: right;
}
</style>


