#Task1
array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
p array
#1
p'количество элементов в массиве'
p array.length
#2
p 'перевернутый массив'
p array.reverse
#3
p 'наибольшее число' 
p array.max
#4
p 'наименьшее число'
p array.min
#5
p'отсортировать от меньшего к большему'
p array.sort
#6
p'отсортировать от большего к меньшему;'
p array.sort.reverse
#7
p'удалить все нечетные числа'
p array.select {|number| number.even?}
#8
p'числа, которые без остатка делятся на 3'
p array.select {|number| number % 3 == 0}
#9
p"без повторов#{array.uniq}"
#10
p" разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого#{array.map{ |element| element/10.0 }}"

#11
p'получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве'
#second_array=('a'..'z').to_a
#array_abc=Array.new()
#puts array.length
#0..array.length-1).each do |i|
#  (0..new_array.size-1).each do |y|
 #   if array[i]==y
  #    array_abc << second_array[y]
   # end
#end
#end
#print array_abc,"\n"

#12
p'поменять местами минимальный и максимальный элементы массива;поменять местами минимальный и максимальный элементы массива'
min = array.index(array.min)
max = array.index(array.max)
array[min], array[max] = array[max], array[min]
p array

p'найти элементы, которые находятся перед минимальным числом в массиве'
(0..array.index(array.min)).each do |i|
	print "#{array[i]} "
end
#13
p'необходимо найти три наименьших элемента.'
array1 = array
3.times do
	print "#{array1.min} "
	array1.delete(array1.min)
end
