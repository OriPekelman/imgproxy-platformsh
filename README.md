# ImgProxy on Platform.sh

You can drop in the  imgproxy directory in your project and add a route as follows to your `routes.yaml`

```
"https://images.{default}/":
    type: upstream
    upstream: "imgproxy:http"
```

In real life you will want to configure secrets with something like:

```
platform variable:create --name env:IMGPROXY_KEY --value $(xxd -g 2 -l 64 -p /dev/random | tr -d '\n')
platform variable:create --name env:IMGPROXY_SALT --value $(xxd -g 2 -l 64 -p /dev/random | tr -d '\n')
```
(be sure ofcourse to change the secrets you can use the following snipp)

Refer to https://docs.imgproxy.net/configuration for other configuration options.

First deployment may be a bit slow as this is a source installation, but subsequent deployments are not going to necessitate a rebuild.