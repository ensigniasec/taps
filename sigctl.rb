# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sigctl < Formula
  desc ""
  homepage "https://github.com/ensigniasec/sigctl"
  version "0.2.13"

  on_macos do
    url "https://github.com/ensigniasec/sigctl/releases/download/v0.2.13/sigctl_Darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "ea852075ffe56759c5d7de3ad648836d98a6c5e744093ca96ff1b686526ac709"

    def install
      bin/sigctl
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ensigniasec/sigctl/releases/download/v0.2.13/sigctl_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7a93b5bd9a98cfedf740231ef2ce2bae908aac00832ebf03ca0e5671f4286f0e"

      def install
        bin/sigctl
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ensigniasec/sigctl/releases/download/v0.2.13/sigctl_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "e0027e574581f8e93db9aba74b98d74bd20e331e3887bea7fffd3a4d1dcaf708"

      def install
        bin/sigctl
      end
    end
  end
end
