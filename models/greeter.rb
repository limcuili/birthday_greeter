require 'date'

class Greeter

  def initialize(date)
    @date = date
  end

  def greet
    if @date == Date.today
      'Happy Birthday!'
    else
      "There are x days left to your birthday"
    end
  end

=begin
greet 'hb' if today is birthday
greet 'you have x days left to your bd' if not
=end
end
