{ pkgs ? import <nixpkgs> { } }:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "gossip";
  version = "0.9";

  cargoLock = {
    lockFile = ./Cargo.lock;

    allowBuiltinFetchGit = true;

    # outputHashes = {
    #   "ecolor-0.26.2" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "egui-video-0.1.0" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "ffmpeg-next-6.1.1" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "gossip-relay-picker-0.2.0-unstable" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "heed-0.20.0-alpha.8" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "nip44-0.1.0" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "nostr-types-0.7.0-unstable" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "qrcode-0.12.0" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "sdl2-0.36.0" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    #   "speedy-0.8.6" = "17f4bsdzpcshwh74w5z119xjy2if6l2wgyjy56v621skr2r8y904";
    # };
  };

  src = pkgs.lib.cleanSource ./.;
}
