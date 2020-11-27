require 'birthday_list'

describe BirthdayList do
  describe "#add_birthday" do
    it "adds a birthday that can be accessed later" do
      birthday_list = BirthdayList.new
      birthday_list.add_birthday("Test", "27-11-1991")
      expect(birthday_list.print_birthdays).to eq "Name: Test, Birthday: 27-11-91"
    end
  end

  describe "#birthdays_today" do
    it "checks to see if any birthdays are today, and returns the result" do
      birthday_list = BirthdayList.new
      birthday_list.add_birthday("Test", "27-11-1991")
      expect(birthday_list.birthdays_today).to eq "Name: Test"
    end
  end
end
