class Customer
    # Creating a new object cust1 of class Customer.
    cust1 = Customer.new
    puts "Hello"

    @@no_of_customers = 0
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end
    
    # Creating new object with parameters
    cust2 = Customer.new("1", "Abhay", "10 Downing Streets")
    cust3 = Customer.new("2", "Aarush", "Bunkingham Palace")
end


class Sample
    # Creating a new method.
    def say_hello
        puts "Hello from say_hello method."
    end

    # Creating a new object.
    object = Sample.new
    # Calling method with object.
    object.say_hello
end