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

  def breadth_first_search(value)
    s = []
    q = []
    s << @root
    q << @root
    while !q.empty?
      current = q.shift
      if current.value == value
        return current
      end
      unless s.include?(current.left) || current.left.nil?
        s << current.left
        current.left.parent = current
        q << current.left
      end
      unless s.include?(current.right) || current.right.nil?
        s << current.right
        current.right.parent = current
        q << current.right
      end
    end
  end
end
