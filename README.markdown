# DNS Lookup Block

## Example Usage

	curl -v -X OPTIONS http://block-dns-lookup.herokuapp.com
	
	curl -i -X POST -d '{"inputs":[{"domain":"google.com"}]}' -H "Content-Type: application/json" http://block-dns-lookup.herokuapp.com