class Clipmaker < Formula
  desc "Football video clipping and analysis workstation"
  homepage "https://github.com/B03GHB4L1/ClipMaker"
  url "https://github.com/B03GHB4L1/ClipMaker/releases/download/v1.0.0/vizorplay-1.0.0-source.tar.gz"
  version "1.0.0"
  sha256 "8db878e94fef2860ebc2474f8d8403660604969a5d24b2783d9b979407f5701c"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.12"

  def install
    libexec.install "app", "ui", "requirements.txt"
    libexec.install "packaging/clipmaker_bootstrap.py"
    libexec.install "packaging/clipmaker_api_server.py"
    libexec.install "packaging/analysis_server.py"

    (bin/"clipmaker").write <<~SH
      #!/bin/bash
      exec "#{Formula["python@3.12"].opt_bin}/python3.12" "#{libexec}/clipmaker_bootstrap.py" "$@"
    SH
    (bin/"clipmaker").chmod 0755
    bin.install_symlink "clipmaker" => "vizorplay"
  end

  test do
    assert_predicate bin/"clipmaker", :executable?
    assert_predicate bin/"vizorplay", :executable?
  end
end
