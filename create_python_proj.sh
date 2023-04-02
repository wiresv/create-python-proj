#!/bin/bash

# Check if Poetry is installed
if ! command -v poetry &> /dev/null; then
    echo "Poetry is not installed."
    read -p "Do you want to install Poetry? (y/n): " install_poetry
    if [[ $install_poetry == "y" ]]; then
        curl -sSL https://install.python-poetry.org | python3 -
    else
        echo "Poetry is required to continue. Exiting."
        exit 1
    fi
fi

# Configure Poetry to create virtual environments within the project
poetry config virtualenvs.in-project true

# Prompt for the project name
read -p "Enter the name of the new project: " project_name

# Set the virtual environment name to be the same as the package name
poetry config virtualenvs.prompt "{project_name}"

# Create a new Poetry project
poetry new "$project_name"

# Change to the new project directory
cd "$project_name" || exit

# Add dev dependencies
poetry add --group dev mypy black flake8 isort pytest pytest-sugar

# Add configuration to pyproject.toml
cat >> pyproject.toml << EOF

[tool.poetry.scripts]
$project_name = "$project_name.main:main"

[tool.isort]
profile = "black"
multi_line_output = 3
include_trailing_comma = true
force_grid_wrap = 0
use_parentheses = true
ensure_newline_before_comments = true
line_length = 88

[tool.mypy]
ignore_missing_imports = true # ignore missing type stubs of all imports
strict = true

[tool.pytest.ini_options]
minversion = "6.0"
addopts = "--no-header"
testpaths = ["tests", "integration"]
EOF

# Create a .flake8 configuration file
cat > .flake8 << EOF
[flake8]
max-line-length = 88
extend-ignore = E203, W503
EOF

# Create an example main.py file in the package directory
cat > "$project_name/main.py" << EOF
def hello_world():
    print("Hello, World!")


if __name__ == "__main__":
    hello_world()
EOF

# Create an example test_example.py file in the test directory
cat > "tests/test_example.py" << EOF
def test_answer() -> None:
    assert (1 + 1) == 2
EOF

# Update the README.md file with a starter template containing the package's name
cat > README.md << EOF
# $project_name

## Description

Add a brief description of your project here.

## Installation

Explain how to install your project, including any dependencies.

## Usage

Provide examples and details on how to use your project.

## Contributing

Explain how others can contribute to your project.

## License

Include information about the project's license, if applicable.
EOF

# Initialize the project with Git
git init

# Add a standard .gitignore file
cat > .gitignore << EOF
# Byte-compiled / optimized / DLL files
__pycache__/
*.pyc
*.pyo
*.pyd

# C extensions
*.so

# Distribution / packaging
.Python
env/
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# PyInstaller
#  Usually these files are written by a python script from a template
#  before PyInstaller builds the exe, so as to inject date/other infos into it.
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.tox
.coverage
.coverage.*
.cache
nosetests.xml
coverage.xml
*.cover
*.py,cover
.hypothesis/
.pytest_cache/

# Translations
*.mo
*.pot

# Flask:
instance/
.webassets-cache

# Jupyter Notebook
.ipynb_checkpoints

# pyenv
.python-version

# Environments
.env
.venv
env/
venv/
ENV/
env.bak/
venv.bak/

# mypy
.mypy_cache/
.dmypy.json
dmypy.json

# Pyre type checker
.pyre/

# pytype static type analyzer
.pytype/

# Cython debug symbols
cython_debug/
EOF

# Add the files to the Git repository and create an initial commit
git add .
git commit -m "Initial commit"

echo "The new Poetry project has been created and configured."
