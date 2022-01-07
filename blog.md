---
permalink: /sitelife/
layout: duckone
style: sitelife
title: Blog
---

{% for post in site.posts %}* {{ post.date | date: "%Y-%m-%d" }} - [{{ post.title | truncate: 60 }}]({{ post.url }})
{% endfor %}
