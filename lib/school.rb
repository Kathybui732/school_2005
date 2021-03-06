class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    if (@start_time.to_i + @hours_in_school_day) < 24
      "#{@start_time.to_i + @hours_in_school_day}:00"
    else (@start_time.to_i + @hours_in_school_day) < 24
      "#{@start_time.to_i + @hours_in_school_day - 24}:00"
    end
  end

  def is_full_time?
    return true if @hours_in_school_day > 4
    false
  end

  def standard_student_names
    @student_names.map do |name|
      name.capitalize
    end
  end

  def can_convert_end_time
    if (@start_time.to_i + @hours_in_school_day) < 12
      "#{@start_time.to_i + @hours_in_school_day}:00"
    else (@start_time.to_i + @hours_in_school_day) < 12
      "#{@start_time.to_i + @hours_in_school_day - 12}:00"
    end
  end
end
