#Task1
puts "Task1"
p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
array = [3 ,7 ,-4 ,9 ,-12 ,6]
p array
array.each_with_index do |add,index|
	if index % 2 == 0
		print array[index]
		print ' '
	end
end
array.each_with_index do |add,index|
	if index % 2 == 1
		print array[index]
		print' '
	end
end
puts " "
puts "Task2-----------------------------------------------------------------"

#Task2
p'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
array = [-12 ,7 ,-4 ,0 ,-12 ,6]
p array
array.each_with_index do |add,index|
	if index % 2 == 1
		print array[index]
		print' '
	end
end
array.each_with_index do |add,index|
	if index % 2 == 0
		print array[index]
		print' '
	end
end
puts " "
puts "Task3-----------------------------------------------------------------"

#Task3
p'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
array = [-12 ,7 ,-4 ,0 ,-12 ,6]
p array
isExist = false
array.each_with_index do |add,index|
	if array[0]<array[index] and array[index]<array[-1]
		isExist = true
		print index
		break
	end
end
	if not isExist
		print "[ ]"
	end
puts " "
puts "Task4----------------------------------------------------------------"

#Task4
p'Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
array = [1,2,3,4,5,6]
p array
x = "[ ]"
array.each_with_index do |add,index|
	if array[0]<array[index] and array[index]<array[-1]
		x = index
	end
end
print x
puts " "
puts "Task5-----------------------------------------------------------------"

#Task5
p'Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
array = [1,2,3,4,5,6]
p array
array.each_with_index do |add,index|
	if array[index] % 2 == 0 and index > 0 and index != array.length-1
		array[index]+=array[0]
	end
end
p array
puts " "
puts "Task6-----------------------------------------------------------------"

#Task6
p'Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
array = [1,2,3,4,5,6]
p array
array.each_with_index do |add,index|
	if array[index] % 2 == 0 and index > 0 and index != array.length-1
		array[index]+=array[-1]
	end
end
p array
puts "Task7-----------------------------------------------------------------"

#Task7
p'Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
array = [1,2,3,4,5,6]
p array
array.each_with_index do |add,index|
	if array[index] % 2 == 1 and index > 0 and index != array.length-1
		array[index]+=array[-1]
	end
end
p array
puts " "
puts "Task8-----------------------------------------------------------------"

#Task8
p'Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
array = [1,2,3,4,5,6]
p array
array.each_with_index do |add,index|
	if array[index] % 2 == 1 and index > 0 and index != array.length-1
		array[index]+=array[0]
	end
end
p array
puts " "
puts "Task9-----------------------------------------------------------------"

#Task9
p'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
array = [-12 ,2 ,-3 ,-7 ,0 , -15, 14]
p array
array.each_with_index do |add,index|
	if array[index]>=0 
		array[index]=array.min
	end
end
p array
puts " "
puts "Task10-----------------------------------------------------------------"

#Task10
p'Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
array = [-12 ,2 ,-3 ,-7 ,0 , -15, 14]
p array
array.each_with_index do |add,index|
	if array[index]>=0 
		array[index]=array.max
	end
end
p array
puts " "
puts "Task11-----------------------------------------------------------------"

#Task11
p'Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
array = [-12 ,2 ,-3 ,-7 ,0 , -15, 14]
p array
array.each_with_index do |add,index|
	if array[index]<0 
		array[index]=array.min
	end
end
p array
puts " "
puts "Task12-----------------------------------------------------------------"

#Task12
p'Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
array = [-12 ,2 ,-3 ,-7 ,0 , -15, 14]
p array
array.each_with_index do |add,index|
	if array[index]<0 
		array[index]=array.max
	end
end
p array
puts " "
puts "Task13-----------------------------------------------------------------"

#Task13
p'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
array = [1, 2, 3, 4, 5, 6]
p array
x=array[0]
array.each_with_index do |add,index|
	if index >= 0 and index < array.length-1
	array[index] = array[index+1]
	else
	array[-1]=x
    end
end
p array
puts " "
puts "Task14-----------------------------------------------------------------"

#Task14
p'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
array = [1, 2, 3, 4, 5, 6]
p array
p array.rotate(-1) #I find this function so late, so I didn`t want to change my solution in the last task. I hope you`ll understand:)
puts " "
puts "Task15-----------------------------------------------------------------"

#Task15
p'Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.'
array = [2, 4, 6, 8, 10, 12]
p array
x = array[1]-array[0]
isExist = true
array.each_with_index do |add,index|
	if index < array.length-1 and array[index+1]-array[index] != x
		isExist = false
		p"nil"
		break
	end
end
if isExist
	p x
end
puts " "
puts "Task16-----------------------------------------------------------------"

#Task16
p'Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.'
array = [2, 4, 8, 16, 32, 64]
p array
x = array[1]/array[0]
isExist = true
array.each_with_index do |add,index|
	if index < array.length-1 and array[index+1]/array[index] != x
		isExist = false
		p"nil"
		break
	end
end
if isExist
	p x
end
puts " "
puts "Task17-----------------------------------------------------------------"

#Task17
p'Дан целочисленный массив. Найти количество его локальных максимумов.'
array = [1, 0, 2, 0, 3, 0, 4, 0, 5]
p array
x = 0
array.each_with_index do |add,index|
	if index > 0 and index < array.length-1 
		if array[index-1] < array[index] and array[index] > array[index+1]
			x += 1
		end
	end
end
p x
puts " "
puts "Task18-----------------------------------------------------------------"

#Task18
p'Дан целочисленный массив. Найти количество его локальных минимумов.'
array = [0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0]
p array
x = 0
array.each_with_index do |add,index|
	if index > 0 and index < array.length-1 
		if array[index-1] > array[index] and array[index] < array[index+1]
			x += 1
		end
	end
end
p x
puts " "
puts "Task19-----------------------------------------------------------------"

#Task19
p'Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
array = [0, 1, 0, 2, 0, 5, 0, 4, 0, 3, 0]
p array
x = 0
array.each_with_index do |add,index|
	if index > 0 and index < array.length-1 
		if array[index-1] < array[index] and array[index] > array[index+1]
			if array[index] > x
				x = array[index]
			end
		end
	end
end
p x
puts " "
puts "Task20-----------------------------------------------------------------"

#Task20
p'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
array = [-6, 1, -1, 2, -2, 5, -5, 4, -4, 3, -3]
p array
x = 0
array.each_with_index do |add,index|
	if index > 0 and index < array.length-1 
		if array[index-1] > array[index] and array[index] < array[index+1]
			if array[index] < x
				x = array[index]
			end
		end
	end
end
p x
puts " "
puts "Task21-----------------------------------------------------------------"

#Task21
p'Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.'
array = [-6, 1, -1, 2, -2, 3, 4, 5, -4, 3, -3]
p array
x=0
array.each_with_index do |add,index|
	if index < array.length-1 and array[index+1]>array[index]
		x+=1
		if index > 0 and array[index]>array[index-1]
			x-=1
		end
	end
end
p x
puts " "
puts "Task22-----------------------------------------------------------------"

#Task22
p'Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают.'
array = [-1,-2,-3,-4,-3,-4]
p array
x=0
array.each_with_index do |add,index|
	if index < array.length-1 and array[index+1]<array[index]
		x+=1
		if index > 0 and array[index]<array[index-1]
			x-=1
		end
	end
end
p x
puts " "
puts "Task23-----------------------------------------------------------------"

#Task23
p'Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.'
array = [-5, -4, -3, -2, 0, -1, 2, 3, 4, 5]
p array
r = Random.rand(-7.0..9.99)
p r
x=(array[0]-r).abs
ans = 0
array.each_with_index do |add,index|
    if x > (array[index]-r).abs
        x = (array[index]-r).abs
        ans = index
    end
end
puts array[ans]
puts " "
puts "Task24-----------------------------------------------------------------"

#Task24
p'Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.'
array = [-5, -4, -3, -2, 0, -1, 2, 3, 4, 5]
p array
r = Random.rand(-7.0..9.99)
p r
x=(array[0]-r).abs
ans = 0
array.each_with_index do |add,index|
    if x < (array[index]-r).abs
        x = (array[index]-r).abs
        ans = index
    end
end
puts array[ans]
puts " "
puts "Task25-----------------------------------------------------------------"

#Task25
p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
array = Array.new(8) { rand(-10..10) }
p array
count = 0 
(0..array.length-1).each do |i|
	if count + i < array.length and array[i+count] > 0
		array.insert(i+count,array[0])
		count += 1
	end
end
p array
puts " "
puts "Task26-----------------------------------------------------------------"

#Task26
p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
array = Array.new(8) { rand(-10..10) }
p array
count = 0 
(0..array.length-1).each do |i|
	if count + i < array.length and array[i+count] < 0
		array.insert(i+count,array[0])
		count += 1
	end
end
p array
puts " "
puts "Task27-----------------------------------------------------------------"

#Task27
p 'Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'
array = Array.new(8) { rand(-10..10) }
p array
count = 0 
(0..array.length-1).each do |i|
	if count + i < array.length and array[i+count] > 0
		array.insert(i+count+1,array[0])
		count += 1
	end
end
p array
puts " "
puts "Task28-----------------------------------------------------------------"

#Task28
p 'Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.'
array = Array.new(8) { rand(-10..10) }
p array
count = 0 
(0..array.length-1).each do |i|
	if count + i < array.length and array[i+count] < 0
		array.insert(i+count+1,array[0])
		count += 1
	end
end
p array
puts " "
puts "Task29-----------------------------------------------------------------"

#Task29
p'Дан целочисленный массив. Упорядочить его по возрастанию.'
array = Array.new(8) { rand(-10..10) }
p array
array = array.sort
p array
puts " "
puts "Task30-----------------------------------------------------------------"

#Task30
p'Дан целочисленный массив. Упорядочить его по убыванию.'
array = Array.new(8) { rand(-10..10) }
p array
array = array.sort
array = array.reverse
p array
puts " "
puts "Task31-----------------------------------------------------------------"

#Task31
p'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
array = Array.new(8) { rand(-10..10) }
p array
array.each_with_index do |add,index|
	if index < array.length-1 and array[index] > array[index+1]
		print"#{index} "
	end
end
puts " "
puts "Task32-----------------------------------------------------------------"

#Task32
p'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
array = Array.new(8) { rand(-10..10) }
p array
array.each_with_index do |add,index|
	if index < array.length-1 and array[index] < array[index+1]
		print"#{index} "
	end
end
puts " "
puts "Task33-----------------------------------------------------------------"

#Task33
p'Дан целочисленный массив. Найти индекс минимального элемента.'
array = Array.new(8) { rand(-10..10) }
p array
array.each_with_index do |add,index|
	if array[index] == array.min
		print index
	end
end
puts " "
puts "Task34-----------------------------------------------------------------"

#Task34
p'Дан целочисленный массив. Найти индекс максимального элемента.'
array = Array.new(8) { rand(-10..10) }
p array
array.each_with_index do |add,index|
	if array[index] == array.max
		print index
	end
end
puts " "
puts "Task35-----------------------------------------------------------------"

#Task35
p'Дан целочисленный массив. Найти индекс первого минимального элемента.'
array = Array.new(8) { rand(-10..10) }
p array 
p array.index(array.min)
puts " "
puts "Task36-----------------------------------------------------------------"

#Task36
p'Дан целочисленный массив. Найти индекс первого максимального элемента.'
array = Array.new(8) { rand(-10..10) }
p array 
p array.index(array.max)
puts " "
puts "Task37-----------------------------------------------------------------"

#Task37
p'Дан целочисленный массив. Найти индекс последнего минимального элемента.'
array = Array.new(8) { rand(-10..10) }
p array 
p array.rindex(array.min)
puts " "
puts "Task38-----------------------------------------------------------------"

#Task38
p'Дан целочисленный массив. Найти индекс последнего максимального элемента.	'
array = Array.new(8) { rand(-10..10) }
p array 
p array.rindex(array.max)
puts " "
puts "Task39-----------------------------------------------------------------"

#Task39
p'Дан целочисленный массив. Найти количество минимальных элементов.'
array = Array.new(8) { rand(-10..10) }
p array 
min = 0
array.each_with_index do |add,index|
	if array[index] == array.min
		min+=1
	end
end
p min
puts " "
puts "Task40-----------------------------------------------------------------"

#Task40
p'Дан целочисленный массив. Найти количество максимальных элементов.'
array = Array.new(8) { rand(-10..10) }
p array 
min = 0
array.each_with_index do |add,index|
	if array[index] == array.max
		min+=1
	end
end
p min
puts " "
puts "Task41-----------------------------------------------------------------"

#Task41
p'Дан целочисленный массив. Найти минимальный четный элемент.'
array = Array.new(8) { rand(-10..10) }
p array 
array = array.select {|number| number.even?}
p array.min
puts " "
puts "Task42-----------------------------------------------------------------"

#Task42
p'Дан целочисленный массив. Найти минимальный нечетный элемент.'
array = Array.new(8) { rand(-10..10) }
p array 
array = array.select {|number| number.odd?}
p array.min
puts " "
puts "Task43-----------------------------------------------------------------"

#Task43
p'Дан целочисленный массив. Найти максимальный четный элемент.'
array = Array.new(8) { rand(-10..10) }
p array 
array = array.select {|number| number.even?}
p array.max
puts " "
puts "Task44-----------------------------------------------------------------"

#Task44
p'Дан целочисленный массив. Найти максимальный нечетный элемент.'
array = Array.new(8) { rand(-10..10) }
p array 
array = array.select {|number| number.odd?}
p array.max
puts " "
puts "Task45-----------------------------------------------------------------"

#Task45
p'Дан целочисленный массив. Найти минимальный положительный элемент.'
array = Array.new(8) { rand(-10..10) }
p array 
array = array.select {|number| number.positive?}
p array.min
puts " "
puts "Task46-----------------------------------------------------------------"

#Task46
p'Дан целочисленный массив. Найти максимальный отрицательный элемент.'
array = Array.new(8) { rand(-10..10) }
p array 
array = array.select {|number| number.negative?}
p array.max
puts " "
puts "Task47-----------------------------------------------------------------"

#Task47
p'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
array = Array.new(8) { rand(-10..10) }
p array 
a = 2
b = 5
p "#{a}..#{b}"
min = array[a]
    for i in a .. b
        if min > array[i]
        	min = array[i]	
        end
    end
p min
puts " "
puts "Task48-----------------------------------------------------------------"

#Task48
p'Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
array = Array.new(8) { rand(-10..10) }
p array 
a = 2
b = 5
p "#{a}..#{b}"
max = array[a]
    for i in a .. b
        if max < array[i]
        	max = array[i]	
        end
    end
p max
puts " "
puts "Task49-----------------------------------------------------------------"

#Task49
p'Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
array = Array.new(8) { rand(-10..10) }
p array 
p array.index(array.min)
puts " "
puts "Task50-----------------------------------------------------------------"

#Task50
p'Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
array = Array.new(8) { rand(-10..10) }
p array 
p array.index(array.max)
puts " "
puts "Task51-----------------------------------------------------------------"

#Task51
p'Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
array = Array.new(8) { rand(-10..10) }
p array 
y = array.index(array.max)+1
p x = array.length - y
puts " "
puts "Task52-----------------------------------------------------------------"

#Task52
p'Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.'
array = Array.new(8) { rand(-10..10) }
p array 
y = array.index(array.min)+1
p x = array.length - y
puts " "
puts "Task53-----------------------------------------------------------------"

#Task53
p'Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.'
array = Array.new(8) { rand(-10..10) }
p array 
p array.rindex(array.max)
puts " "
puts "Task54-----------------------------------------------------------------"

#Task54
p'Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.'
array = Array.new(8) { rand(-10..10) }
p array 
p array.rindex(array.min)
puts " "
puts "Task55-----------------------------------------------------------------"

#Task55
p'Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального.'
array = Array.new(8) { rand(-10..10) }
p array 
y = array.rindex(array.max)+1
p x = array.length - y
puts " "
puts "Task56-----------------------------------------------------------------"

#Task56
p'Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального.'
array = Array.new(8) { rand(-10..10) }
p array 
y = array.rindex(array.min)+1
p x = array.length - y
puts " "
puts "Task57-----------------------------------------------------------------"

#Task57
p'Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
array = Array.new(8) { rand(-10..10) }
p array 
x = array.index(array.max)
y = array.index(array.min)
if x < y 
	p x
else
	p y
end
puts " "
puts "Task58-----------------------------------------------------------------"

#Task58
p'Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.'
array = Array.new(8) { rand(-10..10) }
p array 
x = array.rindex(array.max)
y = array.rindex(array.min)
if x > y 
	p x
else
	p y
end
puts " "
puts "Task59-----------------------------------------------------------------"

#Task59
p'Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.'
array = Array.new(8) { rand(-10..10) }
p array 
x = array.index(array.min)
y = array.rindex(array.min)
if x == y
	p ans = y - x
else
	p ans = y - x - 1
end
puts " "
puts "Task60-----------------------------------------------------------------"

#Task60
p'Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным.'
array = Array.new(8) { rand(-10..10) }
p array 
x = array.index(array.max)
y = array.rindex(array.max)
if x == y
	p ans = y - x
else
	p ans = y - x - 1
end
puts " "
puts "-----------------------------------------------------------------"