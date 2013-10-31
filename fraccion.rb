require File.join(File.dirname(__FILE__), 'mcm.rb')


class Fraccion
        include Comparable
        attr_accessor :numerador , :denominador

        #Constructor
        def initialize(num, den)
                if den < 0
                        num = -num
                        den = -den
                end

                @numerador = num
                @denominador = den

        end

        #Sets
        def SetNum(n)
                @numerador = n
        end

        def SetDen(d)
                @denominador = d
        end

        #Mostrar valores
        def num()
                return @numerador
        end

        def den()
                return @denominador
        end

        def mostrar()
                 "#{@numerador}/#{@denominador}"
        end

        def mostrarf()
                r = (@numerador.to_f / @denominador)
        end

        #Comparacion
        def comp(n,d)
                if (n == @numerador)&&(d == @denominador)
         return true
                else
                        return false
                end
        end

       def abs()
                r = (@numerador.to_f / @denominador)
                r.abs.to_s
        end

        #Suma
        def suma(n,m)
                if(m != 0)
                        aux = Integer(mcm(@denominador,m))
                        @numerador = (@numerador * (aux / @denominador)) + (n * (aux / m ))
                        @denominador = aux
                else

                end
        end

        #Resta
        def resta(n,m)
                if(m != 0)
                        aux = Integer(mcm(@denominador,m))
                        @numerador = (@numerador * (aux / @denominador)) - (n * (aux / m ))
                        @denominador = aux
                else

                end
        end

        #Multiplicacion
        def multiplicacion(n,m)
                @numerador = @numerador * n
@denominador = @denominador * m
        end


        #Division
        def division(n,m)
                @numerador = @numerador * m
                @denominador = @denominador * n
        end

        #opuesto
        def opuesto()
                if (@numerador < 0)
                        @numerador = @numerador.abs
                else
                        @numerador = 0 - @numerador
                end
                if (@denominador < 0)
                        @denominador = @denominador.abs
                else
                        @denominador = 0 - @denominador
                end
        end

        #inverso
        def inver()
                aux = @numerador
                @numerador = @denominador
                @denominador = aux
        end

        #menor mayor igual
        def <=>(n,m)
                aux = Integer(mcm(@denominador,m))
                a =  (@numerador * (aux / @denominador))
                b = (n * (aux / m))
                #menor o mayor
                if a < b
                        return 1
                end
                if a > b
                        return 2
                else
                        return 0
                end
        end

        #resto
        #resto
        def resto
                r = @numerador % @denominador
                r.to_s
        end
end
