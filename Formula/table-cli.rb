class TableCli < Formula
  desc "The table is a simple tool to transform table data in CSV or SQL/CQL output format."
  homepage "https://github.com/sergkh/table-cli"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/sergkh/table-cli/releases/download/v0.0.14/osx_x86_64.tar.gz"
      sha256 "b7359e45b2988b2cc93a3589a56d962d60d4ad2c80f863fc5fd58eaaa47ba512"
    elsif Hardware::CPU.arm?
      url "https://github.com/sergkh/table-cli/releases/download/v0.0.14/osx_arm64.tar.gz"
      sha256 "a890e21d239081f45db4cde973e42809549b419e32b958cc80b5b8e11292d234"
    end
  elsif OS.linux?
    url "https://github.com/sergkh/table-cli/releases/download/v0.0.14/linux.tar.gz"
    sha256 "cb23e440d27230a84c59c8626c097ad92df6265fdbc25133c138681a4a9d98d8"
  end
  def install
    bin.install "table"
  end
end
