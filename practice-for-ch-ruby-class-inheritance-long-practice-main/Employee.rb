class Employee
    attr_accessor :boss
    def initialize(name, title, salary,boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end
    def assign_boss
        self.boss = new_boss
        new_boss.employees << self
    end
end
