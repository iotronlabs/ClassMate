import state from './state'
import { exportDefaultSpecifier } from '@babel/types';

export default {
	setActiveForumMenu({},menu) {
		if(menu=='subject')
		{
			state.breadcrumbs.subject.active=true
		}
		else if(menu=='stream')
		{
			state.breadcrumbs.stream.active=true
			state.breadcrumbs.subject.active=false
		}
		else if(menu=='forum')
		{
			state.breadcrumbs.forum.active=true
			state.breadcrumbs.stream.active=false
			state.breadcrumbs.subject.activ=false
		}
	}
}
