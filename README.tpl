
# k8s

k8s范畴的开源项目，列表如下，共计（ {{len .}} 个。）

| Repository | Description | License | Stars |
|---|---|---|---|
{{- range $val := .}}
|{{$val.k8s-repo}}|{{$val.k8s-desc}}|{{$val.k8s-license}}| {{$val.k8s-star}} |
{{- end}}

# web

web范畴的开源项目，列表如下，共计（ {{len .}} 个。）

| Repository | Description | License | Stars |
|---|---|---|---|
{{- range $val := .}}
|{{$val.web-repo}}|{{$val.web-desc}}|{{$val.web-license}}| {{$val.web-star}} |
{{- end}}
