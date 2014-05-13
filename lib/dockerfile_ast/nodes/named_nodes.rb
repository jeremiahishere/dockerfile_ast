module DockerfileAst
  module Node
    class NamedNode < Treetop::Runtime::SyntaxNode
      def title
        :named_node
      end

      def to_array
        [title] + elements.map(&:to_array)
      end

      def to_s
        "#{title.to_s.upcase} #{elements_to_s}"
      end

      def elements_to_s
        elements.map(&:to_s).join("\n")
      end
    end

    class Instruction < NamedNode
      def title; :instruction end

      def to_s
        elements_to_s
      end
    end

    class Comment < NamedNode
      def title; :comment end

      def to_s
        "# #{elements[0].to_s}"
      end
    end

    class Dockerfile < NamedNode
      def title; :dockerfile end

      def to_s
        elements_to_s
      end
    end


    #  INSTRUCTIONS

    class AddInstruction < NamedNode
      def title; :add end
    end

    class CmdInstruction < NamedNode
      def title; :cmd end
    end

    class EntrypointInstruction < NamedNode
      def title; :entrypoint end
    end

    class EnvInstruction < NamedNode
      def title; :env end
    end

    class ExposeInstruction < NamedNode
      def title; :expose end
    end

    class FromInstruction < NamedNode
      def title; :from end
    end

    class MaintainerInstruction < NamedNode
      def title; :maintainer end
    end

    class OnbuildInstruction < NamedNode
      def title; :onbuild end
    end

    class RunInstruction < NamedNode
      def title; :run end
    end

    class UserInstruction < NamedNode
      def title; :user end
    end

    class VolumeInstruction < NamedNode
      def title; :volume end
    end

    class WorkdirInstruction < NamedNode
      def title; :workdir end
    end
  end
end
