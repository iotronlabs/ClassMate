const studentItems = {
	active: false,
	items: [
		{
			icon: 'apps',
			title: 'Welcome',
			to: '/',
			items: []
		},
		{
			title: 'Forum',
			to: '/',
			items: [
				{
					title: 'Saved Posts'
				},
				{
					title: 'Create Post'
				},
				{
					title: 'My Posts'
				}
			]
		},
		{
			title: 'Exams',
			to: '/',
			items:[]
		},
		{
			title: 'Calendar',
			to: '/',
			items: [
				{
					title: 'Notice'
				},
				{
					title: 'Time-table'
				},
				{
					title: 'Assignments'
				},
				{
					title: 'Events and Activities'
				}
			]
		},
		{
			title: 'Reports',
			to: '/',
			items: [
				{
					title: 'Attendance'
				},
				{
					title: 'Exam'
				}
			]
		},
		{
			title: 'Help desk',
			to: '/',
			items: []
		}
	],
}

const teacherItems = {
	active: false,
	items: [
		{
			icon: 'apps',
			title: 'Welcome to teacher dashboard',
			to: '/'
		},
		{
			icon: 'bubble_chart',
			title: 'forum',
			to: '/receipe'
		},
		{

			title:'calender',
			to:'/charts'

		},
		{
			icon:'apps',
			title:'exams',
			to:'/about'

		},
		{
			icon:'apps',
			title:'reports',
			to:'/done'

		},
		{
			icon:'apps',
			title:'helpdesk',
			to:'/done'
		}
	]
}

const staffItems = {
	active: false,
	menus: [
		{
			icon: 'apps',
			title: 'Welcome to staff dashboard',
			to: '/'
		},
		{
			icon: 'loader',
			title: 'add user',
			to: '/receipe'
		},
		{
			title:'configuration',
			to:'/charts'
		},
		{
			title:'calender',
			to:'/charts'
		},
		{
			icon:'apps',
			title:'exams',
			to:'/'
		},
		{
			icon:'apps',
			title:'reports',
			to:'/'
		},
		{
			icon:'apps',
			title:'helpdesk',
			to:'/'
		}
	]
}

const adminItems = {
	active: false,
	menus: [
		{
			icon: 'apps',
			title: 'Welcome to admin dashboard',
			to: '/'
		},
		{
			icon: 'bubble_chart',
			title: 'add user',
			to: '/receipe'
		},
		{

			title:'configuration',
			to:'/charts'

		},
		{

			title:'calender',
			to:'/charts'

		},
		{
			// icon:'mdi-watch',
			title:'exams',
			to:'/about'

		},
		{
			icon:'apps',
			title:'reports',
			to:'/done'

		},
		{
			icon:'apps',
			title:'helpdesk',
			to:'/done'
		}
	]
}

const auditItems = {

}
export const state = () => ({
	studentItems,
	teacherItems,
	staffItems,
	adminItems,
	auditItems
})

// export const actions= {
// 	setActiveUser ({commit}, user) {
// 		commit('setActiveUser',user)
// 	}
// }

// export const mutations = {
// 	setActiveUser(state,user)
// 	{
// 		state.user.active=true
// 	}
// }
