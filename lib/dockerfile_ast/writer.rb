module DockerfileAst
  class Writer
    def initialize(tree)
      @tree = tree
    end

    def write(return_type = :string)
      if return_type == :tree
        return @tree
      elsif return_type == :array
        return @tree.to_array
      else
        return @tree.to_s
      end
    end
  end
end
