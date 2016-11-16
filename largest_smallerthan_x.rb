require "./node.rb"
require "./sample_trees.rb"

MAX_INT = 4611686018427387903

# Finds the largest less than a value;
# subsequent calls can get 2nd, 3rd, 4th largest, etc.
def largest_smallerthan_x(root, x=MAX_INT)
  if root.val >= x # its left or doesnt exist

    if root.left? # might be one in the left tree
      return largest_smallerthan_x(root.left, x)
    else # came up empty
      return nil
    end

  else # could be root or right tree

    if root.right?  # might be one in the right tree
      r = largest_smallerthan_x(root.right, x) # check right tree
      return r unless r.nil? # found one in the right tree
    end
    root # didn't find or no right tree exists

  end
end


lg = largest_smallerthan_x($tree1)
sec = largest_smallerthan_x($tree1, lg.val)
thr = largest_smallerthan_x($tree1, sec.val)
puts 'Tree 1 - Largest is ' + lg.to_s
puts 'Tree 1 - Second Largest is ' + sec.to_s
puts 'Tree 1 - Third Largest is ' + thr.to_s
puts "\n\n"

lg = largest_smallerthan_x($tree2)
sec = largest_smallerthan_x($tree2, lg.val)
thr = largest_smallerthan_x($tree2, sec.val)
puts 'Tree 2 - Largest is ' + lg.to_s
puts 'Tree 2 - Second Largest is ' + sec.to_s
puts 'Tree 2 - Third Largest is ' + thr.to_s
