import state from './state'
import { exportDefaultSpecifier } from '@babel/types';
export default {
	setActiveUser({},payload) {
		if(payload==1)
		{
			state.studentItems.active=true
			state.teacherItems.active=false
			state.staffItems.active=false
			state.adminItems.active=false
			state.auditItems.active=false
		}
		if(payload == 2)
		{
			state.studentItems.active=false
			state.teacherItems.active = true
			state.staffItems.active=false
			state.adminItems.active=false
			state.auditItems.active=false
		}
		if(payload == 3)
		{
			state.studentItems.active=false
			state.teacherItems.active = false
			state.staffItems.active = true
			state.adminItems.active=false
			state.auditItems.active=false
		}
		if(payload == 4)
		{
			state.studentItems.active=false
			state.teacherItems.active = false
			state.staffItems.active = false
			state.adminItems.active = true
			state.auditItems.active=false
		}
		// if(payload == 5)
		// {
		// 	state.studentItems.active=false
		// 	state.teacherItems.active = false
		// 	state.staffItems.active = false
		// 	state.adminItems.active = false
		// 	state.auditItems.active = true
		// }
	}
}
