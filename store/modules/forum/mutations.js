import state from './state'
import { exportDefaultSpecifier } from '@babel/types';

export default {
	setActiveForumMenu({},menu) {
		if(menu=='Subject')
		{
			state.breadcrumbs.subject.active=true
		}
		if(menu=='Stream')
		{
			state.breadcrumbs.stream.active=true
			state.breadcrumbs.subject.active=false
		}
		if(menu=='Forum')
		{
			state.breadcrumbs.forum.active=true
			state.breadcrumbs.stream.active=false
			state.breadcrumbs.subject.active=false
		}
	}
}
