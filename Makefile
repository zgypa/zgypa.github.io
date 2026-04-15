RESUME_REPO = modules/resume
RESUME_DIST = $(RESUME_REPO)/dist

.PHONY: update-cv serve

update-cv:
	git submodule update --init $(RESUME_REPO)
	@if ! command -v nix &> /dev/null; then echo "Warning: nix is not installed. Install from https://nixos.org/download.html"; fi
	cd $(RESUME_REPO) && nix develop -c npm install && nix develop -c make all
	cp $(RESUME_DIST)/resume-full.html ./Toni_Magni_CV.html
	cp $(RESUME_DIST)/case_qrcode_vcard.png ./qrc.png
	cp $(RESUME_DIST)/medoco_qrcode_vcard.png ./qrm.png

serve:
	nix develop -c bundle exec jekyll serve
