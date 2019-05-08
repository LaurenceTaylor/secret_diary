class Diary
  def initialize
    @locked = false
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry
    raise 'You cannot add entry to a locked diary' if locked?
  end

  def get_entries
    raise 'You cannot get entries to a locked diary' if locked?
  end

  def locked?
    @locked
  end
end
