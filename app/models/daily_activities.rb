class DailyActivities
  def self.for_month(month)
    DailyActivities.new month
  end
 
  def each_day(&block)
    @month.each_day do |day|
      block.call day, Activity.for_morning(day), Activity.for_afternoon(day)
    end
  end
  
  private
  
  def initialize(month)
    @month = month
  end
end

