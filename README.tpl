## 这是一个优秀的仓库

{{- range $key, $val := .}}

## {{$key}}

| Repository | Description | License | Stars | Fork | LastUpdate| Create |
|---|---|---|---|---|---|---|
{{- range $item := $val}}
| [{{$item.owner}}/{{$item.repo}}](https://github.com/{{$item.owner}}/{{$item.repo}})|{{$item.desc}}|{{ghLicense $item.owner $item.repo}}| {{ghStar $item.owner $item.repo}} |{{ghFork $item.owner $item.repo}} |{{ghUpdate $item.owner $item.repo}} |{{ghCreate $item.owner $item.repo}} |
{{- end}}
{{end}}