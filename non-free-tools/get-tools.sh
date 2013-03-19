#!/bin/bash
# Tools needed: wget, date, unzip, htmldoc

if [ ! -d "backup" ]; then
    mkdir backup
fi

# export_fig
# https://sites.google.com/site/oliverwoodford/software/export_fig
rm -Rf export_fig
wget -O $(date +%Y%m%d)-export_fig.zip http://www.mathworks.com/matlabcentral/fileexchange/23629-exportfig?download=true
unzip $(date +%Y%m%d)-export_fig.zip -d export_fig
wget -qO- https://sites.google.com/site/oliverwoodford/software/export_fig |htmldoc --webpage -f export_fig/export_fig-$(date +%Y%m%d).pdf -
cd export_fig
zip -r ../$(date +%Y%m%d)-export_fig.zip export_fig-$(date +%Y%m%d).pdf
cd ..
mv $(date +%Y%m%d)-export_fig.zip backup/$(date +%Y%m%d)-export_fig.zip


