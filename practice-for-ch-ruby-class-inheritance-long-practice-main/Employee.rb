class Employee
    attr_accessor :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = nil
    end

    def assign_boss(new_boss)
        # self.boss = new_boss
        # self.boss.employees << self
    end



end
