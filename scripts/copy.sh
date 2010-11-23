#!/bin/bash --
root_dir=$pwd
h5b="html5-boilerplate/"
css="less/"

echo "Specify a project folder relative to the current directory: " 

read newproj

source_h5b_dir="${root_dir}${h5b}"
source_css_dir="${root_dir}${css}"
dest_dir="${root_dir}${newproj}"

source_h5b="${source_h5b_dir}*"
source_css="${source_css_dir}*"

# if $newproj doesn't exist, make it.  if exists, notify and exit.
if [ -d "$dest_dir" ]
then
    echo "$dest_dir exists, exiting.  Either delete it, rename it, or rerun this script with a different dir name."
else
    #create new project
    #mkdir $dest_dir 

    #sucess message
    echo "Created Directory: $dest_dir"
    
    cd $SRC
    # copy the entire HTML5Boilerplate directory to $newproj directory
    #cp -rf ${source_h5b} ${dest_dir}

    # copy parts of less to $newproj directory
    #cp -rf ${sourceless_dir}code/img/*.* ${dest_dir}images/*.* 
    #cp -rf ${sourceless_dir}code/img/*.* ${dest_dir}images/*.* 

   
    #copy to new project directory
    #http://en.wikipedia.org/wiki/Cpio#Copy
    #http://cybertiggyr.com/cpio-howto/
    #http://www.cyberciti.biz/faq/how-do-i-use-cpio-command-under-linux/
    #find . -depth -print0 | cpio -0pdmv $dest_dir
    

    #sucess message
    echo "Created Project: $dest_dir"
    
    # delete that temporary folder
    #rm -r $name
    
    #move into new project
    #cd $dest_dir
    
    #in Bourne Again Shell, the cpio was copying 
    #the whole dir into the new project, along with the contents
    #if [ -d "$dest_dir/html5-boilerplate" ]
    #then
    #     rm -r html5-boilerplate
    #fi        
    
    #if [ -e "$dest_dir/createproject.sh" ]
    #then
    #     rm -r createproject.sh
    #fi  
    
    #if [ -e "$dest_dir/.git" ]
    #then
    #     rm -rf .git
    #fi


fi


# 404.html
# apple-touch-icon.png
# crossdomain.xml
# css/*
# favicon.ico
# .htaccess
# images/* (rename to img/)
# index.html
# js/*
# lighttpd.conf
# mime.types
# nginx.conf
# robots.txt
# tests/*
# web.config

# Copy the following from less/ to beta
# demo.html
# demo_24_col.html
# img/*
# css/* (exclude all rtl files, reset.css)
# css/uncompressed/* (exclude all rtl files, reset.css)
