class Tododo < Formula
  desc "Some todo manager that should be extinct"
  homepage "https://github.com/bmarse/tododo"
  url "https://github.com/bmarse/tododo/archive/refs/tags/v0.7.0-stable.tar.gz"
  sha256 "d57c5d28efabc8f63e6ee21b5283449545ff7db6b299ed80649022c75dcfb215"
  license "MIT"
  depends_on "go" => :build
  def install
    ldflags = "-s -w -X 'main.appVersion=brew-v0.7.0-stable'"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end
  test do
    system "#{bin}/tododo", "--version"
  end
end
