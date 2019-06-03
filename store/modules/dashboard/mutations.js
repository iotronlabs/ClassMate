import state from './state'
import { exportDefaultSpecifier } from '@babel/types';
export default {
	setActiveUser({},user) {
		if(user=='student')
		{
			state.studentItems.active=true
			state.teacherItems.active=false
			state.staffItems.active=false
			state.adminItems.active=false
			state.auditItems.active=false
		}
		if(user == 'teacher')
		{
			state.studentItems.active=false
			state.teacherItems.active = true
			state.staffItems.active=false
			state.adminItems.active=false
			state.auditItems.active=false
		}
		if(user == 'staff')
		{
			state.studentItems.active=false
			state.teacherItems.active = false
			state.staffItems.active = true
			state.adminItems.active=false
			state.auditItems.active=false
		}
		if(user == 'admin')
		{
			state.studentItems.active=false
			state.teacherItems.active = false
			state.staffItems.active = false
			state.adminItems.active = true
			state.auditItems.active=false
		}
		if(user == 'audit')
		{
			state.studentItems.active=false
			state.teacherItems.active = false
			state.staffItems.active = false
			state.adminItems.active = false
			state.auditItems.active = true
		}
	}
}
