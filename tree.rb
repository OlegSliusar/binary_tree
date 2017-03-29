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
    if root.nil?
      root = Node.new(item)
      return root
    end
    root.parent = Node.new(item, nil, root)
    root = root.parent
    root
  end
end
