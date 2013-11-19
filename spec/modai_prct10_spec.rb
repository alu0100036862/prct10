require 'spec_helper'
require 'modai_prct10'
include ModaiPrct10

describe ModaiPrct10 do

        before :each do

                matA = [[1,2],[3,4]]
                matB = [[221,2],[3,4]]

                matA_R = [[Racional.new(1,1),Racional.new(4,2)],[Racional.new(9,3),Racional.new(16,4)]]
                matB_R = [[Racional.new(442,2),Racional.new(4,2)],[Racional.new(9,3),Racional.new(16,4)]]

                @matrizA = MatrizDensa.new(matA)
                @matrizB = MatrizDensa.new(matB)

                @matrizA_R = MatrizDensa.new(matA_R)
                @matrizB_R = MatrizDensa.new(matB_R)

        end

        context 'comprobar los accessors' do

                it "Se debe invocar al metodo matriz() para obtener la matriz" do
                        @matrizA.respond_to?("matriz").should == true
                end
                
                it "Se debe invocar al metodo filas() para obtener el numero de filas" do
                        @matrizA.respond_to?("filas").should == true
                end

                it "Se debe invocar al metodo columnas() para obtener el numero de columnas" do
                        @matrizA.respond_to?("columnas").should == true
                end

                it "Se debe invocar al metodo matriz() para obtener la matriz de racionales" do
                        @matrizA_R.respond_to?("matriz").should == true
                end
                
                it "Se debe invocar al metodo filas() para obtener el numero de filas de matriz de racionales" do
                        @matrizA_R.respond_to?("filas").should == true
                end

                it "Se debe invocar al metodo columnas() para obtener el numero de columnas de matriz de racionales" do
                        @matrizA_R.respond_to?("columnas").should == true
                end

        end

        context 'Comprobar metodos de conversion' do

                it "Se debe mostrar la matriz" do
                        @matrizA.to_s.should == MatrizDensa.new([[1,2],[3,4]]).to_s
                end

                it "Se debe convertir a punto flotantes" do
                        @matrizA.to_f.to_s.should == MatrizDensa.new([[1.0,2.0],[3.0,4.0]]).to_s
                end

                it "Se debe mostrar la matriz de racionales" do
                        @matrizA_R.to_s.should == MatrizDensa.new([[Racional.new(1,1),Racional.new(4,2)],[Racional.new(9,3),Racional.new(16,4)]]).to_s
                end

        end

        context 'Comprobar las operaciones entre matrices' do

                it "Se debe poder sumar dos matrices" do
                        (@matrizA + @matrizB).to_s.should == MatrizDensa.new([[222,4], [6,8]]).to_s
                end
          
                it "Se debe poder restar dos matrices" do
                        (@matrizA - @matrizB).to_s.should == MatrizDensa.new([[-220,0], [0,0]]).to_s
                end
                
                it "Se debe poder multiplicar dos matrices" do
                        (@matrizA * @matrizB).to_s.should == MatrizDensa.new([[227,10], [675,22]]).to_s
                end
          
                it "Se debe poder sumar dos matrices de racionales" do
                        (@matrizA_R + @matrizB_R).to_s.should == MatrizDensa.new([[Racional.new(222,1),Racional.new(4,1)],[Racional.new(6,1),Racional.new(8,1)]]).to_s
                end

                it "Se debe poder restar dos matrices de racionales" do
                        (@matrizA_R - @matrizB_R).to_s.should == MatrizDensa.new([[Racional.new(-220,1),Racional.new(0,1)],[Racional.new(0,1),Racional.new(0,1)]]).to_s
                end

        end
        
        context 'Comprobar las operaciones de la propia matriz' do

                it "Se debe mostrar el max de la matriz" do
                        @matrizA.max == 4.0
                end
          
                it "Se debe mostrar el min de la matriz" do
                        @matrizA.min == 1.0
                end
                
                it "Se debe mostrar el max de la matriz de racionales" do
                        @matrizA_R.max == Racional.new(1,1)
                end
          
                it "Se debe mostrar el min de la matriz de racionales" do
                        @matrizA_R.min == Racional.new(16,4)
                end

        end

end


