# - `Trip.all`
#   - returns an array of all trips
# - `Trip#tourist`
#   - returns the tourist who has taken that trip
# - `Trip#landmark`
#   - returns the landmark visited on the trip
class Trip
	attr_reader :tourist, :landmark

	@@all = []

	def initialize(tourist, landmark)
		@tourist = tourist
		@landmark = landmark
		@@all << self
	end

	def self.all
		@@all
	end

	def tourist
		@tourist
	end

	def landmark
		@landmark
	end



end