# Random Sentence
def name(names)
  return names[rand(names.size)]
end

def activity(activities)
  return activities[rand(activities.size)]
end

def sentence(name, activity)
  return "#{name} went #{activity}"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))

