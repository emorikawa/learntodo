#! /bin/zsh
rails new learntodo
mv learntodo/* .
cp ~/Code/Gemfile .
gem install pg
bundle install
git init
git add .
git commit -m "Initial commit" 
curl -u 'emorikawa' https://api.github.com/user/repos -d '{"name":"learntodo"}'
git remote add origin git@github.com:emorikawa/learntodo.git
git push origin master
heroku create
git push heroku master
