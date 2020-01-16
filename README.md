# CLI Pairing App

Your project today is a small version of your group projects next week! Your job is ot create ONE model and connect it to Active Record, and create a CLI app (command line interface) that will let your app's users perform CRUD actions.

Here are the user stories your app should have:

- Create a new instance of your class and have it save to the database
- Be able to view all instances of your class, listed by their names
- *(bonus)* Be able to delete an instance
- *(bonus)* Find an instance and update one of its attributes in the database

## Step 1: Set up one class using Active Record

1. Create a migration `rake db:create_migration NAME=create_games`

2. Write the migration

```rb
create_table :games do |t|
  t.string :title
  t.string :genre
  t.integer :price

  t.timestamps
  # created_at, updated_at
end
```

3. Run the migration: `rake db:migrate`

4. Check the migration: `rake db:migrate:status` (and look at your schema)

5. Create model and inherit active record: `class Game < ActiveRecord::Base`

## Step 2: Make the CLI app

We've provided two options for starter code for your CLI app. 

If you're feeling confident about OOP, have a look at the `bin/run_cli.rb` file and the `app/cli.rb` for a starting place to create your user interface (note: the `cli.rb` file _should not_ inherit from ActiveRecord). To test your app, from the terminal, run `ruby bin/run_cli.rb`.

If you're less confident about OOP, there's also a `bin/run.rb` file with some code defined for starting your CLI application. To test your app, from the terminal, run `ruby bin/run.rb`.

