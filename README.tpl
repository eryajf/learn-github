## 这是一个优秀的仓库

{{- range $key, $val := .}}

## {{$key}}

| Repository | Description | License | Stars |
|---|---|---|---|
{{- range $item := $val}}
|{{$item.repo}}|{{$item.desc}}|{{$item.license}}| {{$item.star}} |
{{- end}}
{{end}}