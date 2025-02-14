# FastAPI Book Management API

## Overview
This project is a RESTful API built with FastAPI for managing a book collection.

## Features
- 📚 Book management (CRUD operations)
- ✅ Input validation using Pydantic models
- 🔍 Enum-based genre classification
- 🧪 Complete test coverage
- 📝 API documentation
- 🔒 CORS middleware enabled

## Project Structure
```
fastapi-book-project/
├── api/
│   ├── db/
│   └── routes/
├── core/
├── tests/
└── main.py
```

## Installation
1. Clone the repository
2. Create virtual environment: `python -m venv venv`
3. Install dependencies: `pip install -r requirements.txt`

## Running the Application
```bash
uvicorn main:app --reload
```

Visit: http://localhost:8000/docs

## API Endpoints
- GET /api/v1/books/
- GET /api/v1/books/{book_id}
- POST /api/v1/books/
- PUT /api/v1/books/{book_id}
- DELETE /api/v1/books/{book_id}

## Testing
```bash
pytest
```

## License
MIT License
