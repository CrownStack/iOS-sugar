Pod::Spec.new do |s|
  s.name             = 'CrownStackSugarFunctions'
  s.version          = '0.2.0'
  s.summary          = 'This is the first crownstack sugar functions pod library.'

  s.description      = <<-DESC
  This version including the basic utilities and sugar functions required for IOS project.
                       DESC

  s.homepage         = 'https://github.com/CrownStack/iOS-sugar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ankit Jaiswal' => 'ankit.jaiswal@crownstack.com' }
  s.source           = { :git => 'https://github.com/CrownStack/iOS-sugar.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'SugarFunctions/*'

end
