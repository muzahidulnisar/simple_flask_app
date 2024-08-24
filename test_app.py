import pytest
from web_app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_hello(client):
    rv = client.get('/')
    assert rv.status_code == 200
