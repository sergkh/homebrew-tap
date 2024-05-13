class TableCli < Formula
  desc "The table is a simple tool to transform table data in CSV or SQL/CQL output format."
  homepage "https://github.com/sergkh/table-cli"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/sergkh/table-cli/releases/download/v0.0.12/osx_x86_64.tar.gz"
      sha256 "803eb65420ddaa02933c73275d35f5effef21f4a04c6a025d7e58949a1b955aa"
    elsif Hardware::CPU.arm?
      url "https://github.com/sergkh/table-cli/releases/download/v0.0.12/osx_arm64.tar.gz"
      sha256 "5275fba2904dc659386068d0553833e8c21f42c183e183e73f75fa276b8e3766"
    end
  elsif OS.linux?
    url "https://github.com/sergkh/table-cli/releases/download/v0.0.12/linux.tar.gz"
    sha256 "ea9e4e6f60baba2ec3e7f4136b09858509d6a383a4ecb1987ddd6b501e1a282b"
  end
  def install
    bin.install "table"
  end
end