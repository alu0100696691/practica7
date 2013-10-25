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
        end
end

