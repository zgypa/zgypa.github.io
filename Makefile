.PHONY: update-cv

update-cv:
	git submodule update --init modules/resume
	@if ! command -v nix &> /dev/null; then echo "Warning: nix is not installed. Install from https://nixos.org/download.html"; fi
	cd modules/resume && nix develop -c npm install && nix develop -c make all
	cp modules/resume/dist/resume-full.html ./Toni_Magni_CV.html
