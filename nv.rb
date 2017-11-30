class Nv < Formula
  desc "Lightweight utility to load context specific environment variables"
  homepage "https://github.com/jcouture/nv"
  url "https://github.com/jcouture/nv/archive/1.0.0.tar.gz"
  sha256 "e5bf62bc897e73c303520fd40cb9555de5b99a139857f9551061e98c568a27df"

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
