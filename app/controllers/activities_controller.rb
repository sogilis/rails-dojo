class ActivitiesController < ApplicationController
  def index
    current_month = params.require(:month)
    @current_month = Month.new(current_month[:m].to_i, current_month[:y].to_i)
    
    @daily_activities = DailyActivities.for_month(@current_month)
  end
end
