class Nv < Formula
  desc "Lightweight utility to load context specific environment variables"
  homepage "https://github.com/jcouture/nv"
  url "https://github.com/jcouture/nv/archive/0.0.3.tar.gz"
  sha256 "21eced7a32b1e96dc67a8d402f381b8da3db3124823b70911d50cf8432078346"

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
