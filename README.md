# Habitus

Simple docker image to be able to run [habitus](http://www.habitus.io) within a container.

## Example

```bash
docker run -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/build --network=my-net --name habitus habitus --build host=habitus --binding=0.0.0.0 --port=8080 --secrets=true --network my-net
```
