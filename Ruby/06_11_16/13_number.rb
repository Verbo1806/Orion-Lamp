require 'csv'

csv_file = ARGV[0]
C1 = 0
C2 = 1
C3 = 2
sum = 0

is_first_line = 0

CSV.foreach(csv_file) do |row|

		if(is_first_line != 0) then
	
				if(row[C1].to_i > 17 && row[C2].include?("tues")) then

						sum += row[C3].to_i
				end
		end
		
		is_first_line += 1

end

puts sum
