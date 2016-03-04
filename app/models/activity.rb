class Activity < ActiveRecord::Base

  after_initialize :init

  def init
    self.description ||= ''
  end

  def empty?
    description.empty?
  end

  def self.for_afternoon(day)
    Activity.find_or_initialize_by day: day, day_half: 'pm'
  end

  def self.for_morning(day)
    Activity.find_or_initialize_by day: day, day_half: 'am'
  end
end
