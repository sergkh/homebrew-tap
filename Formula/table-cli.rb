class TableCli < Formula
  desc "The table is a simple tool to transform table data in CSV or SQL/CQL output format."
  homepage "https://github.com/sergkh/table-cli"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/sergkh/table-cli/releases/download/v0.2.2/osx_x86_64.tar.gz"
      sha256 "e6b5d69b14fed979c7dadb089fdc22b234690d6d6adf6453dea6c0f81e7acfcd"
    elsif Hardware::CPU.arm?
      url "https://github.com/sergkh/table-cli/releases/download/v0.2.2/osx_arm64.tar.gz"
      sha256 "7348e37e5b2a21ff39d59179025d04dc2010fab7dc86971a272a4e46b9ab4139"
    end
  elsif OS.linux?
    url "https://github.com/sergkh/table-cli/releases/download/v0.2.2/linux.tar.gz"
    sha256 "0c332070b19776591cfcaf18737f8e8d2b46c0790d296dafede1d1571830288b"
  end
  def install
    bin.install "table"
  end
end
