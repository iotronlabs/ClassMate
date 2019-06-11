<template>
    <div>
		<v-list class="user-profile">
			<v-list-tile>
				<v-list-tile-avatar>
					<img src="https://randomuser.me/api/portraits/men/85.jpg">
				</v-list-tile-avatar>
				<v-list-tile-content>
					<v-list-tile-title><h3>John Leider</h3></v-list-tile-title>
				</v-list-tile-content>
			</v-list-tile>

			<div>
				<v-chip small outline color="#087a49" >
					<v-avatar class="student-color"> {{selectItems.avatar_1}} </v-avatar>
						{{selectItems.title_1}}
						<v-spacer />
				</v-chip>

				<v-chip small outline color="#4e54c8" >
					<v-avatar class="subject-color"> {{selectItems.avatar_2}} </v-avatar>
						{{selectItems.title_2}}
						<v-spacer />
				</v-chip>
			</div>
		</v-list>
    </div>
</template>

<script>
import {mapState} from 'vuex'
export default {
    computed: {
        ...mapState({
			studentItems : state => state.dashboard.studentItems,
			teacherItems : state => state.dashboard.teacherItems,
		}),
        selectItems() {
			if(this.studentItems.active==true)
			{
				return this.studentItems.chipdata
			}
			else if(this.teacherItems.active==true)
			{
				return this.teacherItems.chipdata
			}
        }
    }

}
</script>


<style scoped>

    .subject-color {
        background-color: #4e54c8;
        color: aliceblue;

    }
    .user-profile {
        padding-left: 10%;
        padding-right: 3%;
        padding-top: 2%;
        padding-bottom: 10%;
    }
</style>
