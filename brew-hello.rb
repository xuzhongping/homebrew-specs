# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class BrewHello < Formula
  desc "brew-hello"
  homepage ""
  url "https://github.com/xuzhongping/brew-hello/archive/0.0.3.zip"
  sha256 "94b8941bd693f189402a1ba05dfe708a2adc01e6e1de57eb82d544b3fc628737"
  license ""

  # depends_on "cmake" => :build

  def install
    system("clang brew-hello.c -o brew-hello")
    bin.install("brew-hello")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test brew-hello`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
