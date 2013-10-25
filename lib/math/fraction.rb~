
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

    def ==(b)
        return @num_.eql?(b.num_) && @den_.eql?(b.den_)
    end
    def abs
        c = @num_.to_f/@den_.to_f
        return c.abs
    end
    def reciprocal
        r=Fraction.new
        r.num_=@den_
        r.den_=@num_
        r
    end
    def -@
        Fraccion.new(-@num_,@den_)
    end
    def +(b)
        r=Fraction.new
        if (@den_==b.den_)
            r.num_ = @num_ + b.num_
            r.den_ = @den_
        else
            r.num_ = @num_ * b.den_ + b.num_ * @den_
            r.den_ = @den_ * b.den_
        end
        r
    end
    def -(b)
        r =Fraccion.new
        if (@den_ == b.den_)
            r.num_=@num_- b.num_
            r.den_=@den_
        else
            r.num=@num_ * b.den_ - b.num_ * @den_
            r.den_ = @den_ * b.den_
        end
        r
    end

    def *(b)
        r =Fraccion.new
        r.num:=@num_ * b.num_
        r.den_=@den_ * b.den_

        r
    end


end
