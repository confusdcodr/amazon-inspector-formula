# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "amazon-inspector/map.jinja" import template with context %}

install_amazon_inspector:
  service.running:
    - name: {{ template.service.name }}
    - enable: True
