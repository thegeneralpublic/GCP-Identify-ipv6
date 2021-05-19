#!bin/sh
for project in `cat projects_list`;
do
    echo "========================================"
    tput rev; echo "project_id: $project" ; tput sgr0
    echo "external_ips:
    `gcloud compute addresses list --filter=ipVersion:IPV6 --project=$project`"
    echo "forwarding_rules:
    `gcloud compute forwarding-rules list --filter=ipVersion:IPV6 --project=$project`"
    echo "========================================"
done
