# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nv < Formula
  desc "Lightweight utility to load context specific environment variables"
  homepage "https://github.com/jcouture/nv"
  version "2.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jcouture/nv/releases/download/2.2.1/nv_2.2.1_darwin_arm64.tar.gz"
      sha256 "1fc2a1eb7043e43a757919863484b934b7b756446f4a0c161d1058d5c3dc1b93"

      def install
        bin.install "nv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jcouture/nv/releases/download/2.2.1/nv_2.2.1_darwin_amd64.tar.gz"
      sha256 "8c1ad92b5dcfe98c29bee1396f6571b87c57482217665ecf192a75e889e338df"

      def install
        bin.install "nv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jcouture/nv/releases/download/2.2.1/nv_2.2.1_linux_amd64.tar.gz"
      sha256 "22da0939f43e9c0a1494cf6e83f7d0904989e81b88ef78183745f2a92cadf681"

      def install
        bin.install "nv"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jcouture/nv/releases/download/2.2.1/nv_2.2.1_linux_arm64.tar.gz"
      sha256 "d254c6b765449187e146b1c378e7dc904d3ed24d529326a4107e6acc1631ff59"

      def install
        bin.install "nv"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jcouture/nv/releases/download/2.2.1/nv_2.2.1_linux_armv6.tar.gz"
      sha256 "331a75cd508ca97f56b5fb8b0c9e0fd7d762ddc2d47784be4c605bbef556c564"

      def install
        bin.install "nv"
      end
    end
  end

  test do
    system "#{bin}/nv"
  end
end
