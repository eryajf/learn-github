## 这是一个优秀的仓库

{{- range $key, $val := .}}

## {{$key}}

| Repository  | License | Star  |CreatedAt | UpdatedAt  | Description |
|:-:|:-:|:-:|:-:|:-:|:-:|
{{- range $item := $val}}
| [{{$item.owner}}/{{$item.repo}}](https://github.com/{{$item.owner}}/{{$item.repo}}) | {{ghLicense $item.owner $item.repo}} | {{ghStar $item.owner $item.repo}} | {{ghCreate $item.owner $item.repo}} | {{ghUpdate $item.owner $item.repo}} | {{$item.desc}} |
{{- end}}
{{end}}