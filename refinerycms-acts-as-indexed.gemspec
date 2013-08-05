# Encoding: UTF-8
Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = %q{refinerycms-acts-as-indexed}
  s.version           = %q{1.0.0}
  s.description       = %q{An extension to handle the integration of Refinery CMS and ActsAsIndexed}
  s.summary           = %q{Refinery CMS ActsAsIndexed integration plugin}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com}
  s.authors           = ['Philip Arndt', 'Uģis Ozols']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)

  s.files             = `git ls-files -- app/* lib/*`.split("\n")

  s.add_dependency    'refinerycms-core', '~> 3.0.0.dev'
  s.add_dependency    'acts_as_indexed', '~> 0.8.0'
end
