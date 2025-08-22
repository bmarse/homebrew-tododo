class Tododo < Formula
  desc "Some todo manager that should be extinct"
  homepage "https://github.com/bmarse/tododo"
  url "https://github.com/bmarse/tododo/archive/refs/tags/v0.5.2-stable.tar.gz"
  sha256 "bb6d15b90e3030e8bdd3059999aaf890b98bf3cf70302399bf808dcc10de4e90"
  license "MIT"
  depends_on "go" => :build
  def install
    system "go", "build", *std_go_args, "."
  end
  test do
    system "#{bin}/tododo", "--version"
  end
end
