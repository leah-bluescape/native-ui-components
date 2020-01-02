require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "@leahxia/native-ui-components"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                   @leahxia/native-ui-components
                   DESC
  s.homepage     = "https://github.com/github_account/native-ui-components"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Leah Xia" => "leahxia5@email.com" }
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/github_account/native-ui-components.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
	
  s.dependency "INSPhotoGallery"
end

