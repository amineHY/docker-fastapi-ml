from fastapi import FastAPI


app = FastAPI()
              
@app.get("/")
async def root():
    return {'Info': 'Hello World',
            "Author": "Amine Hadj-Youcef",
            "GitHub": "https://github.com/amineHY"}
