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
