require "./reporting.rb"
require "./employee.rb"

module Actualize
  class Intern < Employee
    include Reporting
  end
end