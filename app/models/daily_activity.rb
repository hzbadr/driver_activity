class DailyActivity < ApplicationRecord
  def formatted_start_at
    start_at.to_s(:time)
  end

  def formatted_end_at
    end_at.to_s(:time)
  end

  def duration
    Time.at(end_at - start_at).utc.to_s(:time)
  end

  def activity
    activity_type
  end

  alias :from :formatted_start_at
  alias :to :formatted_end_at
end
