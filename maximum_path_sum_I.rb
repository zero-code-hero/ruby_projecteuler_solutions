triangle = '75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23'
triangle_array = []
triangle = triangle.split("\n")
triangle.each do |x|
	tmp = x.split(' ')
	tmp2 = []
	tmp.each do |t|
		tmp2 << t.to_i
	end 
	triangle_array << tmp2 
end
def total_of_array(array)
	total = 0
	array.each do |entry|
		entry.each do |x|
			total+= x.to_i
		end
	end	
	total
end
def combine_row(array)
	new_array = []
	array = array.reverse
	count = 0
	tmp = []
	array[1].each do |item|
		tmp << item + array[0][count..count +1].max
		count +=1
	end
	new_array << tmp
	new_array.concat(array[2..-1])
	new_array = new_array.reverse
	new_array
	
end
def pathfinderv2(array)
	tmp_array = []
	count=array.count-1
	count.times do 
		array =  combine_row(array)
	end
	p "Highest value path is #{array[0][0]}"
end
pathfinderv2(triangle_array)
