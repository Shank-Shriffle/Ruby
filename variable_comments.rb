# ------Testing Local, Instance and Class Variables------

class Customer
   # @@no_of_customers is a Class Variable.
   @@no_of_customers = 0
    # id, name, addr are Local Variables.
    def initialize(id, name, addr)
       @cust_id = id
       @cust_name = name
       @cust_addr = addr
    # @cust_id, @cust_name, @cust_addr are Instance Variables.
    end

    def display_details()
       puts "Customer id #@cust_id"
       puts "Customer name #@cust_name"
       puts "Customer address #@cust_addr"
=begin
       NOTE − In Ruby, you CAN access value of any variable or 
       constant by putting a hash (#) character just before that 
       variable or constant.
=end

      def total_no_of_customers()
         @@no_of_customers += 1
         puts "Total number of customers: #@@no_of_customers"
      end

    end
 end
 
 # Create Objects
 cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
 cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
 
 # Call Methods
 cust1.display_details()
 cust2.display_details()
 puts ""
 cust1.total_no_of_customers()
 cust2.total_no_of_customers()
 # A static variable is implemented in ruby using class variable.
 puts ""

 

# ------Testing Global Variables------ 

$global_variable
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end
class Class2
   def print_global
      puts "Global variable in Class2 is #$global_variable"
   end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global