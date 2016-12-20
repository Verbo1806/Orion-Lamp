require 'nokogiri'
require 'json'

xml_file = ARGV[0]
doc = Nokogiri::XML(File.open(xml_file))
json_file = File.read(ARGV[1])
json_hash = JSON.parse(json_file)

counter = 0

json_hash.each do |k, v|

	doc.css(k).each do |item|

		counter += 1
	
	end

end

puts Math.sqrt(counter)
