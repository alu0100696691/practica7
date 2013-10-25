
class Fraction
	def initialize(n, d)
	# atributos  
		@num_ = n  #numerador
		@den_ = d  #denominador
	end 

	attr_reader :n,:d  #automaticamente creamos get @n y get @d

    def to_s
        "#{@num_}/#{@den_}"
    end

end
