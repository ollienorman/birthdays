require 'birthday_list'

describe BirthdayList do
  describe "#add_birthday" do
    it "adds a birthday that can be accessed later" do
      birthday_list = BirthdayList.new
      birthday = "06-06-1991"
      name = "Ollie"
      birthday_list.add_birthday(name, birthday)
      expect(birthday_list.print_birthdays).to eq "Name: Ollie, Birthday: 06-06-91"
    end
  end
end
