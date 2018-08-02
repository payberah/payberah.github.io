# github commands
git init
git pull https://github.com/payberah/payberah.github.io.git
git remote add origin https://github.com/payberah/payberah.github.io.git

git config --global user.name "Amir H. Payberah"
git config --global user.email "payberah@gmail.com"
git config credential.helper store

git rm ...
git add .
git commit -m "comment"
git push origin master

###################################################################################
# Github pages files
###################################################################################
* _config.yml: the main config file

* _data/navigation.yml: the links path definition (the page files, either .md or .html, are under the folder _pages)
```
main:
  - title: "Publications"
    url: /publications/

  - title: "Teaching"
    url: /teaching/

  - title: "Talks and Slides"
    url: /talks/

  - title: "CV"
    url: /cv/
```

###################################################################################
# Search engine optimization for GitHub pages
GitHub Pages can optimize your site for search engines and social media networks, using the Jekyll SEO tag plugin (https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/installation.md).

To enable the Jekyll SEO tag plugin:
1. Add the following to your site's Gemfile:
```gem 'jekyll-seo-tag'```

2. Add the following to your site's _config.yml:
```
plugins:
  - jekyll-seo-tag
```

3. Add the following right before </head> in your site's template(s), in _layouts/default.html:
```
<html>
  <head>
    {% include head.html %}
    {% seo %}
  </head>
</html>
```
