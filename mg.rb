# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mg < Formula
  desc "CLI tool for managing stacked PRs"
  homepage "https://github.com/mrge-io/mg-cli"
  version "1.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.4/mg_1.1.4_darwin_x86_64.tar.gz"
      sha256 "f8214a810fe977eae2c881792ed71074556972828d0442968c6b90a70d4300f3"

      def install
        bin.install "mg"
        # Install shell completions
        generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.4/mg_1.1.4_darwin_arm64.tar.gz"
      sha256 "47dbe64c13b4e87993e87d6fe996c4d09a0bd11b5500dda441d2d67f19c0c12d"

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
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.4/mg_1.1.4_linux_x86_64.tar.gz"
        sha256 "1877c09a7866ed64b575676598a97fa3de25c9fa9452c49f1440fb0b728987e6"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrge-io/homebrew-tap/releases/download/v1.1.4/mg_1.1.4_linux_arm64.tar.gz"
        sha256 "3cb91904b955310a7bac47bd4afac6b2276777a6b954aa13b3f28f15c5c288f2"

        def install
          bin.install "mg"
          # Install shell completions
          generate_completions_from_executable(bin/"mg", "completion", shells: [:bash, :zsh])
        end
      end
    end
  end
end
