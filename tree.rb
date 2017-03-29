require_relative 'node'
class Tree
  attr_reader :tree
  def build_tree(ary)
    node = nil
    ary.each do |item|
      if node.nil?
        node = Node.new(item)
        next
      end
      node.parent = Node.new(item, node)
      node = node.parent
    end
    @tree = node
  end
end
