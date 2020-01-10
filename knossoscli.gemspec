lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knossoscli/version'

Gem::Specification.new do |spec|
  spec.name          = 'knossoscli'
  spec.version       = KnossosCLI::VERSION
  spec.authors       = ['Peter J. Hinckley']
  spec.email         = ['petejh.code@q.com']

  spec.summary       = 'Generate mazes from the command line.'
  spec.description   = 'A command line companion to the `knossos` Ruby gem.'
  spec.homepage      = 'https://github.com/petejh/knossoscli'
  spec.license       = 'MIT'

  spec.metadata = {
    'homepage_uri' => spec.homepage,
    'source_code_uri' => 'https://github.com/petejh/knossoscli',
    'changelog_uri' => 'https://github.com/petejh/knossoscli/CHANGELOG.md',
    'bug_tracker_uri' => 'https://github.com/petejh/knossoscli/issues'
  }

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z LICENSE.txt README.md CHANGELOG.md lib`.split("\x0")
  end
  spec.bindir        = 'exe'
  spec.executables   = ['knossos']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.6'
  spec.add_runtime_dependency 'knossos', "~> #{KnossosCLI::VERSION.match(/\d+\.\d+/)}.0"
  spec.add_runtime_dependency 'thor', '~> 1.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
