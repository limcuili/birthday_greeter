require 'date'

class Calendar

  def initialize(date)
    @date = date
  end

  def days_left
    # modulos work for negatives
    return (Date.today - @date).to_i % 365
  end

end
