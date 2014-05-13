module DockerfileAst
  module Node
    class NamedNode < Treetop::Runtime::SyntaxNode
      def title
        :named_node
      end

      def to_array
        [:title] + elements.map(&:to_array)
      end
    end

    class FromCommand < NamedNode
      def title
        :from
      end
    end

  end
end
