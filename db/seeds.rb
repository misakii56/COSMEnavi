# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   ParsonalColor.create(color_name: 'Yellow')
#   SkinType.create(type_name: 'あ')
Admin.create!(
   email: 'test@test',
   password: '000000'
)