function compgen()
	numbers = [1:3...]
	for i in 1:3
		r_num = rand(1:49) # seed
		numbers[i] =r_num
	end
	return numbers
end

function usernumber()
	numbers = [1:3...]
	for i in 1:3
		print("Enter the $i number : ")
		num = readline()
		num = parse(Int8,num)
		numbers[i] =num
	end
	return numbers
end

comp_numbers = compgen()
println(comp_numbers)
user_numbers = usernumber()

function checknumbers()
	points = 0
	correct = 0
	for num in user_numbers
		if num in comp_numbers
			points+=25
			correct+=1
		end
	end
	return points, correct
end
points, correct =  checknumbers()

println("You guessed $correct numbers correctly you have $points points")
if correct==3
	println("You are the jackpot winner")
else
	println("You guessed $user_numbers expected were $comp_numbers")
end

