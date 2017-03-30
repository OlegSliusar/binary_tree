require_relative 'tree'
require 'yaml'
new_tree = Tree.new
ary = [7, 8, 3, 13, 6, 4, 14, 1, 10]

new_tree.build_tree(ary)

puts YAML::dump(new_tree)
File.open('tree.yaml', 'w') do |file|
  file.puts YAML::dump(new_tree)
end

puts YAML::dump(new_tree.breadth_first_search(3))
File.open('found_node_bfs.yaml', 'w') do |file|
  file.puts YAML::dump(new_tree.breadth_first_search(3))
end
