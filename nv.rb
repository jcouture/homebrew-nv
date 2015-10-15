class Nv < Formula
  desc "Lightweight utility to load context specific environment variables"
  homepage "https://github.com/jcouture/nv"
  url "https://github.com/jcouture/nv/archive/0.0.1.tar.gz"
  sha256 "b48d7fe9d1651fdb5f16e05147d1dc4b70337f0abcd43dfc5e0a89fa97e5a9b7"

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
