class Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

def level_order_traversal(root)
  result = []
  q = []
  return result if root.nil?

  q.push(root)

  while q.size > 0
    current_node = q.shift
    result << current_node
    # puts "node is #{current_node}"
    q.push << current_node.left unless current_node.left.nil?
    q.push << current_node.right unless current_node.right.nil?
  end
  
  result.map { |node| node.value } 
end

if __FILE__ == $PROGRAM_NAME
  root = Node.new(1, Node.new(2), Node.new(3));

  puts "Expecting: [[1], [2, 3]]"
  print level_order_traversal(root)

  puts
  puts

  root = Node.new(10, Node.new(20, Node.new(9), Node.new(22)), Node.new(30))

  puts "Expecting: [[10], [20, 30], [9, 22]]"
  print level_order_traversal(root)

  puts 
  puts

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
=begin
i: root node
0: array of node values in breadth first order
c: breadth first or level traversal
e: root is empty? return empty []?


make result array
make to_visit array

enqueue root node in to_visit

while to_visit isn't empty
  current_node = to_visit.dequeue
  add current_node.value to result array

  does current_node have children?
    enqueue left and then right values to to_visit


=end
