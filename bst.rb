require_relative 'node'
class BinarySearchTree
  def initialize
    @root = Node.new
    end
  end

  def add(elem, node = @root)
    if !node.value
      node.value = elem
    elsif elem < node.value
      add elem, node.to_left
    else
      add elem, node.to_right
    end
  end

  def build_tree(elements)
    elements.each do |elem|
      add elem
    end
  end

  def bfs(value)
    to_visit = [@root]
    to_visit.each do |node|
      return node if node.value == value
      to_visit << node.left if node.left
      to_visit << node.right if node.right
    end
    return
  end

  def dfs(value)
    to_visit = [@root]
    loop do
      break if to_visit.empty?
      node = to_visit.pop
      return node if node.value == value
      to_visit << node.left if node.left
      to_visit << node.right if node.right
    end
    return
  end

  def dfs_rec(value, node = @root)
    return node if node.value == value
    dfs_rec(value, node.left) if node.left
    dfs_rec(value, node.right) if node.right
  end
end
