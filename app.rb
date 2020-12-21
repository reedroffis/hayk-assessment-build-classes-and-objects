class Building
    attr_accessor :name, :number_of_tenants
    attr_reader :address

    @@all = [] #class variable

    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants

        @@all << self
    end 

    def self.all
        @@all
    end

    def self.average_number_of_tenants
        tenant_count = @@all.reduce(0) do |total, building|
            total + building.number_of_tenants
    end

    average = tenant_count / @@all.count
    
end
end
