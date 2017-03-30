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
    q = []
    q << @root
    while !q.empty?
      current = q.shift
      if current.value == value
        return current
      end
      unless current.left.nil?
        current.left.parent = current
        q << current.left
      end
      unless current.right.nil?
        current.right.parent = current
        q << current.right
      end
    end
  end

  def depth_first_search(value)
    stack = []
    stack << @root
    while !stack.empty?
      current = stack.pop

      if current.value == value
        return current
      end

      unless current.right.nil?
        current.right.parent = current
        stack << current.right
      end
      unless current.left.nil?
        current.left.parent = current
        stack << current.left
      end
    end
  end

  def dfs_rec(value, root = @root)
    if root.nil? || root.value == value
      return root
    end
    root.left.parent = root unless root.left.nil?
    dfs_rec(value, root.left)
    root.right.parent = root unless root.right.nil?
    dfs_rec(value, root.right)
  end
end
