class Psst < Formula
  desc "Nudges Claude Code to use just recipes instead of repetitive bash commands, reducing context waste"
  homepage "https://github.com/m-gris/psst"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/m-gris/psst/releases/download/v0.1.1/psst-0.1.1-darwin-arm64.tar.gz"
      sha256 "3e17c9876eda33c9a45df88c15ade97d69fca6afeffd4a5573286ff65658b8af"
    end
  end

  def install
    bin.install "psst"
    bin.install "psst-pre-tool-hook"
    bin.install "psst-post-tool-hook"
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
