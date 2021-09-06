
## How to use

1. Clone this repo
2. Install PostgreSQL in case you don't have it
3. Run `bootstrap.sh` with the name of your your project like `./bootstrap.sh my_awesome_project`
4. create environment variable export DB_NAME
5. Before run project is necesary create account in cloudinary
6. download your customized cloudinary.yml https://cloudinary.com/console/cloudinary.yml
7. in initializer/cloudinary put your keys
``` yaml
  CLOUD_NAME=your_cloud_name
  API_KEY=your_api_key
  API_SECRET=your_api_secret
```
8. `rails s`
9. You can now try your REST services!
10. here you can see the endpoint documentation https://documenter.getpostman.com/view/8654902/U16gPShb
11. this project was made based on https://github.com/rootstrap/rails_api_base
