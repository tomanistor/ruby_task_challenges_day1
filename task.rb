# Story: As a developer, I can create a Task.
class Task

  def initialize(todo, description)
    @todo = todo #gets todo
    @description = description
    @done = false
  end

  def todo #Retrieves todo
    @todo
  end

  def description
    @description
  end

  def done=(boolean)

    if boolean == true
      @done = "ToDo: #{@todo} ; Description: #{@description}"
    end

  end

  def done?
    @done
  end

end
