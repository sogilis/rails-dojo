class Month
  def initialize(month, year)
    @month = month
    @year = year
  end

  def each_day(&block)
    nb_days = Time.days_in_month @month, @year
    1.upto nb_days do |day|
      block.call Date.new(@year, @month, day)
    end
  end
end

