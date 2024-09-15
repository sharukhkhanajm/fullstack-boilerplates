# Fullstack Boilerplates

Welcome to the Fullstack Boilerplates repository! This project aims to provide easy-to-use boilerplates for various fullstack stacks, helping engineers kickstart their projects without the usual setup hassle.

## Motivation
Starting a new project often involves a lot of repetitive setup tasks: configuring servers, setting up databases, integrating frontend and backend, and more. Our goal is to simplify this process by providing ready-made boilerplates for common fullstack stacks, so you can focus on building features rather than setting up infrastructure.

## Backstory
As an experienced developer, I've faced the pain of repeatedly setting up projects from scratch. I realized that many developers could benefit from a standardized, well-documented starting point for their fullstack applications. This repository is the result of our efforts to create a resource that can save time and reduce setup errors.

## FAQ
### What is included in each boilerplate?
Each boilerplate includes a fully configured stack with Docker support. This means you'll have a consistent environment for development, testing, and deployment.

## Which stacks are available?
We are continuously adding new stacks. Currently, you can find branches for:

### - [Go-React-Postgres](https://github.com/sharukhkhanajm/fullstack-boilerplates/tree/Go-React-Postgres)
### - And more!

## How do I use a boilerplate?
Simply clone the repository and checkout the branch for the stack you need. Follow the steps in the **Getting Started** section below.

## Can I contribute?
Absolutely! We welcome contributions. Feel free to open issues or submit pull requests to add new stacks or improve existing ones.

You can find more details on how to contribute [here](https://docs.github.com/en/get-started/exploring-projects-on-github/contributing-to-a-project) 

## Getting Started

**!!important**

Make sure to create the `.env` file and put the content from `.env.example`

Follow these steps to get started with a boilerplate:

1. Clone the Repository
```
https://github.com/sharukhkhanajm/fullstack-boilerplates.git
```

```
cd fullstack-boilerplates
```

2. Checkout the Desired Branch

```
git checkout Go-React-Postgres
```

3. Set Up Docker
Make sure you have Docker installed on your machine. If not, download and install it from [here](https://www.docker.com/get-started/).

4. Start the Containers

**For development**
```
docker compose -f docker-compose.dev.yml up --build
```

**For Production**
```
docker compose up --build
```

5. Update the host file

If we put https://auth.localhost in the browser it's not gonna know it should resolve to localhost so for that we need to modify the host file

**for Mac users**
```
sudo nano /etc/hosts
```

Now add these lines

```
127.0.0.1 auth.localhost
127.0.0.1 api.auth.localhost
```

**for Windows users**

_please update Windows users_

Save the file

6. Access the Application
Once the containers are up, you can access the application at https://auth.localhost (or another specified port, depending on the stack).

## Fix your connection is not private error 
<img width="1438" alt="Screenshot at Aug 03 08-28-54" src="https://github.com/user-attachments/assets/2af73d17-b88b-4892-b903-d3d68b7f06d5">

- Open your caddy container
<img width="1329" alt="Screenshot at Aug 03 08-33-13" src="https://github.com/user-attachments/assets/8261c63a-c4f9-4a58-88c8-9dd468ea9119">

- Look for `root.crt` file
<img width="1330" alt="Screenshot at Aug 03 08-36-22" src="https://github.com/user-attachments/assets/2a31773b-f8c3-4a44-a709-7f31beb0b776">

- Right click and save the file on your local machine

**for Mac users**

- Open Keychain Access and click on System
<img width="920" alt="Screenshot at Aug 03 08-38-44" src="https://github.com/user-attachments/assets/73a20f07-60ed-497a-be89-a4de96cc3989">

- Go to file -> import items and import the `root.crt` file
<img width="909" alt="Screenshot at Aug 03 08-39-24" src="https://github.com/user-attachments/assets/ce4dcb93-62df-4b1f-a9e0-bbe67330df68">

- To trust this certificate double click on it and change it to always trust
<img width="930" alt="Screenshot at Aug 03 08-39-51" src="https://github.com/user-attachments/assets/33ea5b55-7320-4a2e-9f41-eb0656023059">

**for Windows users**

_please update Windows users_

## Contributing

## Contact
For any questions or suggestions, feel free to reach out via GitHub issues or contact at https://x.com/iamsharukh_khan

Happy coding!
