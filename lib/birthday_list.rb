class BirthdayList
  require 'time'
  def initialize
    @birthday_hash = {}
  end

  def add_birthday(name, birthday)
    @birthday_hash[name.to_sym] = Time.parse(birthday)
  end

  def print_birthdays
    @birthday_hash.each { |name, birthday| 
      puts "Name: #{name}, Birthday: #{birthday.strftime("%d-%m-%y")}"}
  end

  def birthdays_today
    @birthday_hash.each { |name, birthday| 
        if today?(birthday)
          puts "Name: #{name}" 
        end }
  end

  def today?(birthday)
    t = Time.now
    birthday.day == t.day && birthday.month == t.month
  end
end
