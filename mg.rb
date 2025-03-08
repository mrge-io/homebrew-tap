# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mg < Formula
  desc "CLI tool for managing stacked PRs"
  homepage "https://github.com/mrge-io/mg-cli"
  version "1.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.5/mg_1.1.5_darwin_x86_64.tar.gz"
      sha256 "a2c6f3cabbc52cc0c6fc8164153a1eeb59f395a1e0bb7342c2ba08d5fa2b876a"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.5/mg_1.1.5_darwin_arm64.tar.gz"
      sha256 "87c4e44f5cef36f449bd28ca050c1c91c2233cf931fed1c28b65ab431370b276"

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
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.5/mg_1.1.5_linux_x86_64.tar.gz"
        sha256 "f54d9ea2dc0b99f206c0212de56b85dbb7253ccfbed7ab5d2430b5b8da2b6c2c"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.5/mg_1.1.5_linux_arm64.tar.gz"
        sha256 "96d463b7567af8652cc4562a632cea499bb22ba754bdefd7d4685f8f311d36b7"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end
end
