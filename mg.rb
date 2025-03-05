# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mg < Formula
  desc "CLI tool for managing stacked PRs"
  homepage "https://github.com/mrge-io/mg-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.0/mg_1.1.0_darwin_x86_64.tar.gz"
      sha256 "a4fe60fdabb0744e9adb51bcd7c91af12c0fdae646471fa0c1f5ac6f238988bb"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.0/mg_1.1.0_darwin_arm64.tar.gz"
      sha256 "22efcfb36d42667e9ca548f516dcccb8f89827b542e9800a3b2c722a098c815d"

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
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.0/mg_1.1.0_linux_x86_64.tar.gz"
        sha256 "9988ca6566609f4021c955ec70bd721db87740964e6dbf1db34363eb1c84cc3d"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.0/mg_1.1.0_linux_arm64.tar.gz"
        sha256 "93ba69325045dd8943235ae38c660acdf69d9505c66108b4c80431f3bd7e700a"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end
end
