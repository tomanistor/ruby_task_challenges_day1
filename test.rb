require 'date'

class Test

  def initialize(todo, description, month, day, year)
    @duedate = Date.new(year, month, day)
  end

end
