# encoding: UTF-8
require "gcd.rb"

class Fraction
    include Comparable
    def  initialize (*args)
        if args.size == 2
            c = gcd(args[0],args[1])
            @num_ = (args[0]/c)
            @den_ = (args[1]/c)
        else
            @num_ = args[0]
            @den_ = 1
        end
    end	
    attr_accessor :num_,:den_  #automaticamente 
    
    def to_s
        "#{@num_}/#{@den_}"
    end
    def to_f 
        @num_.to_f/@den_.to_f
    end

    def ==(b)
        return @num_.eql?(b.num_) && @den_.eql?(b.den_)
    end


    def abs
        c = @num_.to_f/@den_.to_f
        return c.abs
    end

    def reciprocal
        f=Fraction.new
        f.num_=@den_
        f.den_ = @num_
        f
    end


    def -@
        Fraction.new(-@num_,@den_)
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
        #minimizamos 
	     r.num_,r.den_ = minimiza(r.num_,r.den_)
	     return r
    end
    
    def -(b)
        r =Fraction.new
        if (@den_ == b.den_)
            r.num_=@num_- b.num_
            r.den_=@den_
        else
            r.num_=@num_ * b.den_ - b.num_ * @den_
            r.den_ = @den_ * b.den_
        end
        #minimizamos 
	     r.num_,r.den_ = minimiza(r.num_,r.den_)
	     return r
    end

    def *(b)
        r =Fraction.new
        r.num_=@num_ * b.num_
        r.den_=@den_ * b.den_

        #minimizamos 
	     r.num_,r.den_ = minimiza(r.num_,r.den_)
	     return r
    end
    def /(b)
        r =Fraction.new
        r.num_=@num_ / b.num_
        r.den_=@den_ * b.den_
        
        #minimizamos 
	     r.num_,r.den_ = minimiza(r.num_,r.den_)
	     return r
    end

    #METODO STAR WARS! HACE TODAS LAS COMPARACIONES
    def <=>(b)
        self.to_f <=> b.to_f
    end 
    
    def minimiza(x,y)
        d = gcd(x,y)
        x = x/d
        y = y/d
        return x,y
    end
end

##
#
#Fin del codigo
#
#






