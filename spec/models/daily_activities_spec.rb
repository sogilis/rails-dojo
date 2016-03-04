RSpec.describe DailyActivities do
  context '#each_day' do
    it 'yields morning and afternoon activity for each day' do
      activities = DailyActivities.for_month Month.new(4, 2016)
      expect { |b| activities.each_day &b }.to yield_control.exactly(30).times
    end
  end
end

