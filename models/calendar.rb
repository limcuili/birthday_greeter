require 'date'

class Calendar

  def initialize(birthday_date)
    @birthday_date = birthday_date
  end

  def days_left
    # modulos work for negatives
    return (((@birthday_date - Date.today).to_i) % 365)
  end

end
