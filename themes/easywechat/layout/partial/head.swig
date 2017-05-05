<head prefix="og: http://ogp.me/ns#">
  <meta charset="utf-8">
  <title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Canonical links -->
  <link rel="canonical" href="{{ url }}">
  <!-- Alternative links -->
  {% if page.layout == 'page' or page.layout == 'index' %}
    {% for lang in site.data.languages %}
      <link rel="alternative" hreflang="{{ loop.key }}" href="{{ canonical_url(loop.key) }}">
    {% endfor %}
  {% endif %}
  <!-- Icon -->
  <link rel="icon" href="/icons/favicon.ico" type="image/x-icon" />
  <link rel="shortcut icon" href="/icons/favicon.ico" type="image/x-icon" />
  <meta name="theme-color" content="#ffffff">
  <!-- CSS -->
  <!-- build:css build/css/easywechat.css -->
  {{ css('css/easywechat') }}
  <!-- endbuild -->
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- RSS -->
  {{ feed_tag('atom.xml') }}
  <!-- Open Graph -->
  {{ open_graph({
    fb_admins: config.fb_admins,
    twitter_site: config.twitter
  }) }}
  <!-- Swiftype -->
  <meta class="swiftype" name="title" data-type="string" content="{{ page.title || config.title }}">
  <!-- Google Analytics -->
  {{ partial('google_analytics') }}

</head>