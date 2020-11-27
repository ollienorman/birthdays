require 'birthday_list'

describe BirthdayList do

    describe "#add_birthday" do
        it "adds a birthday that can be accessed later" do
            birthday_list = BirthdayList.new
            birthday = Time.new(1991, 6, 6)
            add_birthday("Ollie", birthday)
            expect(birthday_list.print_birthdays).to eq "Name: Ollie, Birthday: 06-06-91"
        end
    end


end
