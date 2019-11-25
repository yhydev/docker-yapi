# Usage

## 1.Volume 
```
docker volume create yapi
docker run --rm -v yapi:/yapi yapi pwd
```

## 2.Set Config
Edit `config.json` for volume `yapi`.

## 3.Run

`docker run -p 80:3000 -v yapi:/yapi --name yapi yapi`
