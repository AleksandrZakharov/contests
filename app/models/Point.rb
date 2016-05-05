class Point
	attr_accessor :longitude, :latitude

	def initialize (longitude,latitude)

		
		@longitude=longitude
	    @latitude=latitude
	    

    end

    def mongoize 

    	return {:type => "Point", :coordinates => [@longitude, @latitude]}

	end

	def self.demongoize (params)

		return Point.new(params[:coordinates][0],params[:coordinates][1])

	end

	def self.mongoize (point)

		return point.is_a?(Point) ? point.mongoize : point

	end

	def self.evolve (point)

		return point.is_a?(Point) ? point.mongoize : point

	end

end