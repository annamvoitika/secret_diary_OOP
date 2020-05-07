class SecretDiary
  attr_accessor :lock

  def initialize
    diary = Diary.new
    @lock = true
  end

  def lock
    @lock = true
  end

  def unlock
    @lock = false
  end

  def new_entry
    if @lock ==  false
    'Entry added'
  elsif @lock == true
    raise "Locked"
  end
  end

  def get_entries(entry)
    @diary.add(entry)
    @diary.read
  end
end

class Diary
  def initialize
    @entries = []
  end

  def read
    @entries
  end

  def add(entry)
    @entries << entry
  end
end
