require "bundler/gem_tasks"
require 'dockerfile_ast'

task :parse do
  parser = DockerfileAst::Parser.new
  df = <<-DOCK
# this is a comment
FROM imightbeinatree/sshable

MAINTAINER Michael Orr <michael@cloudspace.com>
DOCK
  puts parser.parse(df).inspect
end
