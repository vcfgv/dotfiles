const {
  aceVimMap,
  mapkey,
  imap,
  imapkey,
  getClickableElements,
  vmapkey,
  map,
  unmap,
  unmapAllExcept,
  cmap,
  addSearchAlias,
  removeSearchAlias,
  tabOpenLink,
  readText,
  Clipboard,
  Front,
  Hints,
  Visual,
  RUNTIME
} = api;

// an example to create a new mapping `ctrl-y`
mapkey('<Ctrl-y>', 'Show me the money', function () {
  Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
});

// an example to replace `T` with `gt`, click `Default mappings` to see how `T` works.
map('gt', 'T');

// an example to remove mapkey `Ctrl-i`
unmap('<Ctrl-i>');

unmapAllExcept(['u', 'd', 'r'], /read.readwise.io/);

// map to vimum
map('u', 'e');
mapkey('p', "Open the clipboard's URL in the current tab", function () {
  Front.getContentFromClipboard(function (response) {
    window.location.href = response.data;
  });
});
map('P', 'cc');
map('gi', 'i');
map('i', '<Alt-i>');
map('F', 'gf');
map('gf', 'w');
map('`', '\'');
// save default key `t` to temp key `>_t`
// map('>_t', 't');
// create a new key `o` for saved temp key `>_t`
// map('o', '>_t');
map('H', 'S');
map('L', 'D');
map('gt', 'R');
map('gT', 'E');
map('K', 'R');
map('J', 'E');

// custormization start
addSearchAlias(
  'j',
  'jd',
  'http://search.jd.com/Search?enc=utf-8&keyword=',
  's'
)
removeSearchAlias('d', 's')
addSearchAlias(
  'db',
  'doubanbook',
  'https://www.douban.com/search?cat=1001&q=',
  's'
)

addSearchAlias(
  'tb',
  'taobao',
  'https://s.taobao.com/search?q=',
  's',
  'https://suggest.taobao.com/sug?code=utf-8&q=',
  function (response) {
    var res = []
    try {
      res = JSON.parse(response.text).result.map(function (it) {
        return it[0]
      })
    } catch (e) { }
    return res
  }
)
// 移除 URL 的 query 和 hash 部分
function _cleanupUrl(url, doCleanup) {
  return doCleanup ? /http[^#\?]*/.exec(url)[0] : url
}

function _getCurrentTabMarkdown(doCleanup) {
  let title = document.title
  const url = location.href
  const urlHost = location.hostname
  const urlPath = location.pathname
  let prefix = ''

  // get actual article title for Wechat Public Account page.
  // comment out if you already have a userscript rectifying the title.
  // e.g. [修改微信公众号文章title标题](https://greasyfork.org/en/scripts/375439-%E4%BF%AE%E6%94%B9%E5%BE%AE%E4%BF%A1%E5%85%AC%E4%BC%97%E5%8F%B7%E6%96%87%E7%AB%A0title%E6%A0%87%E9%A2%98)
  // if (urlHost === 'mp.weixin.qq.com') {
  //   title = document.getElementById('activity-name').innerText
  // }

  // Alfred Forum 页的标题精简
  if (urlHost.includes('www.alfredforum.com')) {
    title = title.replace('- Discussion & Help - Alfred App Community Forum', '')
  }

  // BiliBili 页精简标题和 URL
  if (urlHost.includes('www.bilibili.com')) {
    title = title.replace('_哔哩哔哩_bilibili', '')
  }

  // Zhihu 页的标题精简掉私信、消息提示文字
  if (urlHost.includes('www.zhihu.com')) {
    title = title.replace(/\(\d+.*(消息|私信)\) /, '').replace(' - 知乎', '')
  }

  if (urlHost === 'github.com') {
    const issuesRegexPattern = /issues\/\d+$/
    if (issuesRegexPattern.test(urlPath)) {
      const issuePathParts = /\/(.*)\/issues\/(\d+)$/.exec(urlPath)
      // Github issue 页的标题精简为 ${repo-name}#${issue-no}，如 Webpack#123
      const [, repoName, issueNo] = issuePathParts
      title = `${repoName}#${issueNo}`
    } else {
      // assume we are at repo root, or monorepo subproject root
      const starCountEl = document.querySelector(
        '.social-count[href$="/stargazers"]'
      )
      const starCount = (starCountEl && starCountEl.innerText.trim()) || '0'
      prefix =
        starCount.endsWith('k') || parseInt(starCount) > 99
          ? `${starCount}★ `
          : ''
    }
  }

  return `${prefix}[${title}](${_cleanupUrl(url, doCleanup)})`
}

function _copyAllTabsMarkdown(doCleanup) {
  RUNTIME('getTabs', null, (response) => {
    const tabs = (response && response.tabs) || []
    markdownStr = tabs
      .filter(
        (tab) => tab.url.startsWith('http') && tab.url.indexOf('cache') === -1
      )
      .map((tab) => `[${tab.title}](${_cleanupUrl(tab.url, doCleanup)})`)
      .concat(_getCurrentTabMarkdown(doCleanup))
      .join('\n')
    Clipboard.write(markdownStr)
  })
}

mapkey(
  'ybb',
  'Copy current tab in Markdown format',
  function () {
    Clipboard.write(_getCurrentTabMarkdown())
  },
  {}
)

mapkey(
  'ybcb',
  'Copy current tab in Markdown format, removing query and hash in URL',
  function () {
    Clipboard.write(_getCurrentTabMarkdown(true))
  },
  {}
)

mapkey(
  'yba',
  'Copy all tabs in Markdown format',
  function () {
    _copyAllTabsMarkdown()
  },
  {}
)

mapkey(
  'ybca',
  'Copy all tabs in Markdown format, removing query and hash in URL',
  function () {
    _copyAllTabsMarkdown(true)
  },
  {}
)
// customization end

settings.tabsThreshold = 3;
settings.omnibarPosition = "top";
settings.hintAlign = "left";

// set theme
settings.theme = `
body {
    font-family: "Fira Code", Consolas, "Liberation Mono", Menlo, Courier, monospace;
}

.sk_theme {
    font-family: Input Sans Condensed, Charcoal, sans-serif;
    font-size: 10pt;
    background: #24272e;
    color: #abb2bf;
}
.sk_theme tbody {
    color: #fff;
}
.sk_theme input {
    color: #d0d0d0;
    font-family: "Fira Code";
}
.sk_theme .url {
    color: #61afef;
}
.sk_theme .annotation {
    color: #56b6c2;
}
.sk_theme .omnibar_highlight {
    color: #528bff;
}
.sk_theme .omnibar_timestamp {
    color: #e5c07b;
}
.sk_theme .omnibar_visitcount {
    color: #98c379;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
    background: #303030;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
    background: #3e4452;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
// click `Save` button to make above settings to take effect.
