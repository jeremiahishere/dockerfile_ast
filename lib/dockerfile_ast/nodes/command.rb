module DockerfileAst
  module Node
    class Command < Treetop::Runtime::SyntaxNode
      def to_array
        [:command] + elements.map(&:to_array)
      end
    end
  end
end
