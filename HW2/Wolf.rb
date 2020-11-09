p"___o8o_____________________oo"
p"___8**o__________________o**88"
p"__$8*8888_____________88$8*_88"
p"__$8*888$888$$$$$$$$88888***$8"
p"__$8*8$$8888*******8$88***8$8"
p"__888$8****************888$8"
p"__*$8******************8888$8"
p"__$$********************8888$8______oooooooo"
p"_8$8**8************8*****888$8___o$$$$$$8$$8888o"
p"_$$**8-8**********8-8*****88$8__$$88888********$$8"
p"_$$***$************$******88$8__$8888*********```$8"
p"_*$8****88***************88$$*__$888**********````$o"
p"__8$8**8$8**************88$8____$$8**********``````$8"
p"____8$88**********8**8888$8_____*$8**********``````$8"
p"______8$8$$$$$$$$$$$$$8*_________88*******8$$``8*88*"
p"______*$$**********$$$8ooo_______*$*******8$**8*_*"
p"_______8$**************$$$888___*$8******8$$*"
p"_______8$***8$8**88***$$$8$$$$$$$8*******8$*"
p"_______8$***$$8**$8*$$****$88$8$8*8**888888"
p"_____8$***$$$****8$$$******88*__*888888*"
p"______8888$$88888$$8888$$$88"
p"____________************* "
p"_______________________ИНСТРУКЦИЯ__________________________"

class Cat


def initialize name
    @name = name
    @sleep = 0
    @full_stomach = 100  #  Он сыт.
    @funny =  100  #  Ему не надо гулять.
    @toilet = 0
    @clean = 100
    @health = 100

    puts @name + ' родился.'
end

def feed
    puts "Вы кормите #{@name}."
    @full_stomach +=20
        @sleep += 5
    	@clean -=2
    if @full_stomach >100
    	@full_stomach = 100
    end
end
#_________________________________________________________________________________
def walk
    puts "Вы выгуливаете #{@name}."
    @funny += 50
    @clean -=2
    if @funny > 100
    	@funny =100
    end
end
#_________________________________________________________________________________
def piss
	puts "Вы сводили в туалет #{@name}."
	@toilet -= 85
	@sleep += 5
	@clean -= 2
	if @toilet < 0 
		@toilet = 0
	end
end
#_________________________________________________________________________________
def clean 
	puts "Вы почистили комнату #{@name}"
	@clean += 100
	@sleep += 15	
	if @clean > 100
		@clean = 100
	end
end
#_________________________________________________________________________________
def fix_helth
	puts "Вы полечили #{@name}, теперь он(а) чувствует себя лучше"
	@health +=50
	@sleep +=10
	@clean -=2
	if @health >= 100
		@health = 100
	end
end
#_________________________________________________________________________________

def print_points
	p "Имя:#{@name}"
	p "Здоровье:#{@health}"
	p "Сытость:#{@full_stomach}"
	p "Настроение:#{@funny}"
	p "Нужда:#{@toilet}"
	p "Чистота комнаты:#{@clean}"
	p "Бодрость:#{@sleep}"
end

def go_to_sleep
	@sleep -= rand(25..100)
	if @sleep <= 50
		p"I slept very well"
		@health += rand(0..15)
		@clean -=15
	else
		p"I didn't sleep well"
		@clean -=15
	end
end

def waiting
	changing_time()
end

private
def changing_time
	@full_stomach -=10
	@funny -=15
	@toilet +=14
	if @funny < 0
		p "I`ll go away"
	end
	if @funny <= 30
		p "I`m so borred"
		@sleep =-50
	end
	
	if @full_stomach <= 0
		@health = 0
	end
	
	if @full_stomach <= 30
		p "I`m want pizza"
	end

	if @toilet >=70
		@health -= 10
		p "I`m feel so bad"
	end

	if @health <=50
		p"I'm getting worse"
		@full_stomach -= 25
		@funny -= 40
		@toilet += 60
	end

	if @toilet >=100
		p "Ohh.. no. I`ve pissed on your new carpet"
		@toilet = 0
		@clean -=25
	end
	

	if @clean <= 50
		@health -= 15
		p "It`s smells so bad("
	end
	

	if @clean <= 0
		@clean = 0
		p"I died from this smell"
	end

	if @sleep >= 85
		p"I want to sleep...ZZzz"
	end

	if @sleep >= 100
		p"Please, put me to sleep"
		@health -= 50
	end

	if @sleep >= 100
		@sleep = 100
	end

	if @health >= 100
		@health = 100
	end

	if @health <= 0
		p"WASTED"
		exit
	end
end
end

#Cheats

#def change_time
#	future = now + 3600
#nd





name = gets.chomp
pet = Cat.new"#{name}"


x = gets.chomp.to_i
while x !=0
	pet.waiting()
	case x
	when 1
		pet.feed
		pet.print_points
		x = gets.chomp.to_i
	when 2
		pet.walk
		pet.print_points
		x = gets.chomp.to_i
	when 3
		pet.piss
		pet.print_points
		x = gets.chomp.to_i
	when 4
		pet.clean
		pet.print_points
		x = gets.chomp.to_i
	when 5
		pet.fix_helth
		pet.print_points
		x = gets.chomp.to_i
	when 6 
		pet.go_to_sleep
		pet.print_points
		x = gets.chomp.to_i
	when 9
		pet.print_points
		x = gets.chomp.to_i
	else
		p"Exeption:You used the usless key"
		break
	end
end

