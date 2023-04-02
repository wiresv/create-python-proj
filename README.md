# Create Python Proj

<img alt="Logo" align="right" src="https://github.com/wiresv/create-python-proj/blob/main/logo.png?raw=true" width="20%" />

Set up a modern python project by running one command. The missing [Create React App](https://github.com/facebook/create-react-app) for python.

Create-Python-Proj is a Python package that simplifies the process of setting up a new Python project with Poetry, including the best development tools and configurations.

## Description

This package automates the process of creating a new Python project using [**Poetry**](https://python-poetry.org/docs/). It sets up the project structure, initializes a Git repository, configures development tools [**mypy**](https://python-poetry.org/docs/), [**black**](https://github.com/psf/black), flake8, [**isort**](https://pycqa.github.io/isort/), [**pytest**](https://docs.pytest.org/), and pytest-sugar), and adds basic configurations for these tools.

## Installation

Install the package using pipx:

```bash
pipx install create-python-proj
```

If you don't have pipx installed, you can install it with:

```bash
python3 -m pip install --user pipx
```

## Usage

To create a new Python project, simply run:

```bash
create-python-proj
```

The script will prompt you for the project name and create a new directory with the project structure and configurations.

## Contributing

Contributions to Create-Python-Proj are welcome. To contribute, please follow these steps:

1. Fork the repository on GitHub.
2. Create a new branch with a descriptive name.
3. Commit your changes to the new branch.
4. Create a pull request, and describe the changes you made.

Please make sure to follow the project's coding standards and add tests for any new features.

## License

Create-Python-Proj is licensed under the MIT License. For more information, see the LICENSE file in the repository.
