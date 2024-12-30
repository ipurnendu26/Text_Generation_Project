Text Generation API
This project is a lightweight API built with FastAPI that uses a pre-trained Flan-T5 model from Hugging Face's Transformers library to generate text from a given input. The API provides endpoints to generate text and test the application's functionality.

Features
Text Generation: Leverages the google/flan-t5-small model to generate text from input using a text2text-generation pipeline.
FastAPI Framework: Provides a simple and efficient web API for text generation.
Lightweight and Scalable: Deployed using Docker for easy scalability and portability.
Endpoints
Root Endpoint
GET /
Returns a welcome message to confirm the API is running.
Response:
json
Copy code
{
  "message": "Hello world"
}
Text Generation Endpoint
GET /generate
Accepts a text query parameter and returns the generated output.
Query Parameters:
text (string): The input text to process.
Response Example:
json
Copy code
{
  "output": "Generated text from the model."
}
Requirements
Install the required Python dependencies listed in the requirements.txt file:

plaintext
Copy code
fastapi==0.74.*
requests==2.27.*
uvicorn[standard]==0.17.*
sentencepiece==0.1.*
torch==1.11.*
transformers==4.*
Installation and Setup
1. Clone the Repository
bash
Copy code
git clone <repository_url>
cd <repository_name>
2. Create a Virtual Environment
bash
Copy code
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
3. Install Dependencies
bash
Copy code
pip install -r requirements.txt
4. Run the Application
Use Uvicorn to start the FastAPI application:

bash
Copy code
uvicorn app:app --host 0.0.0.0 --port 8000
The API will be available at http://localhost:8000.

Docker Deployment
1. Build the Docker Image
bash
Copy code
docker build -t text-generation-api .
2. Run the Docker Container
bash
Copy code
docker run -d -p 8000:8000 text-generation-api
The API will now be available at http://localhost:8000.

Usage
Test the API in your browser or using tools like Postman.
Use the /generate endpoint with a text query parameter to get generated text.
File Structure
plaintext
Copy code
.
├── app.py                # Main application code
├── requirements.txt      # Python dependencies
├── Dockerfile            # Docker configuration
└── README.md             # Project documentation
Model Information
This project uses the Flan-T5 Small model (google/flan-t5-small) from the Hugging Face Transformers library for text generation. For more details on the model, visit the Hugging Face model card.

License
This project is licensed under the MIT License. See LICENSE for more details.