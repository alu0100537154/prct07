#!/usr/bin/env ruby 



require "./fraccion.rb"

describe Fraccion do
	before :each do
    @f1 = Fraccion.new(3,2)

 end 


	describe "Mostrar resultados" do
    	it "Numerador" do
    		@f1.num.should eq(3)
   		end
	
	  	it "Denominador" do
   			@f1.den.should eq(2)
  		end
	

		it "Se muestra " do
			@f1.mostrar.should eq("3/2")
		end


	
		it "Se muestra la forma flotante" do
			@f1.mostrarf.should eq(1.5)
		end
	end

	describe "Utilidades" do
		it "comparacion " do
			@f1.comp(3,2).should eq(true)
		end
		it "ABS " do
			@f1.abs.should eq("1.5")
		end

		it "reciproco" do
			@f1.inver
			@f1.mostrar.should eq("2/3")
		end	


		it "opuesto" do
			@f1.opuesto
			@f1.mostrar.should eq("-3/-2")
		end
	
		it "resto" do
			@f1.resto.should eq("1")
		end
	
		it "comparar" do
			#@f1.comparacion(5,2).should eq(2)
		end
	end
	
	describe "Operadores aritmeticos" do
		it "suma" do
			@f1.suma(3,2)
			@f1.mostrar.should eq("6/2")

		end
	
	
		it "resta" do
			@f1.resta(3,2)
			@f1.mostrar.should eq("0/2")
		end

		it "multiplicacion" do
			@f1.multiplicacion(3,2)
			@f1.mostrar.should eq("9/4")
		end
	
		it "division" do 
			@f1.division(3,2)
			@f1.mostrar.should eq("6/6")
		end
	end
end
