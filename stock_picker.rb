def stock_picker(days_arr)
	days = 0
	max = 0
	range = []

	#loops until days is the same as the lenght of the array
	while days < days_arr.length
		bought = days_arr[days]

		#here iterates from the value of days until 6
		(days...days_arr.length-1).each do |price|
			sold = days_arr[price + 1]
			profit = sold - bought

			#checks if the actual profit is higher
			#than it's previous value, if it's, it changes
			#buy and sell days
			if profit > max
				max = profit
				range = days, price + 1
			end
		end
		days += 1
	end
	print range				 
end

stock_picker([17,3,6,9,15,8,6,1,10])