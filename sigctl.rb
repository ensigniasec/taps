# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sigctl < Formula
  desc ""
  homepage "https://github.com/ensigniasec/sigctl"
  version "0.1.29"

  on_macos do
    url "https://github.com/ensigniasec/sigctl/releases/download/v0.1.29/sigctl_Darwin_all.tar.gz", using: CurlDownloadStrategy
    sha256 "fd42b5e0be8627814413f6d6cbf63eed714e0915a41f30d7920814c8e53a48f2"

    def install
      bin/sigctl
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ensigniasec/sigctl/releases/download/v0.1.29/sigctl_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "45c30ad0b7442c59ab8ed8b86a80a5db16d90ec7b0f637b2faed19dea6315ed9"

      def install
        bin/sigctl
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ensigniasec/sigctl/releases/download/v0.1.29/sigctl_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "9580f2b87a0105051f213ee95f398ea363f72408f7a56323b0bebc02f0de5d3e"

      def install
        bin/sigctl
      end
    end
  end
end
