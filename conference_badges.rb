# Write your code here.

def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator attendees
  attendees.collect {|name| badge_maker(name)}
end

def assign_rooms attendees
  current_room = 0
  attendees.collect do |name|
    current_room += 1
    "Hello, #{name}! You'll be assigned to room #{current_room}!"
  end
end

def printer attendees
  badges = batch_badge_creator(attendees)
  rooms = assign_rooms(attendees)
  badges.each {|badge| puts badge}
  rooms.each {|room| puts room}
end