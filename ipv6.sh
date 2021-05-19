#!bin/sh
for org in `cat org`;
do
    export project =`(gcloud beta projects list)`
    echo $project > project
    for i in `cat project`;
       do
         gcloud config set project $i
         echo " deleting the org iam custom role $j with the service/user account $i"
         export ipv6 = `(gcloud compute addresses list --filter=ipVersion:IPV6)`
         echo $ipv6 > ipv6
         done
    done
    echo "break"
done
