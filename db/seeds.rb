# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


be2311 = Cohort.create(name:"BE2311", active:true, length: 7)
fe2311 = Cohort.create(name:"FE2311", active:true, length: 7)
launch2310 = Cohort.create(name:"Launch2310", active:false, length: 9)

faisal = be2311.students.create(name:"Faisal", age:24, enrolled:true)
