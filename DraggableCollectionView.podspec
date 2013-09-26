Pod::Spec.new do |s|
  s.name         = "DraggableCollectionView"
  s.version      = "1.0.0"
  s.summary      = "Extension for the UICollectionView and UICollectionViewLayout that allows a user to move items with drag and drop. "
  s.homepage     = "https://github.com/lukescott/DraggableCollectionView"
  s.license      = 'BSD'
  s.author       = { "lukescott" => "https://github.com/lukescott" }
  s.source       = { :git => "https://github.com/lukescott/DraggableCollectionView.git", :branch => "master"}
  s.platform     = :ios, '6.0'
  s.source_files = 'DraggableCollectionView/*{m,h}', 'DraggableCollectionView/Helpers/*.{h,m}','DraggableCollectionView/Layout/*.{h,m}'
  s.requires_arc = true
end
