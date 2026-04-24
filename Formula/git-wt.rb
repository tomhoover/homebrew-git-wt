class GitWt < Formula
  desc "Lightweight git worktree wrapper with consistent naming convention"
  homepage "https://github.com/tomhoover/git-wt"
  url "https://github.com/tomhoover/git-wt/archive/refs/tags/v0.25.1.tar.gz"
  sha256 "f829f1152966f95293b2280f6049184cac371fe1d874fc657e34ee5f39884b14"
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
