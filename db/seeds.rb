User.destroy_all

mediate = Habit.new({
	name: 'mediate',
	count: '0',
})

exercise = Habit.new({
	name: 'exercise',
	count: '0',
})

weekly = WeeklyChart.new({
	habits: [mediate, exercise]
	})

bob = User.create ({
	name: 'bob',
	email: 'bob@bob.com',
	weekly_charts: [weekly]
})