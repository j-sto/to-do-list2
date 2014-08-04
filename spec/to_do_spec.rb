require 'rspec'
require 'task'
require 'list'

describe Task do
  it("is initialized with a description") do
    test_task = Task.new("School stuff")
    expect(test_task).to be_an_instance_of Task
  end

  it('will show you the description of the task') do
    test_task = Task.new("School Stuff")
    expect(test_task.description).to eq "School Stuff"
  end
end

describe List do
  it("starts out with an empty list of tasks") do
    test_list = List.new("work")
    expect(test_list.tasklist).to eq []
  end

  it("can add tasks") do
    test_list = List.new("work")
    test_task = Task.new("learn OO")
    test_list.add_task(test_task)
    expect(test_list.tasklist).to eq [test_task]
  end

  it("saves lists to master list") do
    test_list1 = List.new("Grocery")
    test_list1.save
    test_list2 = List.new("School")
    test_list2.save
    expect(List.all).to eq [test_list1, test_list2]
  end
end
