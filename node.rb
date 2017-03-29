class Node
  attr_accessor :value, :parent, :child
  def initialize(value, child = nil, parent = nil)
    @value = value
    @parent = parent
    @child = child
  end
end
