require "bundler/gem_tasks"
require 'dockerfile_ast'

task :parse do
  parser = DockerfileAst::Parser.new
  filename = ENV.has_key?('DOCKERFILE') ? ENV['DOCKERFILE'] : 'Dockerfile.sample'
  dockerfile = File.read(filename)
  ast = parser.parse(dockerfile)
  writer = DockerfileAst::Writer.new(ast)
  puts writer.write(:string)
end
