# The Tree class was interesting, but it did not allow you to specify a new
# tree with a clean user interface. Let the initializer accept a nested
# structure with hashes and arrays. You should be able to specify a tree like
# this: {’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }

class Tree
    attr_accessor :children, :node_name
    def initialize(tree={})
        tree.each do |key, val|
            @node_name = key
            @children = val.map {|k, v| Tree.new(k => v)}
        end
    end
    def visit_all(&block)
        visit &block
        children.each {|v| v.visit_all(&block)}
    end
    def visit(&block)
        block.call(self)
    end
end
fam_tree = Tree.new({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}})
fam_tree.visit {|node| puts node.node_name}
puts
fam_tree.visit_all {|node| puts node.node_name}
