# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mg < Formula
  desc "CLI tool for managing stacked PRs"
  homepage "https://github.com/mrge-io/mg-cli"
  version "1.0.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.29/mg_1.0.29_darwin_x86_64.tar.gz"
      sha256 "c22c994c9a7a985e0a4fbdc15343278d8374c63fe7228abc0c02b6d670066522"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.29/mg_1.0.29_darwin_arm64.tar.gz"
      sha256 "f348cd0f50c44fe79fe9322dad84f9ec8c2052ce35cb75b56714276693b324d6"

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
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.29/mg_1.0.29_linux_x86_64.tar.gz"
        sha256 "a7ada88c4e2b051caee5de1bec6fe6ba04e9339a067b8db574ee4a263629dadd"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.29/mg_1.0.29_linux_arm64.tar.gz"
        sha256 "90310147d3ad9313c6b9a1932f3ff1778563a2b16edb31d3580a18ea5a5187a2"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end
end
