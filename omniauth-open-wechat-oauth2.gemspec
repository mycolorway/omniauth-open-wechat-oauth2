# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
version = File.read(File.expand_path('../VERSION', __FILE__)).strip

Gem::Specification.new do |spec|
  spec.name          = "omniauth-open-wechat-oauth2"
  spec.version       = version
  spec.authors       = ["Special Leung"]
  spec.email         = ["specialcyci@gmail.com"]
  spec.summary       = 'Omniauth strategy for open wechat(weixin), https://open.weixin.qq.com/'
  spec.description   = 'Using OAuth2 to authenticate wechat user in web application.'
  spec.homepage      = "https://github.com/mycolorway/omniauth-open-wechat-oauth2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency             'omniauth',        '~> 1.2'
  spec.add_dependency             'omniauth-oauth2', '~> 1.3'
  spec.add_development_dependency 'rspec',           '~> 2.7'
  spec.add_development_dependency "bundler",         "~> 1.6"
  spec.add_development_dependency "rake"
end
