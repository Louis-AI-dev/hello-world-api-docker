from fastapi import FastAPI
from src.my_function import hello_world

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": hello_world()}
