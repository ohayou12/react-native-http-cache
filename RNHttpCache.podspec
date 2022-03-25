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
    s.source         = { :git => repository, :tag => version }
    s.platform       = :ios, "9.0"
    s.preserve_paths = 'README.md', 'package.json', '*.js'
    s.source_files   = 'ios/RNHttpCache/**/*.{h,m}'
    s.vendored_libraries = "ios/RNHttpCache/*.a"
    s.public_header_files = 'ios/RNHttpCache/*.h'
    s.dependency 'React'
end
