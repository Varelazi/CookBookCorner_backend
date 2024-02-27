#CookBook Corner

### Step One
Make rails app and ensure it's running correctly. 
```bash
$ rails new app_name -d postgresql -T
$ cd app_name
$ rails db:create
$ rails server
```

### Step Two
Connect to Github Repo
```bash
$ echo "# CookBookCorner_backend" >> README.md
$ git init
$ git add README.md
$ git commit -m "first commit"
$ git branch -M main
$ git remote add origin https://github.com/Varelazi/CookBookCorner_backend.git
$ git push -u origin main
```

### Step Three
Create new branch: 
#### active-record

