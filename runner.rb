require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new(
                          first_name: "Majora", 
                          last_name: "Carter", 
                          salary: 80000, 
                          active: true
                        )

employee2 = Actualize::Employee.new(
                          first_name: "Danilo", 
                          last_name: "Campos", 
                          salary: 70000, 
                          active: true
                        )

# employee1.print_info
# employee2.print_info

manager = Actualize::Manager.new(
                        first_name: "Saron", 
                        last_name: "Yitbarek", 
                        salary: 100000, 
                        active: true, 
                        employees: [employee1, employee2]
                      )

intern = Actualize::Intern.new(
                      first_name: "Joe", 
                      last_name: "Smo", 
                      salary: 1000, 
                      active: true
                    )

# manager.print_info
# manager.send_report
p manager.give_all_raises
p manager.fire_all_employees

manager.print_info
intern.print_info