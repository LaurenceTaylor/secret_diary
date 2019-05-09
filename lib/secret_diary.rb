class Diary
  def initialize
    @locked = false
    @entries = []
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry(entry)
    raise 'You cannot add entry to a locked diary' if locked?
    @entries << entry
  end

  def get_entries
    raise 'You cannot get entries to a locked diary' if locked?
    @entries
  end

  def locked?
    @locked
  end
end
