host="fabmedical-732691.documents.azure.com"
username="fabmedical-732691"
password="hOHeZuryCLOYLFyguXZ015dqED6QJJcKJgaYXbyRHJyf7BpRWaYviz02tstpp4CFdmA2fKpGV5sM0ZvrOIHpvw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
