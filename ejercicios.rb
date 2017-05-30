# Crear  una  carpeta,  dentro  de  la  carpeta  guardar  cada
# archivo   .rb   con   el   número   de   la   pregunta,   subir   los
# ejercicios   completados   a   Github   y   a   la   plataforma
# empieza
# Guía de ejercicios de arreglos en ruby
# Dado el array 
# [1,2,3,9,1,4,5,2,3,6,6]
# 1. Utilizando map sumar 1 a cada uno de los valores del array
# 2. Utilizando map convertir todos los valores a float
# 3. Utilizando select descartar todos los elementos menores a 5 en el array
# 4. Utilizando inject sumar todos los valores del array.
# 5. Agrupar todos los números por paridad (si son pares,es un grupos, si son impares es otro grupo)



array = [1,2,3,9,1,4,5,2,3,6,6]
numm = []


array.map do |numeros|
	numeros +=1
	puts numeros.to_f
end
arreglo5 = array.select do |x|
	if x >5
		puts x
	end
end
p arreglo5

suma = array.inject{|sum , f| sum += f}
p suma 

impar = array.group_by{|a| a.even?}
p impar
#array.map{|i| i %2 == 0}

# Dado el arreglo nombres =["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]. Extraer  todos 
# los elementos que excedan mas de 5 caracteres.
# Realizar el ejercicio utilizando el método .select
# Utilizando .map crear una arreglo con los nombres en minúscula
# Utilizando .select para crear un arreglo con todos los nombres que empiecen con P
# Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.


nombres =["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
arreglo = []
min = []

nombres.map do|x|
	#puts x.length
	if x.length <= 5
	arreglo <<x	
	end
end
p arreglo

mismo = nombres.select{|x| x.length <=5}
p mismo

nombres.map do |minuscula| 
	min <<minuscula.downcase
	
end
p min

conP = nombres.select do |m| 
	m.chars.first =="P"
end
p conP

count = nombres.map {|contar| contar.length} 
p count


# Dado el siguiente código:
# class Student
#     attr_accessor :name
#     def initialize()
#         @name = name
#     end
# end
# nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)
# 1. Iterar los nombres para crear un nuevo arreglo de estudiantes.
# 2. Modificar el objeto para que pueda recibir una nota del alumno.
# 3. Agregar un getter para la nota.
# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.
class Student
    attr_accessor :name , :nota
    def initialize(name)
        @name = name
        @nota
    end

    def notas 
    	@nota = nombres.map{|i| Student.new(i)}
    end
end
#arreglo de string
nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)#esta el arreglo creado con %w


## generando un nuevo arrefo de objetos students
#estudiante.first.nota = 5
#estudiantes.each{|i| puts "#{name}", "#{nota}"}
students =nombres.map{|nombre| Student.new(nombre)}     #map genera nuevo arreglo each nulo

#agregando notas a cada uno de los objetos student
#rand(1..10)} numeros aleatorios , se agrego index
students.each_with_index{|student,index| student.nota = index + 1} 

#mostrando datos
students.each{|s| puts "#{s}  #{s.name} #{s.nota}"}

#creando arreglo con las notas de los objetos(arreglo de intergers)
notas = students.map{|s| s.nota}
puts notas


#4

Class Punto
attr_accessor :x, :y
def initialize(x,y)
	@x = x
	@y = y
	end
end

puntos = []
10.times do 
	puntos << Punto.new(rand(1..10), rand(1..10))
end

puntos.each{|p| puts "#{p} #{p.x} #{p.y}"}
