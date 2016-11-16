require "./node.rb"
require "./sample_trees.rb"

def sec_largest(root)
  if root.right?
    return root if root.right.leaf?
    return sec_largest(root.right)
  end
  largest(root.left)
end

def largest(root)
  return largest(root.right) if root.right?
  root
end


puts 'Tree 1 - Largest is ' + largest($tree1).to_s
puts 'Tree 1 - Second largest is ' + sec_largest($tree1).to_s
puts "\n\n"

puts 'Tree 2 - Largest is ' + largest($tree2).to_s
puts 'Tree 2 - Second largest is ' + sec_largest($tree2).to_s
