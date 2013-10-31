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
                A.to_f.should == 1.0
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
            it "Calcular el opuesto de la fraccion con -" do
                (-A).to_s.should == "-1/1"
            end
        end

        describe "aritmeticas" do
            it "Se debe sumar dos fracciones con +" do
                (A+B).to_s.should == "5/4"
            end
            it "Se debe restar dos fracciones con -" do
                (A-B).to_s.should == "3/4"
            end
            it "Se debe multiplicar dos fracciones con *" do
                (A*B).to_s.should == "1/4"
            end
            it "Se debe dividir dos fracciones con /" do
                (A/B).to_s.should == "1/4"
            end
        end

        describe "Comparacion" do
            it "Se debe de poder comprobar si una fraccion es menor que otra" do
                (B<A).should == true 
            end
            it "Se debe de poder comprobar si una fraccion es mayor que otra" do
                (A>B).should == true
            end
            it "Se debe de poder comprobar si una fraccion es menor o igual que otra" do
                (B<=A).should == true
            end
            it "Se debe de poder comprobar si una fraccion es mayor o igual que otra" do
                (A>=B).should == true
            end
        end
end
