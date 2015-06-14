# UIだけ
semantic-uiをつかってみた
bootstrapよりUIのバリエーションはおおい？
ただしbootstrapより重い

http://semantic-ui.com/elements/button.html


## 環境
```
$ ruby -v
ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-linux]
``` 
特別なこともしてないので多分2系以降なら問題なし

- Sinatra


```
sudo gem install sinatra
sudo gem install sinatra-contrib
sudo gem install rack-cache
sudo gem install active_record
sudo gem install json
```

## 起動
```
ruby main.app -o [ドメイン]
```

## 確認
```
http://[ドメイン]:4567/
```

