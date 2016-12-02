require 'rspec'
require_relative 'tasklist'
require_relative 'task'

describe "TaskList" do

  # Create new tasklist
  before(:each) do
    @list = TaskList.new
    @t1 = Task.new("Task1","This is a test task, DONT DO IT IDIOT")
    @t2 = Task.new("Task2","This is a test task, DONT DO IT IDIOT")
    @t3 = Task.new("Task3","This is a test task, DONT DO IT IDIOT")
    @t3.done = true
    @t4 = Task.new("Task4","This is a test task, DONT DO IT IDIOT")
    @t4.done = true


    @list.add_incomplete @t1
    @list.add_incomplete @t2
    @list.add_completed @t3
    @list.add_completed @t4

  end

  # Create 4 tasks
  before(:all) do

  end

  it "doesn't fail upon creation" do
    expect{TaskList.new}.to_not raise_error
  end

  it "should add tasks to appropriate arrays" do
    expect(@list.incomplete).to match_array([@t1, @t2])
    expect(@list.completed).to match_array([@t3, @t4])
  end

end
