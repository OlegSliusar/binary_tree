require_relative 'tree'
require 'yaml'
new_tree = Tree.new
ary = [7, 8, 3, 13, 6, 4, 14, 1, 10]

new_tree.build_tree(ary)

puts YAML::dump(new_tree)
File.open('tree.yaml', 'w') do |file|
  file.puts YAML::dump(new_tree)
end
puts "#" * 50

puts YAML::dump(new_tree.breadth_first_search(13))
File.open('found_node_bfs.yaml', 'w') do |file|
  file.puts YAML::dump(new_tree.breadth_first_search(13))
end
puts "#" * 50

puts YAML::dump(new_tree.depth_first_search(13))
File.open('found_node_dfs.yaml', 'w') do |file|
  file.puts YAML::dump(new_tree.depth_first_search(13))
end
puts "#" * 50

File.open('found_node_dfs_rec.yaml', 'w') do |file|
  file.puts YAML::dump(new_tree.dfs_rec(13))
end
puts YAML::dump(new_tree.dfs_rec(13))
