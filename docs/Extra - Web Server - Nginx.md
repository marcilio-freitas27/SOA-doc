## Setting Up Sample Files

- With a working version of NGINX or NGINX Plus installed, it’s time to put - it to good use! Begin by setting up some files and directories.

- Change directory to your home directory if you are not already there. In - the following instructions, it is /home/ubuntu.

- Create a directory called public_html and change into it.

- In the public_html directory, create a file called index.html and a - directory called application1.

- In the application1 directory, create a file called app1.html with some text in it.

- Change back to your home directory.

- Create a directory called data.

- In the data directory, create a directory called images.

## Serving Pages and Images

- Our first use case for NGINX or NGINX Plus is to serve pages and images to users via a web page.
- Change directory to /etc/nginx/conf.d.

- Rename default.conf to default.conf.bak to prevent NGINX or NGINX Plus from using it as the default configuration file.

- Create a file called server1.conf with this configuration in it:

```
server {
    root /home/ubuntu/public_html;

    location /application1 {  }

    location /images {		
        root /home/ubuntu/data;	
    }
}
```

* Directive documentation: location, root, server

- Change directory to ~/data/images.

- Find an image that you want to serve and copy it to the directory (~/data/images). As an example, the following command copies over the NGINX logo:
- $ curl -o NGINX-logo.png https://www.nginx.com/wp-content/uploads/2021/11/NGINX-logo-2020.png
- Reload NGINX or NGINX Plus:

- $ sudo nginx -s reload
- In a web browser request the image at this URL, where NGINX-server is the public IP address of your EC2 - instance:

- https://NGINX-server/images/NGINX-logo.png

- Also access the application and observe what you get:

- https://NGINX-server/application1/app1.html