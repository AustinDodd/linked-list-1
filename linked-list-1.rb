class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end

end




class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

def reverse_list(list, previous=nil)
  # set current_head to node2
  current_head = list.next_node
  # Change node3.next_node node2-->nil
  list.next_node = previous
  if current_head
    # reverse_list(node2, node3)
    reverse_list(current_head, list)
  else
    list
  end
end


    def print_values(list_node)
        if list_node
            print "#{list_node.value} --> "
            print_values(list_node.next_node)
        else
            print "nil\n"
            return
        end
    end

end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

stack = Stack.new



stack.print_values(node3)

revlist = stack.reverse_list(node3)

stack.print_values(revlist)