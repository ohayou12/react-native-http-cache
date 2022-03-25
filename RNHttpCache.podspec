require 'json'

packageJson = JSON.parse(File.read('package.json'))
version = packageJson["version"]
description = packageJson["description"]
homepage = packageJson["homepage"]
license = packageJson["license"]
author = packageJson["author"]
repository = packageJson["repository"]["url"]
iqVersion = version.split('-').first

Pod::Spec.new do |s|
    s.name           = "RNHttpCache"
    s.version        = version
    s.description    = description
    s.homepage       = homepage
    s.summary        = "Exit,close,kill,shutdown app completely for React Native"
    s.license        = license
    s.authors        = author
    s.source         = { :git => "https://github.com/ohayou12/react-native-http-cache", :tag => "v#{s.version}" }
    s.platform       = :ios, "9.0"
    s.preserve_paths = 'README.md', 'package.json', '*.js'
    s.source_files   = '**/*.{h,m}'
    s.vendored_libraries = "**/*.a"
    s.public_header_files = '**/*.h'
    s.dependency 'React'
end
