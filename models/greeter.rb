require 'date'

class Greeter

  def initialize(date)
    @date = date
  end

  def greet
    if @date == Date.today
      'Happy Birthday!'
    elsif (@date - Date.today) % 365 == 1
      "Your birthday is tomorrow!"
    else
      "There are #{Calendar.new(@date).days_left} days to your birthday."
    end
  end

=begin
greet 'hb' if today is birthday
greet 'you have x days left to your bd' if not
=end
end
