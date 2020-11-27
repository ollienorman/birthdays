require 'birthday_list'

describe BirthdayList do
  describe "#add_birthday" do
    it "adds a birthday that can be accessed later" do
      birthday_list = BirthdayList.new
      birthday = "27-11-1991"
      name = "Test"
      birthday_list.add_birthday(name, birthday)
      expect(birthday_list.print_birthdays).to eq "Name: Test, Birthday: 27-11-91"
    end
  end

  describe "#birthdays_today" do
    it "checks to see if any birthdays are today, and returns the result" do
      expect(birthday_list.birthdays.today).to eq "Name: Test"
    end
  end
end
