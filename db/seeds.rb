User.destroy_all

meditate = Habit.new({
	name: 'mediate',
	count: '0',
})

exercise = Habit.new({
	name: 'exercise',
	count: '0',
})

weekly = WeeklyHabit.new({
	habits: [meditate, exercise]
	})

bob = User.create ({
	name: 'bob',
	email: 'bob@bob.com',
	weekly_habits: [weekly]
})