#!/usr/bin/sh

curl -sS "https://www.google.com/complete/search?client=hp&hl=en&xhr=t&q=${1}" | json_pp | sed -nE '/<\/?b>/{s```g;s`"|,|^ *``g;p}'  | sed  "s/&#39;/'/g"
