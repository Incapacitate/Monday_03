require 'time'
require 'pry'

class Event
  attr_accessor :start_date, :length, :title, :attendees
  # Event.new("2019-01-13 09:00", 10, "standup quotidien [...], "bidule@chose.fr"])

  def initialize(my_start_date, my_length, my_title, my_attendees)
    @start_date = Time.parse(my_start_date)
    @length = my_length
    @title = my_title
    @attendees = my_attendees
  end

  def postpone_24
    @start_date = @start_date + 60 * 60 * 24
    return @start_date
  end

  def end_date
    @end_date = @start_date + @length
    return @end_date
  end

  def is_past
    if @start_date < Time.now
      return true
    else
      return false
    end
  end

  def is_future
    !self.is_past
  end

  def is_soon
    if (@start_date - 30 * 60) > Time.now
      return true
    else
      return false
    end
  end

  def to_s
    puts "Titre : #{my_title}"
    puts "Date de début : #{my_start_date}"
    puts "Durée : #{my_length}"
    puts "Invités : #{my_attendees}"
  end

end

binding.pry