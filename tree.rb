require_relative 'node'
class Tree
  attr_reader :tree
  def build_tree(ary)
    ary.each do |item|
      @tree = insert(item, @tree)
    end
    @tree
  end

  def insert(item, tree)
    if tree.nil?
      tree = Node.new(item)
      return tree
    end
    tree.parent = Node.new(item, nil, tree)
    tree = tree.parent
    tree
  end
end
