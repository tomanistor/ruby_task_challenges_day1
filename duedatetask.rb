require 'date'
require_relative 'task'
require_relative 'tasklist'

class DueDateTask < Task

  def initialize(todo, description, month, day, year)
    super todo, description
    @duedate = Date.new(year, month, day)
    @details = "ToDo: #{@todo} ; Description: #{@description} ; Due Date: #{@duedate}"
  end

  def details
    @details
  end

  def duedate
    @duedate
  end

end
