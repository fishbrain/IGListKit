Pod::Spec.new do |s|
  s.name = 'IGListKit'
  s.version = '3.4.0'
  s.summary = 'A data-driven UICollectionView framework.'
  s.homepage = 'https://github.com/Instagram/IGListKit'
  s.documentation_url = 'https://instagram.github.io/IGListKit'
  s.description = 'A data-driven UICollectionView framework for building fast and flexible lists.'

  s.license =  { :type => 'MIT' }
  s.authors = 'Instagram'
  s.social_media_url = 'https://twitter.com/fbOpenSource'
  s.source = {
    :git => 'https://github.com/Instagram/IGListKit.git',
    :tag => s.version.to_s,
    :branch => 'stable'
  }

  s.header_mappings_dir = "Source"

  [s.ios, s.tvos].each do |os|
    os.source_files = 'Source/IGListKit/**/*.{h,m,mm}'
    os.public_header_files = ['Source/IGListKit/*.h']
    os.private_header_files = ['Source/IGListKit/Internal/*.h']
  end

  s.osx.source_files = 'Source/IGListKit/IGListKit.h'

  s.subspec 'Diffing' do |ds|
    ds.source_files = 'Source/IGListDiffKit/**/*.{h,m,mm}'
    ds.public_header_files = 'Source/IGListDiffKit/*.h'
    ds.private_header_files = 'Source/IGListDiffKit/Internal/*.h'
  end

  s.requires_arc = true

  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  s.ios.frameworks = 'UIKit'
  s.tvos.frameworks = 'UIKit'
  s.osx.frameworks = 'Cocoa'

  s.library = 'c++'
  s.pod_target_xcconfig = {
       'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
       'CLANG_CXX_LIBRARY' => 'libc++',
       # This allows the IGListDiffKit import path to work when compiling
       # within IGListKit - header_mappings_dir above handles it for code
       # depending on this pod, but not for compiling the pod itself.
       'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/Source/**',
  }
end
