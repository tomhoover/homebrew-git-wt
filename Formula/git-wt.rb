class GitWt < Formula
  desc "Lightweight git worktree wrapper with consistent naming convention"
  homepage "https://github.com/tomhoover/git-wt"
  url "https://github.com/tomhoover/git-wt/archive/refs/tags/v0.24.0.tar.gz"
  sha256 "2187cf2ff8ef3fce0ec26324aa3bb8448f993fb9206e78780a26f372c928803e"
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
