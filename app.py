from fastapi import FastAPI  # type: ignore
from transformers import pipeline  # type: ignore

app = FastAPI()

pipe = pipeline("text2text-generation", model="google/flan-t5-small")

@app.get("/")
def home():
    return {"message": "Hello world"}

@app.get("/generate")
def generate(text: str):
    output = pipe(text)
    return {"output": output[0]['generated_text']}
