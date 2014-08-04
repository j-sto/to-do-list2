require 'rspec'
require 'to_do'

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
