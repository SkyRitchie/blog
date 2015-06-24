== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

# Rails How To

## Blogging platform site

1. Routes

The first step is to route a request to a controller.

HTTP requests come from URLs, clicking links and submitting forms.  The router listens to requests and passes them on to a controller according to the code we write in 'config/routes.rb'.

http://localhost:3000/ #=> PostsController's index action is invoked.

= 'root "posts#index"'

2. Generate a Controller

To generate controllers, go to the command-line and run this command in the root of your project (the "blog" folder):

'$ rails g controller posts index'

3. Generate a Model for your resource (a post)

To generate models, use the command-line again:

'$ rails g model post'

Models are singular.  They build instances of th4e resource from data in the DB.

4. Set up DB

Describe database structure with a migration file.  Run the migration task to read the file and set up the DB.

5. Provide Seed Data

Create seed data in the seeds file.  Run the seed task to insert the data in the DB.

6. Construct your view

Using HTML mark up and Ruby within ERB tags, build a page that renders resources.

---

1. Rails new <name your project>
2. Routes - Provide a URL destination/ endpoint
3. Controller - Define actions for rendering views of that name
4. Action - Reach out to a Model and pass object to a view
5. Model - Talk to the DB.
6. View - Presenting objects with markup, UX logic







