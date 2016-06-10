# Encoding: UTF-8
Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = %q{refinerycms-acts-as-indexed}
  s.version           = %q{3.0.0}
  s.description       = %q{An extension to handle the integration of Refinery CMS and ActsAsIndexed}
  s.summary           = %q{Refinery CMS ActsAsIndexed integration plugin}
  s.email             = %q{gems@p.arndt.io}
  s.homepage          = %q{http://refinerycms.com}
  s.authors           = ['Philip Arndt', 'Uģis Ozols']
  s.license           = %q{MIT}
  s.require_paths     = %w(lib)

  s.files             = `git ls-files -- app/* lib/*`.split("\n")

  s.add_dependency    'refinerycms-core', ['>= 3.0.0', '< 5.0']
  s.add_dependency    'acts_as_indexed', '~> 0.8.0'
  s.add_dependency    'decorators', '~> 2.0'
  s.add_dependency    'stringex', '~> 2.5.2'

  s.cert_chain  = ['certs/parndt.pem']
  if $0 =~ /gem\z/ && ARGV.include?("build") && ARGV.include?(__FILE__)
    s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem")
  end
end
