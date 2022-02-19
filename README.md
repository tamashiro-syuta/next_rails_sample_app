# Version
- docker-compose --> 3.0
- Next 12.0.10
- Typescript 4.5.5
- node 14.17.0
- Rails 7.0.2.2
- Ruby 3.1.0
- mysql 8.0

# 環境構築の順序

このリポジトリをクローン
```
git clone https://github.com/tamashiro-syuta/next_rails_sample_app.git
```

docker-composeを起動
```
docker-compose up --build
```
Rails(API)側でDB構築
```
docker-compose run --rm api bundle exec rails db:create
```

これで``` localhost:8000/ ```にnext、``` localhost:3000/ ```にはRailsのハローページが、それぞれ表示
