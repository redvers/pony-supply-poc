all:
	corral run -- ponyc --safe

refresh:
	rm -rf _corral _repos
	corral fetch
