require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "native-ui-components"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                   native-ui-components
                   DESC
  s.homepage     = "https://github.com/leah-bluescape/native-ui-components"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Leah Xia" => "leahxia5@gmail.com" }
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }
  s.source       = { :git => "git@github.com:leah-bluescape/native-ui-components.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
	
  s.dependency "INSPhotoGallery"

end

