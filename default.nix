{ lib, stdenv, curl }:

stdenv.mkDerivation {
  pname = "archiver";
  version = "0.1";
  src = ./.;

  propagatedBuildInputs = [
    curl
  ];

  buildPhase = ''
    chmod +x archiveurl
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv archiveurl $out/bin/archiveurl
  '';

  meta = with lib; {
    description = "Archive links present in Markdown and HTML docs easily";
    license = licenses.publicDomain;
    platforms = platforms.linux;
    maintainers = with maintainers; [ gotlougit ];
  };

}
