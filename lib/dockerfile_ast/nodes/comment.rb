module DockerfileAst
  module Node
    class Comment < Treetop::Runtime::SyntaxNode
      def to_array
        [:comment] + elements.map(&:to_array)
      end
    end
  end
end
