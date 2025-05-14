# GitLab CI Ansible Docker Image

A lightweight, Python-based Docker image specifically designed for use with GitLab CI pipelines. It includes Ansible, ansible-lint, and pre-commit tools for effective automation and continuous integration.

## What's Included?

- **Base Image:** Python `3.13-slim-bookworm`
- **Automation Tools:**
  - `Ansible`
  - `ansible-lint`
  - `pre-commit`

## Quickstart

### GitLab CI Example

Use this image directly in your GitLab CI pipeline by adding it to your `.gitlab-ci.yml`:

```yaml
image: docker.io/xhochn/dpci-ansible-image:latest

stages:
  - lint
  - test

lint-job:
  stage: lint
  script:
    - ansible-lint
    - pre-commit run --all-files

test-job:
  stage: test
  script:
    - ansible-playbook -i inventory main.yml
```

### Docker Usage

You can also use this image locally for testing:

```bash
docker pull docker.io/xhochn/dpci-ansible-image:latest

docker run --rm -v $(pwd):/workspace -w /workspace docker.io/xhochn/dpci-ansible-image:latest ansible-playbook main.yml
```

## Building Locally

Clone this repository and build the Docker image yourself:

```bash
git clone https://github.com/xhochn/dpci-ansible-image.git
cd dpci-ansible-image

docker build -t dpci-ansible-image:local .
```

## License

This project is open-source and available under the [MIT License](LICENSE).
