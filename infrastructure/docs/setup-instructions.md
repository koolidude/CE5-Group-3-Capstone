### Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/netflix-clone.git
   cd netflix-clone
   ```

2. **Set Up Environment Variables:**
   - Create a `.env` file in both the `backend` and `frontend` directories.
   - Add the necessary environment variables:

   **Backend .env:**
   ```plaintext
   SECRET_KEY=your_secret_key
   TMDB_API_KEY=your_tmdb_api_key
   YOUTUBE_API_KEY=your_youtube_api_key
   DEBUG=True
   ```

   **Frontend .env:**
   ```plaintext
   REACT_APP_BACKEND_URL=https://your-backend-url
   ```

3. **Docker Setup:**
   - Ensure you have Docker installed on your machine.
   - Build and run the backend and frontend Docker containers:

   **Backend:**
   ```bash
   cd backend
   docker build -t netflix_clone_backend .
   docker run -p 5000:5000 netflix_clone_backend
   ```

   **Frontend:**
   ```bash
   cd frontend
   docker build -t netflix_clone_frontend .
   docker run -p 3000:3000 netflix_clone_frontend
   ```

4. **AWS Setup:**
   - Make sure you have AWS CLI installed and configured with appropriate credentials.
   - Set up the required AWS resources using Terraform:

   ```bash
   cd infrastructure/terraform/backend
   terraform init
   terraform apply -auto-approve -var=""branch_name=dev"" -var=""tmdb_api_key=your_tmdb_api_key"" -var=""youtube_api_key=your_youtube_api_key"" -var=""secret_key=your_secret_key"" -var=""route53_zone_id=your_route53_zone_id""

   cd ../frontend
   terraform init
   terraform apply -auto-approve -var=""branch_name=dev"" -var=""route53_zone_id=your_route53_zone_id""
   ```

5. **CI/CD Pipeline Setup:**
   - Ensure GitHub Actions is enabled in your repository.
   - Add the required secrets in your GitHub repository settings:
     - `AWS_ACCESS_KEY_ID`
     - `AWS_SECRET_ACCESS_KEY`
     - `TMDB_API_KEY`
     - `YOUTUBE_API_KEY`
     - `SECRET_KEY`
     - `ROUTE53_ZONE_ID`
     - `AWS_ACCOUNT_ID`

6. **Run the Application:**
   - Access the frontend application at `http://localhost:3000`.
   - The backend API will be running at `http://localhost:5000`.

### Additional Notes:
- Ensure all dependencies are correctly installed and the environment variables are properly set to avoid any runtime issues.
- Check the logs for any errors and debug accordingly.
- Follow the same setup steps for different branches (dev, uat, prod) by changing the `branch_name` variable.