# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Category.create([
  {:name => "Smart Phone"},
  {:name => "Laptop"},
  {:name => "Desktop"}
])

Manufacturer.create([
  {:name => "Apple", :website => "https://www.apple.com"},
  {:name => "Lenovo", :website => "https://www.lenovo.com"},
  {:name => "Dell", :website => "https://www.dell.com"}
])

5.times do |n|
  #Create employee
  employee_instance = Employee.create({:first_name => "employee", :last_name => "#{n}"})

  #Create device and employee association
  Device.create({:name =>  Category.first.name + " #{employee_instance.id}",
                 :manufacturer => Manufacturer.first,
                 :category => Category.first,
                 :employee => employee_instance
  })

  #Create another device and employee association
  Device.create({:name =>  Category.second.name + " #{employee_instance.id}",
                 :manufacturer => Manufacturer.second,
                 :category => Category.second,
                 :employee => employee_instance
  })

  #Create Software
  Software.create({
    :name => "Software #{n+1}",
    :license_count => rand(1..5)
  })

end

#Assign random software package to each employee
3.times do |n|
  5.times do |r|
    Software.find(rand(1..5)).employees << Employee.find(r+1)
  end
end



