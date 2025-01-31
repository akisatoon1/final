# デプロイ手順

環境はubuntu22.04を用意してください。(24でもできるかもしれない)
  

Gitを用意してください。また、bundleが使える環境を用意してください。
  
適当な中身が空のディレクトリを作ってそこを作業ディレクトリとする。
  
以下のコマンドを実行。
```
git clone https://github.com/akisatoon1/final.git &&
cd final &&
bundle install --gemfile ./Gemfile &&
bin/rails db:migrate &&
bin/rails db:seed &&
bin/rails server
```

localhost:3000/celebritiesにアクセスしてください。
