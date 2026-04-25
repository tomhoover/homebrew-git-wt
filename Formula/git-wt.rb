class GitWt < Formula
  desc "Lightweight git worktree wrapper with consistent naming convention"
  homepage "https://github.com/tomhoover/git-wt"
  url "https://github.com/tomhoover/git-wt/archive/refs/tags/v0.25.2.tar.gz"
  sha256 "9f16778286e815f3312b8ea4eba79ad6471a09f7e7645be78dc09278e414b183"
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
