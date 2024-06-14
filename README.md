# Our Capstone Project... Group.. 3...

Number associated with harmony, wisdom and understanding

## Cast Members

1. Nor Shukri
2. Muhammad Tarmizi
3. Hnin Wut Yee
4. Mohamed Malik

## Netflix Clone.. Like...

Welcome to the **"Notflix"** Clone Project, where we pretend to be Netflix but with a lot more **AWS** wizardry and a sprinkle of humor!

Our mission? To create a **Notflix** clone using a whole arsenal of **AWS** goodies like ECR, ECS, S3, and CloudFront. We’re also throwing in **Docke** and **Terraform** because why not? The backend is powered by **Flask** and the **TMDB API**, while the frontend is all about that **React** magic.

But wait, there's more! We've set up a super slick **CI/CD** pipeline using **GitHub Actions** to make sure our deployment process is smoother than a freshly buttered popcorn. So sit back, relax, and get ready to binge-watch our progress (and hopefully not our mistakes) as we bring this clone to life!

or

The project aims to develop a Netflix clone using various AWS resources (AWS Parameter Store, ECR, ECS, and S3), Docker, Terraform, API Gateway . The application includes both backend and frontend components. The backend is built with Flask and the TMDB API, while the frontend is built with React. The project involves setting up a CI/CD pipeline to automate the deployment process.


## Our role play... Dont judge us... Though we dont live up to it...
1. Nor Shukri - (Project Manager and DevOps Lead) - Salary ****
2. Muhammad Tarmizi - (Frontend Developer) - Salary ****
3. Hnin Wut Yee - (Full Stack Developer) - Salary ****
4. Mohamed Malik - (Backend Developer) - Salary ****

## What we think we should do...
###(Project Manager and DevOps Lead):
1. Oversee the project and ensure milestones are met.
2. Set up and manage the CI/CD pipeline.
3. Configure and manage AWS resources.
4. Implement Terraform scripts for infrastructure as code.
5. Monitor project progress and handle any roadblocks.

###(Backend Developer):
1. Develop and maintain the Flask backend.
2. Integrate TMDB API with the backend.
3. Implement user authentication and authorization.
4. Write unit tests for the backend.
5. Ensure API security and performance optimization.

###(Frontend Developer):
1. Develop and maintain the React frontend.
2. Integrate frontend with the backend API.
3. Ensure responsive design and user-friendly interface.
4. Write unit tests for the frontend.
5. Handle UI/UX improvements based on feedback.

###(Full Stack Developer):
1. Assist with both backend and frontend development.
2. Ensure smooth integration between frontend and backend.
3. Write integration tests and conduct end-to-end testing.
4. Assist with deployment and troubleshooting.
5. Implement additional features and enhancements.

Idea is there... but we dont fulfil all.. hope you understand..

## How would we want it to be...
![alt text](infrastructure/diagrams/Diagram1-1.png)

## The Reality...
![alt text](infrastructure/diagrams/Diagram2.png)

## What do we use...

**Frontend Resources:**
1. **React App**: The frontend application built with React.
2. **S3 Bucket**: Stores the static files for the React frontend application.
3. **CloudFront Distribution**: Caches and serves the frontend application content from S3.
4. **Route 53**: DNS service to route traffic to the CloudFront distribution.

**Backend Resources:**
1. **Flask API**: The backend application built with Flask.
2. **TMDB API**: External API used by the backend to fetch movie data.
3. **YouTube API**: External API used by the backend to fetch YouTube data.
4. **ECR**: Amazon Elastic Container Registry to store Docker images.
5. **ECS Cluster**: Amazon Elastic Container Service cluster to manage Docker containers.
6. **ECS Service**: Manages the running of ECS tasks.
7. **ECS Task**: The Docker container running the Flask API.
8. **Application Load Balancer (ALB)**: Distributes incoming application traffic across multiple targets (ECS tasks). Uses SSL certificates from ACM.
9. **Target Group (TG)**: A group of ECS tasks registered with the ALB to receive traffic.
10. **CloudWatch Logs**: Monitors and logs the ECS task activities.
11. **ACM**: AWS Certificate Manager used to manage SSL/TLS certificates for securing traffic.
12. **Route 53**: DNS service to route traffic to the ALB.

**Common Resources:**
1. **GitHub**: The source code repository where the code for the application resides.
2. **GitHub Actions**: The CI/CD pipeline tool used to automate the build, test, and deployment processes.
3. **Terraform**: Infrastructure as Code tool used to provision and manage AWS resources.
4. **AWS VPC**: The virtual network within AWS that hosts all the AWS resources.
5. **Internet Gateway (IGW)**: Enables internet access for resources within the VPC.
6. **Public Route Table (RT)**: Manages the routing for the public subnets within the VPC.
7. **Public Subnets**: Subnets with direct access to the internet.
8. **Private Route Table (PrivateRT)**: Manages the routing for the private subnets within the VPC.
9. **Private Subnets**: Subnets without direct internet access, using a NAT gateway for outbound connections.
10. **NAT Gateway**: Provides internet access for resources in the private subnets.

**End User Device:**
1. **End User Device**: The device used by the end user to access the application.


## GitHub Branching Strategies
![alt text](infrastructure/diagrams/Diagram3.png)

We employ a structured branching strategy to manage development and deployment efficiently:

1. **Main Branches**:
    - **prod**: Contains the production-ready code. Only thoroughly tested and stable code is merged here.
    - **uat**: Used for final pre-production testing. Code from the `dev` branch is merged here for User Acceptance Testing.
    - **dev**: Main development branch. Stable code that has passed initial tests is merged here. 

2. **Feature Branches**:
    - **feature**: Used for developing new features or bug fixes. Each new feature or bug fix has its own branch, created from the `dev` branch.

#### Branching Workflow

1. **Feature Branch**:
   - Created from `dev` to work on new features or bug fixes.
   - Naming convention: `feature/<feature-name>`.

2. **Develop and Test**:
   - Code and initial tests are done in the feature branch.

3. **Merge to dev**:
   - Once stable, feature branches are merged into `dev`.
   - CI/CD pipeline tests and deploys to the development environment.

4. **Promote to uat**:
   - After thorough testing, changes are merged into `uat`.
   - Deploys to the UAT environment for final testing.

5. **Release to prod**:
   - Upon successful UAT, changes are merged into `prod`.
   - Deploys to production.

## Show-and-tell Time...
1. CICD Backend - Malik and Wutyee
2. CICD Frontend - Tarmizi and Wutyee
3. End Product - Anyone

## Epic Battles

## Wised-Up Moments

## Get-Your-Geek-On Guide

## Nuke-It-From-Orbit Instructions

