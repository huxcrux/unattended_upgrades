default: ansible-lint molecule-test

ansible-lint:
	ansible-lint

molecule-test:
	molecule test
