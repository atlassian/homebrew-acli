# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acli < Formula
  desc "Software to interact with Atlassian Cloud from the terminal"
  homepage "https://developer.atlassian.com/cloud/acli/reference/commands/"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://acli.atlassian.com/darwin/0.1.2/acli_0.1.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "4082bd27bd62459c96b85dd8e6b0a89b579b757dc782432277f050bb110cd65e"

      def install
        bin.install "acli"
      end
    end
    if Hardware::CPU.arm?
      url "https://acli.atlassian.com/darwin/0.1.2/acli_0.1.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6bb6c34f0f2cd0b88cdd96aa24f75b7a1d2906cad173a70bac19aee54fc8680e"

      def install
        bin.install "acli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://acli.atlassian.com/linux/0.1.2/acli_0.1.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "ad8aef7bf1ece7378d8b51b6037a73ad5d6fc5dbd7fc7d6aaa8f8504ef83eb44"

        def install
          bin.install "acli"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://acli.atlassian.com/linux/0.1.2/acli_0.1.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "09e157f7637fbf3a274c138b9eadc6fec4e2de8fb81301ba66b608a0aebbd5f9"

        def install
          bin.install "acli"
        end
      end
    end
  end
end
