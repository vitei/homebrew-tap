class Glraw < Formula
  desc "GlRaw"
  homepage "https://github.com/vitei/glraw"
  url "https://github.com/vitei/glraw/releases/download/v1.0.3a/glraw-vitei-1.0.3a.tar.gz"
  version "1.0.3"
  sha256 "53371a297d887ef8e2ba11c5d7d8143a920a8f836b896fce2f0347663bcf137e"

  depends_on "cmake" => :build
  depends_on "qt5"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "cmake", ".", "-DCMAKE_BUILD_TYPE=Release", *std_cmake_args
    system "make", "install"
  end
end
