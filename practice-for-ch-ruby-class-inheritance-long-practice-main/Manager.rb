require_relative "Employee"

class Manager < Employee


    attr_accessor :employees
    def initialize(name, title, salary)
        super
        employees = []
    end


    # def assign_boss(new_boss)
    #     self.boss = new_boss
    #     # @boss.employeees << self

    #     puts self.boss
    # end


end