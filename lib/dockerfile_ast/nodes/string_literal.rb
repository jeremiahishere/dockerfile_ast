module DockerfileAst
  module Node
    class StringLiteral < Treetop::Runtime::SyntaxNode
      def to_array
        self.text_value
      end
    end
  end
end
