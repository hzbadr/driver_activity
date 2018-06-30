class DailyActivitiesController < ApplicationController

  def index
    day = params[:day].to_date
    @activities = DailyActivity.where(driver_id: params[:driver_id], day: day)
    render json: @activities.to_json(only: [],
                                     methods: [
                                       :from,
                                       :to,
                                       :activity,
                                       :duration
                                     ])
  end
end
