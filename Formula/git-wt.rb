class GitWt < Formula
  desc "Lightweight git worktree wrapper with consistent naming convention"
  homepage "https://github.com/tomhoover/git-wt"
  url "https://github.com/tomhoover/git-wt/archive/refs/tags/v0.22.2.tar.gz"
  sha256 "94a13a47e025231b547327a6d9bf53dd3036d5e3f5d527a3ccc4292caa7ba576"
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
