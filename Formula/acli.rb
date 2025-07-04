# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acli < Formula
  desc "Software to interact with Atlassian Cloud from the terminal"
  homepage "https://developer.atlassian.com/cloud/acli/reference/commands/"
  version "1.2.10-stable"

  on_macos do
    if Hardware::CPU.intel?
      url "https://acli.atlassian.com/darwin/1.2.10-stable/acli_1.2.10-stable_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2311ff62eca0278087b8428e203596d5e88ccc078b072dc76e5f88c4ff41df31"

      def install
        bin.install "acli"
      end
    end
    if Hardware::CPU.arm?
      url "https://acli.atlassian.com/darwin/1.2.10-stable/acli_1.2.10-stable_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c1c94e379ffbd9c95c1c8442d42bd5db328c0154bcb88791e158ff2ac0107aac"

      def install
        bin.install "acli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://acli.atlassian.com/linux/1.2.10-stable/acli_1.2.10-stable_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b5a5948aa8661910236443612b9f27d703cc749f944ca639a4601f2754753d52"
      def install
        bin.install "acli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://acli.atlassian.com/linux/1.2.10-stable/acli_1.2.10-stable_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "12f970f382957be439a345b56873c980dad18095f2c530a53bab88969314bc5a"
      def install
        bin.install "acli"
      end
    end
  end
end
