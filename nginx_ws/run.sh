#!/usr/bin/with-contenv bashio

cfgdir='/config'
cp /defaults/default.conf /etc/nginx/http.d

# Function to add servers to /etc/nginx/http.d/default.conf.
add_server() {
    local name=$1
    local port=$2
    local root=$3

    echo "Adding ${name} in ${root} at port ${port} to /etc/nginx/http.d/default.conf"
    
    if [[ "$root" == *"$cfgdir"* ]]; then
        echo "${name} is located at ${root//\/config//addon_configs\/5ec262d9_nginx_ws}"
    fi
    
    sed -i "\$a \\
server { \\
    listen ${port}; \\
    listen [::]:${port}; \\
    server_name ${name}; \\
    root ${root}; \\
}" /etc/nginx/http.d/default.conf
    
    mkdir -p "$root"
    
    if [ -z "$(find "$root" -maxdepth 1 -type f -name 'index.*')" ]; then
        echo "No index file found at $root, copying a default index file"
        cp /defaults/index.html "$root"
    else
        echo "Found index file at $root"
    fi
}

# Get configuration from HA and process them in the add_server() function.
for i in {1..3}; do
    name=$(bashio::config "name_$i")
    root=$(bashio::config "root_$i")
    root="${root%/}"
    
    if [ -n "${root}" ] && [ "${root}" != "null" ]; then
        add_server "${name}" $((8000 + $i)) "${root}"
    else
        echo "Webserver ${i} is not setup in the configuration"
    fi
done

echo "Starting NGINX Web Server and keeping the process running"
nginx -g "daemon off;"
