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

  def locked?
    @locked
  end
end
