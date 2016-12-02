require 'rspec'
require_relative 'duedatetask'

describe "DueDateTask" do

  before(:all) do
    @due = DueDateTask.new("task_due","task_desc", 1, 1, 1001)
  end

  # Create new due task list
  before(:each) do
    @list = TaskList.new
    @t1 = Task.new("Task1","This is a test task, DONT DO IT IDIOT")
    @t1.done = true
    @t2 = Task.new("Task2","This is a test task, DONT DO IT IDIOT")
    @due1 = DueDateTask.new("task_due","task_desc", 1, 1, 1001)
    @due1.done = true
    @due2 = DueDateTask.new("task_due","task_desc", 2, 2, 1002)

    @list.add_completed @t1
    @list.add_incomplete @t2
    @list.due_add_completed @due1
    @list.due_add_incomplete @due2

  end

  it "should have a todo (task_due)" do
    expect(@due.todo).to eq "task_due"
  end

  it "should print out an item with labels, including due date" do
    expect(@due.details).to eq "ToDo: #{@due.todo} ; Description: #{@due.description} ; Due Date: #{@due.duedate}"
  end

  it "should add tasks to appropriate arrays" do
    expect(@list.incomplete).to match_array([@t2])
    expect(@list.completed).to match_array([@t1])
    expect(@list.due_incomplete).to match_array([@due2])
    expect(@list.due_completed).to match_array([@due1])
  end

end
