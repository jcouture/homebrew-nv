class Nv < Formula
  desc "Lightweight utility to load context specific environment variables"
  homepage "https://github.com/jcouture/nv"
  url "https://github.com/jcouture/nv/archive/0.0.2.tar.gz"
  sha256 "0f68ac10657e776c2271a2f699354b4627ca231a6f2e4464eed5a36dac439dc9"

  head "https://github.com/jcouture/nv.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "go", "build", "-o", "nv"
    bin.install "nv"
  end

  test do
    system "#{bin}/nv"
  end
end
