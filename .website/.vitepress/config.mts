import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Acanthis",
  description: "Validation library",
  lastUpdated: true,
  head: [
    ['link', { rel: "icon", type: "image/png", sizes: "32x32", href: "/acanthis-icon-32x32.png"}],
    ['link', { rel: "icon", type: "image/png", sizes: "16x16", href: "/acanthis-icon-16x16.png"}],
  ],
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      {
        text: 'pub.dev',
        link: 'https://pub.dev/packages/acanthis'
      }
    ],
    outline: {
      level: [2, 3]
    },
    logo: '/acanthis-logo.png',
    sidebar: [
      {
        text: 'Introduction',
        link: '/introduction',
      },
      {
        text: 'Types',
        items: [
          { text: 'Type', link: '/types' },
          { text: 'Boolean', link: '/types/boolean' },
          { text: 'String', link: '/types/string' },
          { text: 'Number', link: '/types/number' },
          { text: 'Date', link: '/types/date' },
          { text: 'List', link: '/types/list' },
          { text: 'Map', link: '/types/map' },
          { text: 'Nullable', link: '/types/nullable' },
          { text: 'Union', link: '/types/union' },
        ]
      }
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/francescovallone/acanthis' }
    ]
  }
})
