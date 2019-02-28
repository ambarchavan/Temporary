Pod::Spec.new do |s|
  s.name             = 'Temporary'
  s.version          = '0.0.1'
  s.summary          = 'My first project Temporary.'
 
  s.description      = <<-DESC
This Temporary project has been created for test purpose
                       DESC
 
  s.homepage         = 'https://github.com/ambarchavan/Temporary'
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
  s.author           = { 'ambarchavan' => 'chavanambar@gmail.cm' }
  s.source           = { :git => 'https://github.com/ambarchavan/Temporary.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files  = "Temporary/**/*.swift"
end