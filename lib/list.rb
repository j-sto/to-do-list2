class List
  # attr_reader tasklist:
    @@all_lists = []

  def initialize(list_title)
    @tasklist = []
  end

  def save
    @@all_lists << self
  end

  def List.all
    @@all_lists
  end

  def tasklist
    @tasklist
  end

  def add_task(new_task)
     @tasklist << new_task
  end
end
