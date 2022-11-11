def task_tracker(str)
  fail "this is not a string" if str.empty?
  to_do = str.split(" ")

  if to_do.include?("#TODO")
    return true
  else 
    return false
  end
end