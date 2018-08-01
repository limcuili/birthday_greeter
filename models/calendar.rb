require 'date'

class Calendar

  def initialize(date)
    @date = date
  end

  def days_left
    return (Date.today - @date).to_i
  end
=begin
here we will count the @days_left until a birthday
or it will determine that today is the birthday
=end
end
