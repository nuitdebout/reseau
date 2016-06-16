map $uri $blogname{
    ~^(?P<blogpath>/[^/]+/)files/(.*)       $blogpath ;
}

map $blogname $blogid{
    default -999;

    #Ref: http://wordpress.org/extend/plugins/nginx-helper/
    #include /var/www/wordpress/wp-content/plugins/nginx-helper/map.conf ;
}

server {
	server_name nuitdebout;
	root {{doc_root}};

	index index.php;

	include global/restrictions.conf;

    error_log   /var/log/nginx/error.log;
    access_log  /var/log/nginx/access.log;

	# Additional rules go here.

    sendfile off;

	include global/multisite.conf;
}
