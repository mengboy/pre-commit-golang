### golang pre-commit hooks

- intall [pre-commit](https://pre-commit.com/)

- require go 1.12

#### go-fmt
-  执行` goimports `检查, 如果`goimports`没有安装, 需要执行`go get golang.org/x/tools/cmd/goimports` 进行安装

- 对没有进行 gofmt 的文件,进行 gofmt 格式化


#### go-lint
- 进行 go-lint 检查, 需要安装golint, `go get github.com/golang/lint/golint`


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

- run `pre-commit install` to install
- run `pre-commit autoupdate` to update 