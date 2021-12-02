# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fair.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'feriasample.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
puts csv_text
csv.each do |row|
    f = Fair.new
    f.name = row['NAME']
    f.description = row['DESCRIPTION']
    f.main_street = row['MAIN_STREET']
    f.first_street = row['FIRST_STREET']
    f.second_street = row['SECOND_STREET']
    f.commune = row['COMMUNE']
    f.day = row['DAY']
    f.start_time = row['START_TIME']
    f.end_time = row['END_TIME']
    f.save
endAdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?