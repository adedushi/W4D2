class Employee
    attr_accessor :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = nil
    end

    def assign_boss(new_boss)
        self.boss = new_boss
        self.boss.employees << self
    end



end

class Manager < Employee


    attr_accessor :employees
    def initialize(name, title, salary, boss)
        super
        @employees = []
    end

end
ned = Manager.new("ned","Founder",1000000,nil)

darren= Employee.new("Darren","TA Manger", 78000, ned)
p darren.assign_boss(ned)
p ned 