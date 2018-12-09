require_relative '../config/environment.rb'




landmark1 = Landmark.new("The White House")
landmark2 = Landmark.new("The Capital")
landmark3 = Landmark.new("Washington Monument")

tourist1 = Tourist.new("Ash")
tourist2 = Tourist.new("Ryan")
tourist3 = Tourist.new("Nick")

trip1 = Trip.new(tourist1,landmark2)
trip2 = Trip.new(tourist1,landmark3)
trip3 = Trip.new(tourist2,landmark1)
trip4 = Trip.new(tourist2,landmark3)
trip5 = Trip.new(tourist3,landmark3)

new_trip1 = tourist3.visit_landmark(landmark1)
new_trip2 = tourist1.visit_landmark(landmark1)

binding.pry
0
