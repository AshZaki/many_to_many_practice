# - `Landmark.all`
#   - returns an **array** of all landmarks
# - `Landmark.find_by_city(city)`
#   - returns an **array** of all landmarks in that city
# - `Landmark#trips`
#   - returns an **array** of all the trips taken to a given landmark
# - `Landmark#tourists`
#   - returns an **array** of all the tourists at a given landmark



class Landmark

	attr_accessor :city_name
	attr_reader :tourists, :trip

	@@all = []

	def initialize(city_name)
		@city_name = city_name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_by_city(city)
		Landmark.all.select do |landmark|
			landmark.city_name == city
		end
	end

	def trips
		Trip.all.select do |trip|
			trip.landmark == self
		end

	end

	def tourists
		# Trip.all.map do |trip|
		# 	trip.tourist
		# end
		self.trips.select do |trip|
			trip.tourist
		end
	end


end