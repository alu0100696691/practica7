require "fraction.rb"

describe Fraction do
    before :all do
        A = Fraction.new(1,1)           
        B = Fraction.new(1,4)
    end 

    describe "Test de clase: |f1 * f2| Multiplicacion y ABS" do
        it "prueba |f1 * f2|" do
            (A*B).abs.to_s.should == "0.25"
        end
    end
end
