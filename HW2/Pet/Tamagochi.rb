require_relative 'UI'
class Cat < Ui


def initialize name
    @name = name
    @sleep = 0
    @full_stomach = 100 
    @funny =  100 
    @toilet = 0
    @clean = 100
    @health = 100
    @shower = 100
    headline()

    puts @name + ' was born.'
end

def feed
    puts "You fed #{@name}."
    @full_stomach +=20
        @sleep += 5
    	@clean -=2
    	@shower -=2
    	chack()
end
#_________________________________________________________________________________
def walk
    puts "You took a walk with #{@name}."
    @funny += 50
    @clean -=2
    @shower -=10
    chack()
end

#_________________________________________________________________________________
def piss
	puts "You took #{@name} to the bathroom."
	@toilet -= 85
	@sleep += 5
	@clean -= 2
	@shower -= 5
	chack()
end

#_________________________________________________________________________________
def clean 
	puts "You cleaned the room #{@name}"
	@clean += 100
	@sleep += 15
	@shower -= 10
	chack()
end	
#_________________________________________________________________________________
def fix_helth
	puts "You are healed #{@name}, now he/she feels better"
	@health += 50
	@sleep += 10
	@clean -= 2
	chack()
end
#_________________________________________________________________________________

def print_points
	p "Имя:#{@name}"
	p "Здоровье:#{@health}"
	p "Сытость:#{@full_stomach}"
	p "Настроение:#{@funny}"
	p "Нужда:#{@toilet}"
	p "Чистота комнаты:#{@clean}"
	p "Усталость:#{@sleep}"
	p "Чистота:#{@shower}"
end

def random_frazes
    a1 = "I'm sorry but I'm a little busy right now"
    b1 = 'I want a new toy'
    c1 = 'Did you hear that sound? What was that?' 
    x = rand(1..3)
    if x == 1
    	cat(a1)
    end
    if x == 2
    	cat(b1)
    end
    if x == 3 
    	cat(c1)
    end
end

def wash
	puts "You washed #{@name}"
	@shower = 100
	chack()
end

def go_to_sleep
	@sleep -= rand(25..100)
	if @sleep <= 50
		cat("I slept very well")
		@health += rand(0..15)
		@clean -=15
	else
		cat("I didn't sleep well")
		@clean -=15
	end
	chack()
end

def waiting
	changing_time()
end


def chack
	if @shower<=30
		cat("I feel so dirty, please clean me!!")
	end

	if @funny < 0
		@funny = 0
		cat("I`ll go away")
	end

	if @funny <= 30
		cat("I`m so borred")
		@sleep =-15
	end
	
	if @full_stomach <= 0
		@health = 0
	end
	
	if @full_stomach <= 30
		cat("I`m want something tasty)")
	end

	if @toilet >=70
		@health -= 10
		cat("I`m feel so bad, I want to piss")
	end

	if @health <=50
		cat("I'm getting worse")
		@full_stomach -= 25
		@funny -= 20
		@toilet += 30
	end

	if @toilet >=100
		cat("Ohh.. no. I`ve pissed on your new carpet")
		@toilet = 0
		@clean -=15
	end
	

	if @clean <= 50
		@health -= 10
		cat("It`s smells so bad(")
	end
	

	if @clean <= 0
		@clean = 0
		cat("I`ll died from this smell")
	end

	if @sleep >= 85
		cat("I want to sleep...ZZzz")
	end

	if @sleep >= 100
		cat("Please, put me to sleep")
		@health -= 25
	end

	if @health <= 0
		p"WASTED"
		exit
	end

	if @sleep >= 100
		@sleep = 100
	end
	if @sleep <= 0
		@sleep = 0
	end
	if @full_stomach >= 100
		@full_stomach = 100
	end
	if @full_stomach <= 0
		@full_stomach = 0
	end
	if @funny >= 100
		@funny = 100
	end
	if @funny <= 0
		@funny = 0
	end
	if @toilet >= 100
		@toilet = 100
	end
	if @toilet <= 0
		@toilet = 0
	end
	if @clean >= 100
		@clean = 100
	end
	if @clean <= 0
		@clean = 0
	end
	if @health >= 100
		@health = 100
	end
	if @health <= 0
		@health = 0
	end
	if @shower >= 100
		@shower = 100
	end
	if @shower <= 0
		@shower = 0
	end

end

private
def changing_time
	@full_stomach -=5
	@funny -=10
	@toilet +=14
	@sleep += 5
end

end



def help
	p 'Press 0 to exit'
	p 'Press 1 to feed your cat'
	p 'Press 2 to walk with your cat'
	p 'Press 3 to let your cat go to the toilet'
	p 'Press 4 to clean your cats room'
	p 'Press 5 to fix your pet'
	p 'Press 6 to go to sleep'
	p 'Press 7 to wash your cat'
	p 'Press 8 to watch a free time of your cat'
	p 'Press 9 to skip some time'
end

p "Enter your pet`s name:"
name = gets.chomp
pet = Cat.new"#{name}"
x = gets.chomp.to_s
while x !="0"

	case x
	when "1"
		pet.feed
		pet.print_points
		pet.waiting()
		x = gets.chomp.to_s
	when "2"
		pet.walk
		pet.print_points
		pet.waiting()
		x = gets.chomp.to_s
	when "3"
		pet.piss
		pet.print_points
		pet.waiting()
		x = gets.chomp.to_s
	when "4"
		pet.clean
		pet.print_points
		pet.waiting()
		x = gets.chomp.to_s
	when "5"
		pet.fix_helth
		pet.print_points
		pet.waiting()
		x = gets.chomp.to_s
	when "6" 
		pet.go_to_sleep
		pet.print_points
		pet.waiting()
		x = gets.chomp.to_s
	when "7" 
		pet.wash
		pet.print_points
		pet.waiting()
		x = gets.chomp.to_s
	when "8" 
		pet.random_frazes
		x = gets.chomp.to_s
	when "9"
		pet.waiting
		pet.print_points
		x = gets.chomp.to_s
    when "help"
    	help()
    	x = gets.chomp.to_s
	else
		p"Exeption:You used the usless key. Please use 'help' to understand what`s wrong"
		x = gets.chomp.to_s
	end
end

