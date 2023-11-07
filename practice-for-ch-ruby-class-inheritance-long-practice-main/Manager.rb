require_relative "Employee"

class Manager < Employee
    attr_accessor :employees
    def initialize(name, title, salary, boss)
        super
        employees = []
    end


end