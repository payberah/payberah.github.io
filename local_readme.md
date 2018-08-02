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

* _data/navigation.yml: the links path definition (the pages, either .md or .html, are under the folder _pages)
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

* _includes/footer.html: the footer information, e.g., the email and phone number
```
{% include base_path %}

<br>
<i class="fa fa-fw fa-envelope" aria-hidden="true"></i> payberah@kth.se</a>
<br>
<i class="fa fa-fw fa-envelope" aria-hidden="true"></i> payberah@gmail.com</a>
<br>
<i class="fa fa-fw fa-skype" aria-hidden="true"></i> payberah</a>
<br>
<i class="fa fa-fw fa-phone" aria-hidden="true"></i> +46-(0)72-55 44 011</a>
```


###################################################################################
# Install and update the Github pages dependencies
1. Make sure you have ruby-dev, bundler, and nodejs installed:
```
sudo apt install ruby-dev ruby-bundler nodejs
```

2. Clean up the directory (no need to run --force)
```
bundle clean
```

3. Install ruby dependencies. If you get errors, delete Gemfile.lock and try again.
```
bundle install
```

4. Update every gem in the Gemfile to the latest possible versions:
```
bundle update
```

5. Update the bundler to the latest version:
```
sudo gem install bundler
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
