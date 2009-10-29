class Org::Eclipse::Swt::Internal::Lock
  def lock
    @count += 1
    @count
  end

  def unlock
    @count -= 1
    @count
  end
end
