class Photomanager < Formula
  desc 'Photo manager for organizing photos into folders by date'
  homepage 'https://github.com/maks112v/PhotoManager'
  url 'https://github.com/maks112v/PhotoManager/archive/refs/tags/2024.1.tar.gz'
  sha256 '6eb8db63ec57519445d4497080f379894570ad39e4453540ca5a83940c6bdd04'
  version '2024.1'

  depends_on 'go' => :build

  def install
    system 'go', 'build', '-o', "#{bin}/photomanager"
  end

  test do
    system "#{bin}/photomanager"
  end
end
