require 'json'
require 'nokogiri'

xml_file = ARGV[0]
parsed_xml = Nokogiri::XML(File.open(xml_file))

json_file = ARGV[1]
json_hash = JSON.parse(File.read(json_file))

counter = 0

json_hash.each do |k, v|

	parsed_xml.css(k).each do |item|
		
		counter += 1
	end

end

puts Math.sqrt(counter)

