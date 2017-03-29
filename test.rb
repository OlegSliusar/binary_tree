require_relative 'tree'
require 'yaml'
new_tree = Tree.new
ary = [7, 8, 3, 13, 6, 4, 14, 1, 10]

new_tree.build_tree(ary)

puts YAML::dump(new_tree)
File.open('test.yaml', 'w') do |file|
  file.puts YAML::dump(new_tree)
end
