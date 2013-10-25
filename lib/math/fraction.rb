
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
    def to_f 
        c = @num_.to_f/@den_.to_f
        c
    end

    def ==(B)
        return @num_.eql?(B.num_) && @den_.eql?(B.den_)
    end
end
