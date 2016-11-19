class Node
  attr_accessor :value, :parent, :left, :right
  def initialize(value = nil, parent = nil)
    @value = value
    @parent = parent
  end

  def to_s
    value.to_s
  end

  def to_left
    @left || @left = Node.new(nil, self)
  end

  def to_right
    @right || @right = Node.new(nil, self)
  end

  def empty?
    !value
  end
end
