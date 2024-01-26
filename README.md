# Blue

Minimalist Jekyll theme based on Bulma.

This work is on active development, but currently suitable for use on production and GitHub pages.

[DEMO](https://jsalvador.me/blue)

## What does comes with Blue?

Blue comes with the following features:

* Bulma CSS library.
* Kramdown as Markdown engine.
* MathJax for LaTeX-math support.
* Syntax highlight built-in.
* Pagination (via `jekyll-paginate` rubygem).
* Search engine optimization (via `jekyll-seo-tag` rubygem).
* RSS support by default (via `jekyll-feed` rubygem).

## Installation (GitHub Pages)

1. Fork this repository.
2. Rename your fork as `your-username*.github.io`
3. Edit the variables on `_config.yml` to make them yours.
4. Replace the content of `_posts/` with your own content.
5. Enjoy and submit me any issue or improvement!


## Installation (using RubyGems)

1. Add `blue-jekyll-theme` to your `Gemfile`.
2. Update your gems.
    ```
    $ bundle update
    ```
3. Update your `_config.yml` file, replace your current theme by `blue-jekyll-theme` and add the needed plugins:

    * `jekyll-paginate`
    * `jekyll-seo-tag`
    * `jekyll-feed`

## Config variables

Add or remove variables from the sample config file.

Available colors are the same for Bulma (default ones). You can choose between `primary` (light turquoise), `info` (blue), `warning` (yellow), `danger`(red), `dark` (black) and `light` (default). It will switch the header color. 

```
# Permalinks
permalink:      pretty

# Setup
title:          My Site
subtitle:       My fancy site.
baseurl:        
url:            "https://example.dev"

color:          danger

author:
  name:         Jhon Doe
  url:          http://example.dev
  email:                                           # Place your email here
  github:       JohnDoe                            # Place your GitHub username here
  twitter:      JohnDoe                            # Place your twitter username here
  mastodon:     https://instance.dev/@johndoe      # Place your profile URL here

# Assets
sass:
  style:        compressed

markdown: kramdown
highlighter: rouge
kramdown:
  input: GFM

# Custom vars
version:        3.8.5
paginate:       5                                  # Default pagination is 5 post per page
paginate_path: "/page:num/"                        # Default route for pages

plugins: 
  - jekyll-paginate
  - jekyll-seo-tag
```

## Licencse

MIT License
