$global_variable=10
class Customer
    @@no_of_customers=0
    def initialize(id,name,addr)
        @custid=id
        @name=name
        @addr=addr
        @@no_of_customers+=1
    end
    def show
        puts "#{@custid}\n#{@name}\n#{@addr}"
        puts "Customers: #{@@no_of_customers}"
        puts "#{$global_variable}"
    end
end
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust1.show
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
cust2.show
