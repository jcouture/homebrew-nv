class Nv < Formula
  desc "Lightweight utility to load context specific environment variables"
  homepage "https://github.com/jcouture/nv"
  url "https://github.com/jcouture/nv/archive/1.0.0.tar.gz"
  sha256 "ea104e05f447b8806812d1ce5eedafe06b1f4788d8daaa6ec6d6ee552682b44d"

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
