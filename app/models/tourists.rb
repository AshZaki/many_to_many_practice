# - `Tourist.all`
#   - should return **all** of the `Tourist` instances
# - `Tourist#name`
#   - returns the name of the given `Tourist`
# - `Tourist.find_by_name(name)`
#   - given a string of a name, returns the **first tourist** whose  name matches
# - `Tourist#trips`
#   - returns an **array** of all the trips taken by the given `Tourist`
# - `Tourist#landmarks`
#   - returns an **array** of all the landmarks for the given `Tourist`
# - `Tourist#visit_landmark(landmark)` should create a new trip for that tourist to the given landmark


class Tourist

	attr_accessor :name
	attr_reader :landmarks

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_by_name(name)
		Tourist.all.select do |tourist|
			tourist.name == name
		end
	end

	def trips
		Trip.all.select do |trip|
			trip.tourist == self
		end
	end

	def landmarks
		self.trips.select do |trip|
			trip.landmark
		end
	end

	def visit_landmark(landmark)
		Trip.new(self,landmark)
	end



end