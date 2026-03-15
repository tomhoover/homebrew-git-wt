class GitWt < Formula
  desc "Lightweight git worktree wrapper with consistent naming convention"
  homepage "https://github.com/tomhoover/git-wt"
  url "https://github.com/tomhoover/git-wt/archive/refs/tags/v0.24.1.tar.gz"
  sha256 "869fab5bd986b4247fe168225ab8396cd036120dc91f015ec186b273b41a59a2"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "src/git-wt" => "git-wt"
    bash_completion.install "completions/git-wt.sh"
    zsh_completion.install "completions/_git-wt"
  end

  test do
    assert_match "git-wt version", shell_output("#{bin}/git-wt version")
  end
end
