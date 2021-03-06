# -*- ruby -*-

class C2go < Formula
  desc 'Tool for converting C to Go.'
  homepage 'https://github.com/elliotchance/c2go/'
  url 'https://github.com/elliotchance/c2go/archive/v0.8.6.tar.gz'
  sha256 '2d6b7c648723c31a4a8839d70cf3d7053f265071dbf73d99707c3bb5bb401e80'

  depends_on 'go' => :build

  def install
    ENV['GOPATH']      = buildpath
    ENV['GOBIN']       = buildpath
    ENV['CGO_ENABLED'] = '0'

    system 'go', 'build', '-o', "#{bin}/c2go"
  end

  test do
    system "#{bin}/c2go"
  end
end
# EOF
