# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mg < Formula
  desc "CLI tool for managing stacked PRs"
  homepage "https://github.com/mrge-io/mg-cli"
  version "1.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.10/mg_1.1.10_darwin_x86_64.tar.gz"
      sha256 "d9f0e969a2510bad1cce18e85c6daabe6e7310512c0f80468facfd93de92659f"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.10/mg_1.1.10_darwin_arm64.tar.gz"
      sha256 "0669d972d7abceb12ffb49acf5814cb6ca7d36cfbe10aa7c5577ab79d1795fc8"

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
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.10/mg_1.1.10_linux_x86_64.tar.gz"
        sha256 "6874a69ec0237d3391f3f8d726a10631b637b2c880ef789ca782c72aecb6bc7f"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.10/mg_1.1.10_linux_arm64.tar.gz"
        sha256 "8cb02dc2742a98b841fbe9c068ac6db1f033875daa0e51076e3952d73001a4b5"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end
end
