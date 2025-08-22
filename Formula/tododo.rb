class Tododo < Formula
  desc "Some todo manager that should be extinct"
  homepage "https://github.com/bmarse/tododo"
  url "https://github.com/bmarse/tododo/archive/refs/tags/v0.5.1-stable.tar.gz"
  sha256 "9457ea2901a7cf97f319fa886553cc8c5317b607e15d9eae254e3829e729e94f"
  license "MIT"
  depends_on "go" => :build
  def install
    system "go", "build", *std_go_args, "."
  end
  test do
    system "#{bin}/tododo", "--version"
  end
end
