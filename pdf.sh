#/bin/bash
for file in _site/0*.html
do
  name=$(basename $file .html)
  wkhtmltopdf --print-media-type $file pdf/$name.pdf
done
