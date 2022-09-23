# DevOpsTask

This project was created to to parse nginx logs, convert it to csv and store it into Git

1. Fork this project to your repository  and Download all files to the local project folder
![image](https://user-images.githubusercontent.com/79805424/191814639-ee36a773-562f-4534-b5df-f02d9b2ee03e.png)

2. Fill in `EMAIL`, `NAME`, `REPO` fields in the variables file in the same way as indicated in the file.

3. Generate token (or use your own) to fill in `TOKEN` field.
There is docs on how to generate token
https://docs.github.com/en/enterprise-server@3.4/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

4. Install docker and docker-compose(optional) to your system 

5. Paste `nginx.log` to the project folder 

6. Run command `docker compose up` (if you do not want to install docker-compose, you can use the following commands: to build the image `docker build -t nameofimage .` and to run the container `docker run --rm -d nameofimage`)

7. Check your repository, `nginx.csv` file should be there)
