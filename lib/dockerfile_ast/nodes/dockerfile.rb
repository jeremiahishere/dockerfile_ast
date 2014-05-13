module DockerfileAst
  module Node
    class Dockerfile < Treetop::Runtime::SyntaxNode
      def to_array
        [:dockerfile] + elements.map(&:to_array)
      end
    end
  end
end
