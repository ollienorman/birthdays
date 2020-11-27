require 'birthday_list'

describe BirthdayList do
  describe "#add_birthday" do
      birthday_list = BirthdayList.new
      birthday_list.add_birthday("Test", "27-11-1991")
      specify {expect{birthday_list.print_birthdays}.to output("Name: Test, Birthday: 27-11-91\n").to_stdout}
  end

  describe "#birthdays_today" do
    birthday_list = BirthdayList.new
    birthday_list.add_birthday("Test", "27-11-1991")
    specify {expect{birthday_list.birthdays_today}.to output("Name: Test\n").to_stdout}
  end
end
