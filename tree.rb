require_relative 'node'
class Tree
  attr_reader :root
  def build_tree(ary)
    ary.each do |item|
      @root = insert(item, @root)
    end
    @root
  end

  def insert(item, root)
    if !root
      root = Node.new(item)
    elsif item < root.value
      root.left = insert(item, root.left)
    else
      root.right = insert(item, root.right)
    end
    root
  end
end
