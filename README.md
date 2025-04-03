# GitLab CI Ansible Docker Image

A minimal Python-based Docker image for use in GitLab CI with Ansible, ansible-lint and pre-commit installed.

## Included

- Python 3.11 (slim)
- Ansible
- ansible-lint
- pre-commit

## Usage

Use it in your `.gitlab-ci.yml`:

```yaml
image: docker.io/xhochn/gitlab-ci-ansible:latest
```

## License

MIT
