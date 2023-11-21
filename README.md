# avail-validator

## Prerequisites

- [Docker Compose](https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script)

## Steps

1. Clone this repository

    ```
    git clone https://github.com/Nakochi-crypto/avail-validator.git
    cd avail-validator
    ```

2. Copy .env file

    ```
    cp .env.sample .env
    ```

3. Edit .env

    ```
    nano .env
    ```

    Set the `TAG` to the version of the avail node and the `DA_NAME` to your node name.

4. Start a node

    ```
    docker compose up -d
    ```

5. Verify the node is running

    Access http://<Your_Node_IP_Address>:3000/d/v6xjZah4z/avail-metrics?orgId=1 .

## Commands

### View logs

```
docker compose logs -f
```

### Stop the node

```
docker compose down
```

Delete the data with the `-v` flag.
