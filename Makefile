.PHONY: cv

current_dir = $(shell pwd)

cv:
	podman build -t cvbuilder $(current_dir)
	podman run -u $(UID):$(GID) --rm -v $(current_dir):/cv cvbuilder

clean:
	rm -rf *.aux *.out *.log *.pdf *.fdb_latexmk *.fls *.xdv
