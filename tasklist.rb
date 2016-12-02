class TaskList

  def initialize
    @completed = []
    @incomplete = []
    @due_completed = []
    @due_incomplete = []
  end

  def add_completed(task)
    @completed << task
  end

  def completed
    @completed
  end

  def add_incomplete(task)
    @incomplete << task
  end

  def incomplete
    @incomplete
  end

  def due_add_completed(task)
    @due_completed << task
  end

  def due_completed
    @due_completed
  end

  def due_add_incomplete(task)
    @due_incomplete << task
  end

  def due_incomplete
    @due_incomplete
  end

end
