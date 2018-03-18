# Alpha Blog

Alpha Blog is an sample application for Ruby on Rails learners.

### Technical information

| Package | Version |
| ------ | ------ |
| Ruby version | 2.4.1p111 |
| Rails version | 5.1.5 |
| Production database | pg 0.20 |
| Development database | sqlite3 |

# Getting started

To run this project, first you are going to need to clone it.
Run the following command in the folder that you want to deploy this project:

```sh
$ git clone git@github.com:rodrigo93/alpha-blog.git
```

For development environments, run the following command:

```sh
$ bundle install --without production
$ rake db:migrate
```

# Check it running
[Live demo](https://alpha-blog-marques.herokuapp.com/)
