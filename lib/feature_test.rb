require './birthday_list.rb'

puts "Name?"
name = gets.chomp
puts "Birthday?"
birthday = gets.chomp
add_birthday(name, birthday)

print_birthdays

birthdays_today