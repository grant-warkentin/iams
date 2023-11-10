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

  #Create Software
  Software.create({:name => "Software #{n+1}",
                   :license_count => rand(1..5)
    })
end

#Assign 3 random software packages to each employee
Employee.count.times do |r|
  3.times do |n|
    Software.find(rand(1..5)).employees << Employee.find(r+1)
  end
end

#Create 3 Devices for each Category for each Manufacturer
Manufacturer.count.times do |n|
  Category.count.times do |r|
    3.times do |p|
      #check to see if random device already exists
      device_name = "Device #{rand(1..100)}"
      while Device.where(name: device_name).exists?
        device_name = "Device #{rand(1..100)}"
      end

      Device.create({:name =>  device_name,
                     :manufacturer => Manufacturer.find(n+1),
                     :category => Category.find(r+1)
      })
    end
  end
end

#Assign 3 unassigned devices to each employee
pointer = 0
Employee.count.times do |n| 
  3.times do |r|
    pointer += 1
    Device.where(id: pointer).update({:employee => Employee.find(n+1)})
  end
end
