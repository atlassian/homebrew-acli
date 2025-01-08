# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acli < Formula
  desc "Software to interact with Atlassian Cloud from the terminal"
  homepage "https://developer.atlassian.com/cloud/acli/reference/commands/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://acli.atlassian.com/darwin/0.1.0/acli_0.1.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "6b5467f717540c53b185eccb20d853c8acdc39f9bc80a399e604895aea7723a1"

      def install
        bin.install "acli"
      end
    end
    if Hardware::CPU.arm?
      url "https://acli.atlassian.com/darwin/0.1.0/acli_0.1.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "975737949704bc6036ec2aa1db1023806e123b9d7376c58a36202198ee3211a1"

      def install
        bin.install "acli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://acli.atlassian.com/linux/0.1.0/acli_0.1.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "b19da043900fa191e8a84a6641d280abc1683a35e9a894e1f4b769e67ac3d83f"

        def install
          bin.install "acli"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://acli.atlassian.com/linux/0.1.0/acli_0.1.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "956f6314c5a72da19dcb7b5ece73b9a48f47538a4f2d59f21d88d622f178787a"

        def install
          bin.install "acli"
        end
      end
    end
  end
end
