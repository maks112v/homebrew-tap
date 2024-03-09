class Photomanager < Formula
  desc 'Photo manager for organizing photos into folders by date'
  homepage 'https://github.com/maks112v/PhotoManager'
  url 'https://github.com/maks112v/PhotoManager/archive/refs/tags/2024.1.tar.gz'
  sha256 '9f31657c58dab6ea8eb9fee1588c8388ff98b51dd25e326df28dd15a9b3ad4e8'
  version '2024.1'

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', "#{bin}/photomanager"
  end

  test do
    system "#{bin}/photomanager"
  end
end
