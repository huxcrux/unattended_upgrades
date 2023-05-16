default: ansible-lint molecule-test

ansible-lint:
	ansible-lint

yaml-lint:
	yamllint .

molecule-test:
	molecule test
