require 'rspec'
require_relative 'task'

describe "Task" do

  # Create new task
  before(:each) do
  end

  # Create something
  before(:all) do
    @t = Task.new("Test_Task","This is a test task, DONT DO IT IDIOT")
  end

  it "should not fail/show error" do
    expect{@t}.to_not raise_error
  end

  it "should initialize task to incomplete (done=false)" do
    expect(@t.done?).to eq false
  end

  it "should print that stuff we wanted it to if the task is complete" do
    @t.done= true
    expect(@t.done?).to eq "ToDo: #{@t.todo} ; Description: #{@t.description}"
  end


end
