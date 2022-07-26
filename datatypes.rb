class Datatypes
  # String vs Symbol
	puts "------String vs Symbol------"
  puts 'Object id of String Hello:', 'Hello'.object_id
  puts 'Hello'.object_id
  puts 'Object id of Symbol Hello:', :Hello.object_id
  puts :Hello.object_id

  # Hashes are Key-Value pairs.
	puts "------Hashes------"
  data = { 'Sun' => 'Star', 'Earth' => 'Planet', 'Milkyway' => 'Galaxy' }
  puts data['Earth'], data['Sun']

  # Array
	puts "------Array------"
  data = ['Ankit', 'Bhavesh', 15, 2.75, 'Karan']
  puts data[0], data[3]
end
