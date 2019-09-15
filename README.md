### golang pre-commit hooks

- intall [pre-commit](https://pre-commit.com/)

#### go-fmt


#### go-lint


#### go-vet


#### using

- create `.pre-commit-config.yaml` and add this

```
- repo: git://github.com/mengboy/pre-commit-golang.git
  rev: master
  hooks:
    - id: go-fmt
    - id: go-vet
    - id: go-lint
```

- run `pre-commit install`