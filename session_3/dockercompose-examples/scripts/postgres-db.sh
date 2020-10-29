docker run --rm \
  --name base-db \
    -e POSTGRES_USER=apibase \
    -e POSTGRES_PASSWORD=password0 \
    -v /tmp/data:/var/lib/postgresql/data \
    -p 5432:5432 \
    --network backend \
     postgres
