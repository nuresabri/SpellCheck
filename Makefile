
# Makefile for Deployment

# Install dependencies
install:
    pip install -r requirements.txt

# Run Gunicorn server for development
run:
    gunicorn main:app

# Run tests (if any tests are added)
test:
    pytest

# Clean up Python bytecode files
clean:
    find . -name "*.pyc" -exec rm -f {} \;

# Create the 'dist' folder and prepare for deployment
deploy: install
    git push origin main
    # Deployment step to Render or other platform (modify as needed)
