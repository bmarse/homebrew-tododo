class Tododo < Formula
  desc "Some todo manager that should be extinct"
  homepage "https://github.com/bmarse/tododo"
  url "https://github.com/bmarse/tododo/archive/refs/tags/v0.6.0-stable.tar.gz"
  sha256 "25417b763fec6cbeb7fc96a2e4c979fb884b8a7a51e2a207f22a15003c088d69"
  license "MIT"
  depends_on "go" => :build
  def install
    system "go", "build", *std_go_args, "."
  end
  test do
    system "#{bin}/tododo", "--version"
  end
end
