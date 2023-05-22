# Devops Code Test

Thanks for taking the time to meet with us and discuss a role with the MyDeal.com.au development team. The purpose of this code test is to demonstrate your DevOps skills and show your understanding of CI/CD

## Test structure
Folder `/test-app` contains a basic React app generated by React's offcial tool `create-react-app`

At the root folder, there are two files `ci.sh` and `cd.sh`. Those are the files that you need to provide answers.

## Requirements
1. The `ci.sh` file
    - Execute unit tests
    - Output static website build for the test-app
1. The `cd.sh` file
    - Write deployment code to deploy the static build (output from the `ci.sh` file) to AWS cloudfront
    - Create new DNS record in route53 and link it to the previous cloudfront resource
1. Assuming you are running the bash file on a linux machine. For example Ubuntu 20
1. Assuming the iam user you are using has full administrator access
1. The deployment code can be written by cloud formation, CDK in any language, AWS cli or Terraform
1. The deployment code should consider multi-account situation, which means the same code needed to be parameterized in order to deploy to multiple accounts. For example, domain name, s3 backet name, etc... 
1. Docker is NOT a must requirement, but if you do use docker, don't forget to include the Dockerfile.

## Knowledge pool
1. The `test-app` react app, is generated from `nodejs v18`
1. The package manager is using `yarn v1` rather than `npm`
1. For the first time, it is required to install all node modules before doing anything else (test/build). To do this, navigate to the `test-app` folder and run `yarn`
1. In order to run the unit test once, navigate to the `test-app` folder and run `yarn test --watchAll=false`
1. In order to build the project, navigate to the `test-app` folder and run `yarn build`, then `test-app/build` will appear

## How to submit
1. Clone the repo to your local and add your commit in
1. Make sure you delete all untrack files, and zip it
1. Send the zip file to us

OR

1. Fork the repo
1. Create a new branch and add your commit in
1. Open a PR back to the main repo

## Final word
Good luck and hope you enjoy it.