# Object Storage mirroring
This image use [minio client](https://docs.min.io/docs/minio-client-complete-guide.html) to watch changes to a local directory and synchronize them on a remote object storage.

## Enviroments

| Variable   |   Description      |
|----------|:-------------:|
| S3_ADDR | HTTP/HTTPS URL of s3 endpoint |
| S3_ACCESS | Access key of your s3 |
| S3_SECRET | Secret key of your s3 |
| S3_BUCKET | Bucket name in the s3 endpoint |

## Sample Docker-Compose file
```
. . . . . . . . . . . . . . . . . . . . . . . .

  storage-synchronizer:
    image: gitiserver/s3-mirror:latest
    environment:
      S3_ADDR: "https://example.com"
      S3_ACCESS: "..foo.."
      S3_SECRET: "..bar.."
      S3_BUCKET: "test"
    volumes:
      - "YourPathForBackup:/var/data:ro"

. . . . . . . . . . . . . . . . . . . . . . . .