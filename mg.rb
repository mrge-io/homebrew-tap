# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mg < Formula
  desc "CLI tool for managing stacked PRs"
  homepage "https://github.com/mrge-io/mg-cli"
  version "1.0.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.30/mg_1.0.30_darwin_x86_64.tar.gz"
      sha256 "cde7e960e206a1e95aa066a80ad0e113fdc775890601fc3c786b9061f77d99b9"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.30/mg_1.0.30_darwin_arm64.tar.gz"
      sha256 "9d33e7991606535efae2026dbe2652b412d4e4f2818a9e7259eb0ba6a35a05da"

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
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.30/mg_1.0.30_linux_x86_64.tar.gz"
        sha256 "7417d104ffeb2188071bb22e6bdc4be4b6df61190d6917f6136629c324a7ca29"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.0.30/mg_1.0.30_linux_arm64.tar.gz"
        sha256 "62323dd4004dc309a267a68427fa114973ba68cefd62c687a377ce1f9bf02c41"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end
end
