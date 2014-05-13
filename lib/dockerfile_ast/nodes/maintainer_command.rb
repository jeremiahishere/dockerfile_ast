module DockerfileAst
  module Node
    class MaintainerCommand < Treetop::Runtime::SyntaxNode
      def to_array
        [:maintainer] + elements.map(&:to_array)
      end
    end
  end
end
