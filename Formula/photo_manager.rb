class PhotoManager < Formula
  desc 'Photo manager for organizing photos into folders by date'
  homepage 'https://github.com/maks112v/photo-manager'
  url 'https://github.com/maks112v/photo-manager'
  sha256 'SHA256 hash of the tarball'

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', "#{bin}/photomanager"
  end

  test do
    system "#{bin}/photomanager"
  end
end
