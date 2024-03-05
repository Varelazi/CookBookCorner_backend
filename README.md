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
Created Recipe table/Active Record
```bash
rails generate model Recipe creator:integer title:text recipe_picture:text cuisine_type:text instructions:text  
```

Mock Data when using rails c:
```ruby
# Creating mock data
 Recipe.create(creator: 0, title: "Mac and Cheese", recipe_picture: 
"https://www.recipetineats.com/wp-content/uploads/2020/11/Baked-Mac-and-Cheese-p
ull-shot.jpg", cuisine_type: "American", instructions: "Step 1. Preheat oven to 
350. Grease container.")

# Mock Data
#<Recipe:0x0000000109764508
 id: 1,
 creator: 0,
 title: "Mac and Cheese",
 recipe_picture:
  "https://www.recipetineats.com/wp-content/uploads/2020/11/Baked-Mac-and-Cheese-pull-shot.jpg",
 cuisine_type: "American",
 instructions: "Step 1. Preheat oven to 350. Grease container.",
 created_at: Tue, 05 Mar 2024 17:37:18.142391000 UTC +00:00,
 updated_at: Tue, 05 Mar 2024 17:37:18.142391000 UTC +00:00> 
```

!! NOTE !!
We have table called Recipe and RecipeTags.
The schema makes is have an s, so it states it is recipes and recipe_tags.
The associations file is named recipe and recipe_tag, without the s (Same for all the other tables)
Ex:
```bash
# recipe.rb
class Recipe < ApplicationRecord
    has_many :RecipeTags
end
# recipe_tag
class RecipeTag < ApplicationRecord
    belongs_to :recipe
end
```
