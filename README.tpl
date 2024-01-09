
# k8s

k8s范畴的开源项目，列表如下，共计（ {{len .}} 个。）

| Repository | Description | License | Stars |
|---|---|---|---|
{{- range $val := .}}
|{{$val.k8s_repo}}|{{$val.k8s_desc}}|{{$val.k8s_license}}| {{$val.k8s_star}} |
{{- end}}

# web

web范畴的开源项目，列表如下，共计（ {{len .}} 个。）

| Repository | Description | License | Stars |
|---|---|---|---|
{{- range $val := .}}
|{{$val.web_repo}}|{{$val.web_desc}}|{{$val.web_license}}| {{$val.web_star}} |
{{- end}}
