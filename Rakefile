require "bundler/gem_tasks"
require 'dockerfile_ast'

task :parse do
  parser = DockerfileAst::Parser.new
  puts parser.parse('hello world')
  puts parser.parse('goodbye world') 
end
