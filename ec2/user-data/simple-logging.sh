#!/bin/bash -xe

# To troubleshoot issues on your EC2 instance bootstrap without having to access the instance through SSH.
# You can add code to your user-data bash script that redirects all the output both to the /var/log/user-data.log and to /dev/console. 
# When the code is executed, you can see your user-data invocation logs in your console.


exec > > (tee /var/log/user-data.log|logger -t user-data -s 2 > /dev/console) 2>&1
    #yum -y update
    date
    hostname
    df -Ph
    echo "user-data - Completed!"
