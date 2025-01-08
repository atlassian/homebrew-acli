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
      sha256 "0c20ce9c4a588b0158fc5dec3b5dd9e5b925fd6a7068aeb3b50c1e37ae1a3be0"

      def install
        bin.install "acli"
      end
    end
    if Hardware::CPU.arm?
      url "https://acli.atlassian.com/darwin/0.1.0/acli_0.1.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "146e7987346cf054ff9c1cbecb1ae005804f5275d94084a01ca862382c6945b9"

      def install
        bin.install "acli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://acli.atlassian.com/linux/0.1.0/acli_0.1.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "2fd17ed1fbdbcc03f031f4ff734aa1dec029b5ddb2101f714b5a44d94522d8c4"

        def install
          bin.install "acli"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://acli.atlassian.com/linux/0.1.0/acli_0.1.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "7c01dc028232c8027ed4dbd40063030e90ac10c624ccdd2d02bf08d37d6e24fb"

        def install
          bin.install "acli"
        end
      end
    end
  end
end
