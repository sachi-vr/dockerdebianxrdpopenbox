# dockerdebianxrdpopenbox
Dockerfileのサンプル。Debianでxrdpで接続できるイメージ。WindowManagerはopenbox

### ブラウザ
firefox-esrを入れています。  
chroniumは、コンテナ内では動きませんでした。--no-sandboxオプションで動かすことは出来ます。  
```
$ chronium --no-sandbox
```
