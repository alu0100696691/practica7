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
end

