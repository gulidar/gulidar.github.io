Run `jekyll serve --host 0.0.0.0` in order to launch page on https://theia-jekyll-isbur.cloud.okteto.net/app/

Theme from here: https://github.com/swcool/landing-page-theme

For development purposes:

Use `--baseurl` option!

```bash
cd ./jekyll/index
jekyll serve --host 0.0.0.0 --baseurl /app/ --config "_config.yml,_config_dev.yml"
```



# Deployment

`git subtree add --prefix gh-pages origin gh-pages`
For some reason this was needed:
`git reset HEAD .`
`jekyll build -s ./jekyll/index -d ./gh-pages/index
