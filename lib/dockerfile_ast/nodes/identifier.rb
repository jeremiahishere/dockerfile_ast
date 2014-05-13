module DockerfileAst
  module Node
    class Identifier < Treetop::Runtime::SyntaxNode
      def to_array
        self.text_value
      end
    end
  end
end
