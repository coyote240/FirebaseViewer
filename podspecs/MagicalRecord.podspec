Pod::Spec.new do |s|
  s.name     = 'MagicalRecord'
  s.version  = '2.2'
  s.license  = 'MIT'
  s.summary  = 'Super Awesome Easy Fetching for Core Data 1!!!11!!!!1!.'
  s.homepage = 'http://github.com/magicalpanda/MagicalRecord'
  s.author   = { 'Saul Mora' => 'saul@magicalpanda.com' }
  s.source   = { :git => 'https://github.com/magicalpanda/MagicalRecord.git', :commit => "eb7205307b8f361f452e9855427973c3cbeadf61" }
  s.description  = 'Handy fetching, threading and data import helpers to make Core Data a little easier to use.'
  s.framework    = 'CoreData'
  s.requires_arc = true
  s.default_subspec = 'Shorthand'

  s.subspec "Core" do |sp|
    sp.source_files = 'MagicalRecord/**/*.{h,m}'
    sp.prefix_header_contents = '#import <CoreData/CoreData.h>', '#import "CoreData+MagicalRecord.h"'
  end

  s.subspec "Shorthand" do |sp|
    sp.source_files = 'MagicalRecord/**/*.{h,m}'
    sp.prefix_header_contents = '#define MR_SHORTHAND 0', '#import <CoreData/CoreData.h>', '#import "CoreData+MagicalRecord.h"'
  end
end