module DockerfileAst
  class Parser

    def initialize
      Treetop.load(File.expand_path(File.join(File.dirname(__FILE__), 'dockerfile_grammar.treetop')))
      @parser = DockerfileGrammarParser.new
    end

    def parse(data, return_type = :string)
      tree = @parser.parse(data)

      if(tree.nil?)
        raise Exception, "Parse error at offset: #{@parser.index} #{@parser.failure_reason}"
      end

      # this edits the tree in place
      clean_tree(tree)

      return tree
    end
  
    def clean_tree(root_node)
      return if(root_node.elements.nil?)
      root_node.elements.delete_if{|node| node.class.name == "Treetop::Runtime::SyntaxNode" }
      root_node.elements.each {|node| self.clean_tree(node) }
    end
  end
end
