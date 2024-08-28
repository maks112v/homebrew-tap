class Photomanager < Formula
  desc 'Photo manager for organizing photos into folders by date'
  homepage 'https://github.com/maks112v/PhotoManager'
  url 'https://github.com/maks112v/PhotoManager/archive/refs/tags/2024.2.tar.gz'
  sha256 '72c5ab9153e359906c78d320bc5a404244220203d5416cf166d14f2cd56d0c43'
  version '2024.2'

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', "#{bin}/photomanager"
  end

  test do
    system "#{bin}/photomanager"
  end
end
