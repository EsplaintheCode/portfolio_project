import pytest
from src import create_app

flask_app = create_app()

with flask_app.test_client() as test_client:
    response = test_client.get('/')
    assert response.status_code == 200
    assert b"Welcome to the" in response.data
