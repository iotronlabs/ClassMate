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
					title: 'Saved Posts',
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
			title: 'Exams',
			to: '/',
			items:[]
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
	items:[
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
			title: 'Exams',
			to: '/',
			items:[]
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
	]
}

const staffItems = {
	active: false,
	items: [
		{
			icon: 'apps',
			title: 'Welcome to staff dashboard',
			to: '/'
		},
		{
			title: 'Add User',
			to: '/',
			items: [
				{
					title: 'Student'
				},
				{
					title: 'Teacher'
				}
			]
		},
		{
			title: 'Configuration',
			to: '/',
			items: [
				{
					title: 'Stream'
				},
				{
					title: 'Class'
				},
				{
					title:'Subject'
				}
			]
		},
		{
			title: 'Calender',
			to: '/',
			items: [
				{
					title: 'Notice'
				},
				{
					title: 'Time-table'
				},
				{
					title:'Events and Activities'
				}
			]
		},
		{

			title:'exams',
			to:'/',
			items:[]
		},
		{
			title:'Reports',
			to:'/',
			items:[
				{
					title:'Attendance'
				},
				{
					title:'Exam'
				}
			]
		},
		{

			title:'helpdesk',
			to:'/',
			items:[]
		}
	]
}

const adminItems = {
	active: false,
	items: [
		{
			icon: 'apps',
			title: 'Welcome',
			to: '/'
		},
		{
			title: 'Add User',
			to: '/',
			items: [
				{
					title: 'Student'
				},
				{
					title: 'Teacher'
				}
			]
		},
		{
			title: 'Configuration',
			to: '/',
			items: [
				{
					title: 'Stream'
				},
				{
					title: 'Class'
				},
				{
					title:'Subject'
				}
			]
		},
		{
			title: 'Calender',
			to: '/',
			items: [
				{
					title: 'Notice'
				},
				{
					title: 'Time-table'
				},
				{
					title:'Events and Activities'
				}
			]
		},
		{

			title:'exams',
			to:'/',
			studentItems:[]
		},
		{
			title:'Reports',
			to:'/',
			items:[
				{
					title:'Attendance'
				},
				{
					title:'Exam'
				}
			]
		},
		{

			title:'helpdesk',
			to:'/',
			items:[]
		}
	]
}

const auditItems = {
	active: false
}

// export const state = () => ({
// 	studentItems,
// 	teacherItems,
// 	staffItems,
// 	adminItems,
// 	auditItems
// })

export default {
	studentItems,
	teacherItems,
	staffItems,
	adminItems,
	auditItems
}
