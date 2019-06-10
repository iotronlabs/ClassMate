const studentItems = {
	active:false,
	chipdata: {
		avatar_1: "S",
		avatar_2: "St",
		title_1: "Student",
		title_2: "Stream"
	},
	items: [
		{
			icon: {
				prefix: 'fas',
				name: 'border-all'
			},
			title: 'Welcome',
			to: '/',
			items: []
		},
		{
			icon: {
				prefix: 'fas',
				name: 'users'
			},
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
			icon: {
				prefix:'far', 
				name:'calendar-alt'
			},
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
			icon: {
				prefix: 'far',
				name: 'clipboard'
			},
			title: 'Exams',
			to: '/',
			items:[]
		},
		{
			icon: {
				prefix: 'fas',
				name: 'chart-area'
			},
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
			icon: {
				prefix: 'far',
				name: 'question-circle'
			},
			title: 'Help desk',
			to: '/',
			items: []
		}
	],
}

const teacherItems = {
	active: true,
	chipdata: {
		avatar_1: "T",
		avatar_2: "Sb",
		title_1: "Teacher",
		title_2: "Subject"
	},
	items:[
	{
		icon: {
			prefix: 'fas',
			name: 'border-all'
		},
		title: 'Welcome',
		to: '/',
		items: []
	},
		{
			icon: {
				prefix: 'fas',
				name: 'users'
			},
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
			icon: {
				prefix: 'far',
				name: 'calendar-alt'
			},
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
			icon: {
				prefix: 'far',
				name: 'clipboard'
			},
			title: 'Exams',
			to: '/',
			items:[]
		},
		{
			icon: {
				prefix: 'fas',
				name: 'chart-area'
			},
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
			icon: {
				prefix: 'far',
				name: 'question-circle'
			},
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
			icon: {
				prefix: 'fas',
				name: 'border-all'
			},
			title: 'Welcome to staff dashboard',
			to: '/'
		},
		{
			icon: {
				prefix: 'fas',
				name: 'user-plus'
			},
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
			icon: {
				prefix: 'fas',
				name: 'user-cog'
			},
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
			icon: {
				prefix: 'far',
				name: 'calendar-alt'
			},
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
			icon: {
				prefix: 'far',
				name: 'clipboard'
			},
			title:'exams',
			to:'/',
			items:[]
		},
		{
			icon: {
				prefix: 'fas',
				name: 'chart-area'
			},
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
			icon: {
				prefix: 'far',
				name: 'question-circle'
			},
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
			icon: {
				prefix: 'fas',
				name: 'border-all'
			},
			title: 'Welcome to admin dashboard',
			to: '/'
		},
		{
			icon: {
				prefix: 'fas',
				name: 'user-plus'
			},
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
			icon: {
				prefix: 'fas',
				name: 'user-cog'
			},
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
					title: 'Subject'
				}
			]
		},
		{
			icon: {
				prefix: 'far',
				name: 'calendar-alt'
			},
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
					title: 'Events and Activities'
				}
			]
		},
		{
			icon: {
				prefix: 'far',
				name: 'clipboard'
			},
			title: 'exams',
			to: '/',
			items: []
		},
		{
			icon: {
				prefix: 'fas',
				name: 'chart-area'
			},
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
			icon: {
				prefix: 'far',
				name: 'question-circle'
			},
			title: 'helpdesk',
			to: '/',
			items: []
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
