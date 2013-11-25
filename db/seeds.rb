User.destroy_all

meditate = Habit.new({
	name: 'mediate',
	count: '3',
  interval: 'week'
})

exercise = Habit.new({
	name: 'exercise',
	count: '4',
  interval: 'week'
})

walk_in_nature = Habit.new({
  name: 'walk in nature',
  count: '2',
  interval: 'month'
})

bob = User.create ({
	name: 'bob',
	email: 'bob@bob.com',
	habits: [meditate, exercise, walk_in_nature]
})
