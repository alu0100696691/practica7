require "fraction.rb"

describe Fraction do
        before :all do
            A = Fraction.new(1,1)
            B = Fraction.new(1,4)
        end
        describe" basicas" do
            it "Existe un numerador" do
                A.num_.should == 1
            end
            it "Existe un denominador" do
                A.den_.should == 1
            end
            it "se debe mostrar en consola de la forma a/b" do
                A.to_s.should == "1/1"
            end
            it "se debe mostrar en consola la fraccion en formato flotante" do
                A.to_f.should == "1.00"
            end
        end

        describe "Unarias" do
            it "Se debe comparar si dos fracciones son iguales con ==" do
                (A==B).should == false
            end

            it "Se debe calcular el valor absoluto de una fraccion con el meto abs" do
                A.abs.should == 1
            end
it "Se debe calcular el reciproco" do
     (B.reciprocal).to_s.should == "4/1"
   end
        end
end

