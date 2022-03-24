from datetime import datetime
import socket
import sysconfig


# Function to get server date and time
def get_server_date_and_time():
    now = datetime.now()
    return (now.strftime("%Y-%m-%d %H:%M:%S"))


# Function to get server hostname
def get_server_hostname():
    hostname = socket.gethostname()    
    IPAddr = socket.gethostbyname(hostname)
    return hostname

# Function to get client_ip
def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        client_ip = x_forwarded_for.split(',')[0]
    else:
        client_ip = request.META.get('REMOTE_ADDR')
    return client_ip
    
# Function to get server engine information
def get_server_engine_info():
    name_and_version = sysconfig.get_platform()
    return name_and_version