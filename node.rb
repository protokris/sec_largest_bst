class Node
  def initialize(val, left=nil, right=nil)
    @val = val
    @left = left
    @right = right
  end
  def left?
    !@left.nil?
  end
  def right?
    !@right.nil?
  end
  def leaf?
    @right.nil? && @left.nil?
  end
  def right
    @right
  end
  def left
    @left
  end
  def val
    @val
  end
  def to_s
    @val.to_s
  end
end
