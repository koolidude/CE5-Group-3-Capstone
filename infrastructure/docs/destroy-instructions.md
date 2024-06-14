### Destruction Instructions

1. **Stop Docker Containers:**
   - Stop and remove the Docker containers running the backend and frontend applications:

   **Backend:**
   ```bash
   docker ps -a  # Note the container ID for the backend
   docker stop <container_id>
   docker rm <container_id>
   ```

   **Frontend:**
   ```bash
   docker ps -a  # Note the container ID for the frontend
   docker stop <container_id>
   docker rm <container_id>
   ```

2. **Remove Docker Images:**
   - Remove the Docker images for the backend and frontend applications:

   **Backend:**
   ```bash
   docker images  # Note the image ID for the backend
   docker rmi <image_id>
   ```

   **Frontend:**
   ```bash
   docker images  # Note the image ID for the frontend
   docker rmi <image_id>
   ```

3. **Terraform Destroy:**
   - Navigate to the Terraform directories for both the backend and frontend and run the `terraform destroy` command to tear down the AWS resources:

   **Backend:**
   ```bash
   cd infrastructure/terraform/backend
   terraform destroy -auto-approve -var=""branch_name=dev"" -var=""tmdb_api_key=your_tmdb_api_key"" -var=""youtube_api_key=your_youtube_api_key"" -var=""secret_key=your_secret_key"" -var=""route53_zone_id=your_route53_zone_id""
   ```

   **Frontend:**
   ```bash
   cd ../frontend
   terraform destroy -auto-approve -var=""branch_name=dev"" -var=""route53_zone_id=your_route53_zone_id""
   ```

4. **Remove AWS Resources:**
   - Ensure all AWS resources (e.g., ECS clusters, ECR repositories, S3 buckets, CloudFront distributions, Route 53 records) have been successfully removed.
   - Double-check the AWS Management Console to ensure no leftover resources are incurring costs.

5. **Clean Up Environment Variables:**
   - Remove or unset the environment variables used for the project:

   **Linux/Mac:**
   ```bash
   unset SECRET_KEY TMDB_API_KEY YOUTUBE_API_KEY REACT_APP_BACKEND_URL
   ```

   **Windows:**
   ```cmd
   set SECRET_KEY=
   set TMDB_API_KEY=
   set YOUTUBE_API_KEY=
   set REACT_APP_BACKEND_URL=
   ```

6. **Delete Repository (if necessary):**
   - If you need to delete the GitHub repository, go to the repository settings on GitHub and choose the ""Delete this repository"" option.
