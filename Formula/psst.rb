class Psst < Formula
  desc "Nudges Claude Code to use just recipes instead of repetitive bash commands, reducing context waste"
  homepage "https://github.com/m-gris/psst"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/m-gris/psst/releases/download/v0.1.0/psst-0.1.0-darwin-arm64.tar.gz"
      sha256 "167b7cfc589b1040f678f69b2a22c0e2aaf8d037ef88413fe8a509bc95632fb8"
    end
  end

  def install
    bin.install "psst"
  end

  def caveats
    <<~EOS
      To configure Claude Code hooks, run:
        psst init

      To verify installation:
        psst doctor
    EOS
  end

  test do
    system "#{bin}/psst", "--help"
  end
end
