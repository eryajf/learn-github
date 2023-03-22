// nav
module.exports = [
  { text: '首页', link: '/' },
  { text: '运维',link: '/ops/',},
  { text: '专题',link: '/topic/',},
  { text: '生活',link: '/life/',},
  { text: '编程',link: '/code/',
  },
  { text: '周刊', link: '/weekly/',
    items: [
      { text: '学习周刊', link: '/learning-weekly/'},
      { text: 'Obsidian插件周刊', link: '/obsidian-weekly/'},
    ]
  },
  { text: '关于', link: '/about/' },
  { text: '友链', link: '/friends/' },
  { text: '推广', link: '/geektime/' },
  // { text: '索引', link: '/categories/',
  //   items: [
  //     { text: '分类', link: '/categories/' },
  //     { text: '标签', link: '/tags/' },
  //     { text: '归档', link: '/archives/' },
  //   ],
  // },
  {
    text: '页面',
    link: '/nav/',
    items: [
      {
        text: '本站索引',
        items: [
          { text: '分类', link: '/categories/' },
          { text: '标签', link: '/tags/' },
          { text: '归档', link: '/archives/' },
        ],
      },
      {
        text: '本站页面',
        items: [
          { text: '导航', link: '/nav/' },
          { text: '打赏', link: '/reward/' },
        ]
      },
      {
        text: '我的工具',
        items: [
          { text: '备忘录清单', link: 'https://ref.eryajf.net' },
          { text: '网站状态', link: 'http://uptime.eryajf.net/dashboard' },
          { text: 'json2go', link: 'http://public.eryajf.net/json2go' },
          { text: '微信MD编辑', link: 'http://public.eryajf.net/mdnice' },
          { text: '国内镜像', link: 'http://public.eryajf.net/mirror' },
          { text: '出口IP查询', link: 'http://ip.eryajf.net' },
          { text: '代码高亮工具', link: 'http://public.eryajf.net/highlight/' },
        ]
      },
     {
        text: '外站页面',
        items: [
          { text: '开往', link: 'https://www.travellings.cn/go.html' },
          { text: 'ldapdoc', link: 'http://ldapdoc.eryajf.net' },
          { text: 'HowToStartOpenSource', link: 'https://eryajf.github.io/HowToStartOpenSource' },
          { text: 'vdoing-template', link: 'https://eryajf.github.io/vdoing-template/' },
        ]
      }
    ],
  },
  // { text: '开往', link: 'https://travellings.link' },
]