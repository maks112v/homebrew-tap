class Photomanager < Formula
  desc 'Photo manager for organizing photos into folders by date'
  homepage 'https://github.com/maks112v/photo-manager'
  url 'https://github.com/maks112v/photo-manager/archive/refs/tags/2024.1.tar.gz'
  sha256 '1f71638277d60cc87c9d508307e041b4603e1115a2d308a5af9c9c13559141e8'
  version '2024.1'

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', "#{bin}/photomanager"
  end

  test do
    system "#{bin}/photomanager"
  end
end
