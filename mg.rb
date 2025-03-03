# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mg < Formula
  desc "CLI tool for managing stacked PRs"
  homepage "https://github.com/mrge-io/mg-cli"
  version "1.0.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.40/mg_1.0.40_darwin_x86_64.tar.gz"
      sha256 "b7ec2ac6cea7c052fe27ccf35f798d1b66cc083f1f7aff1e44960cbca598544a"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.40/mg_1.0.40_darwin_arm64.tar.gz"
      sha256 "d32b1d5942ebc11bd6d0045180d0e9e15a75b50120e10646dc11864bea47d4d3"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.40/mg_1.0.40_linux_x86_64.tar.gz"
        sha256 "72de310ea109adf507040573688be80f6ba8b089b3bddccbcc5c544d53a1868a"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.40/mg_1.0.40_linux_arm64.tar.gz"
        sha256 "a6e92b7cd5da7d0a06e12673f70cd2c8b1462a74bb5a9fea1542b3853ddce6e7"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end
end
