class Nv < Formula
  desc "Lightweight utility to load context specific environment variables"
  homepage "https://github.com/jcouture/nv"
  url "https://github.com/jcouture/nv/releases/download/2.0.0/nv_2.0.0_Darwin_x86_64.tar.gz"
  version "2.0.0"
  sha256 "57d31d15e63c2a74b894e8f0bc30134dd8cca9da306997db384d397064fcfd91"

  def install
    bin.install "nv"
  end

  test do
    system "#{bin}/nv"
  end
end
