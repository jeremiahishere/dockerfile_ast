# DockerfileAst

Convert a Dockerfile into a very basic ast, then output it as an array or string

## Installation

Add this line to your application's Gemfile:

    gem 'dockerfile_ast'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dockerfile_ast

## Usage

rake parse DOCKERFILE=/path/to/dockerfile

Edit DockerfileAst::Parser's parse method to return an approximation of the AST with to_array or a dockerfile with to_s.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/dockerfile_ast/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
