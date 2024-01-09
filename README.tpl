## 这是一个优秀的仓库

{{- range $key, $val := .}}

## {{$key}}

| Repository | Description | License | Stars |
|---|---|---|---|
{{- range $item := $val}}
|{{$item.repo}}|{{$item.desc}}|{{$item.license}}| {{$item.star}} |
{{- end}}
{{end}}

---

以下是一些测试内容。


打印目录

{{printToc}}

打印贡献者

{{printContributors "eryajf" "learn-github"}}

打印星标历史记录

{{printStarHistory "eryajf" "learn-github"}}


打印存储库的访问者计数图表

{{printVisitorCount "repo-id"}}

打印页面启用的所有存储库

{{printPages "eryajf"}}

用户渲染为链接

{{gh "eryajf" true}}

表情

{{ghEmoji "eryajf"}}