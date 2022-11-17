# A Hash is a collection of key-value pairs like this: "employee" = > "salary".
# They are also called associative arrays, dictionaries or maps.
# It is similar to an Array, except that indexing is done via
# arbitrary keys of any object type, not an integer index.

# Key is String.
puts 'When key is String.'
name1 = { 'key1' => 'Ram', 'key2' => 'Shyam', 'key3' => 'Sita' }
puts "#{name1['key2']}"

# Key is Symbol.
puts 'When key is Symbol.'
name2 = { key1: 'Brahma', key2: 'Vishnu', key3: 'Mahesh' }
# name2 = { :key1 => 'Brahma', :key2 => 'Vishnu', :key3 => 'Mahesh' }  --Same as above.--
puts "#{name2[:key1]}"

# You can use any Ruby object as a key or value, even an array, for example
# [1,"jan"] => "January"

# Creating empty/nil Hash
months = {}
# months = Hash.new           --Also Valid--

# Creating Hash with dafault value.
months = Hash.new('month')
puts "Default Hash: #{months[2]}" # month
# months = Hash.new 'month'   --Also Valid--

key_val = Hash['alpha' => 100, 'beta' => 200]
# key_val = { 'alpha' => 100, 'beta' => 200 }         --Also Valid--
# key_val = ['alpha' => 100, 'beta' => 200]           --Invalid Syntax (Error)--
# key_val = Hash{'alpha' => 100, 'beta' => 200}       --Invalid Syntax (Error)--
print "Value of alpha key: ", key_val['alpha']
puts
puts "Value of beta key: #{key_val['beta']}"
puts

# ---Modifying Ruby Hash---
puts '---Modifying Existing Hash---'
key_val['alpha'] = 250
key_val['beta'] = 400
puts "After modifying value of alpha: #{key_val['alpha']}"
puts "After modifying value of beta: #{key_val['beta']}"

# A Ruby hash can be modified by adding or 
# removing a key value pair in an already existing hash.
puts '---Adding Hash---'
key_val['gamma'] = 500
puts

# ------Hash Methods------
puts "------Hash Methods------"

h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
puts '---store and delete---'
h.store(6, 36)
puts "Hash after store(key, value): #{h}"
h.delete(3)
puts "Hash after delete(key): #{h}"
puts

puts '---keep_if and delete_if---'

h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
h.keep_if {|key, value| key != 3}
puts "After keep_if (k != 3): #{h}"
# output = {1 => 1, 2 => 4, 4 => 16, 5 => 25}

h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
h.delete_if {|key, value| key == 5}
puts "After delete_if (k == 5): #{h}"
# output = {1 => 1, 2 => 4, 3 => 9, 4 => 16}
