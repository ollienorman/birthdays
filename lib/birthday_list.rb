class BirthdayList
  
  def initialize
    @birthday_hash = {}
  end

  def add_birthday(name, birthday)
    @birthday_hash[name.to_sym] = birthday
  end

  def print_birthdays
    @birthday_hash.each { |name, birthday| 
    return "Name: #{name.to_s}, Birthday: #{birthday.strftime("%d-%m-%y")}" }
  end

end
