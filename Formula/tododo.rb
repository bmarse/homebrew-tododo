class Tododo < Formula
    desc "The todo manager that should be extinct"
    homepage "https://github.com/bmarse/tododo"
    url "https://github.com/bmarse/tododo/archive/refs/tags/v0.5.0-stable.tar.gz"
    sha256 "50ff5ef2c5ba1d463aba0def28f9439b59ca87bc354bc5150df67ffe12ac2576"
    license "MIT"
  
    depends_on "go" => :build

    def install
      system "go", "build", *std_go_args, "."
    end
  
    test do
      system "#{bin}/tododo", "--version"
    end
  end
