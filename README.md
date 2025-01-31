# デプロイ手順

ubuntu22.04を用意。(24でも大丈夫かもしれない)
  
適当な中身が空のディレクトリを作ってそこを作業ディレクトリとする。
  
以下のコマンドを実行。
```
git clone https://github.com/akisatoon1/final.git /
cd final / 
bundle install --gemfile ./Gemfile /
bin/rails db:migrate /
bin/rails db:seed /
bin/rails server
```
