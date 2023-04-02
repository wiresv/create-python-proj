# Create Python Proj

<img alt="Logo" align="right" src="https://github.com/wiresv/create-python-proj/blob/main/logo.png?raw=true" width="20%" />

Set up a modern Python project by running one command. (The missing [Create React App](https://github.com/facebook/create-react-app) for Python)

Create Python apps with the best devepment workflow and configurations.

- [Creating a Project](#creating-a-project) – How to create a new project.

Create Python App works on macOS, Windows, and Linux.<br>
If something doesn’t work, please [file an issue](https://github.com/wiresv/create-python-proj/issues/new).<br>

## Quick Overview

```sh
pipx run create-python-proj
cd my-proj
poetry shell && poetry run my-proj
```

If you've previously installed `create-python-proj` via `pipx install create-python-proj`, we recommend you uninstall the package using `pipx uninstall create-python-proj` to ensure that pipx always uses the latest version.

### Get Started Immediately

You **don’t** need to install or configure tools like Poetry, flake8, or mypy.
They are preconfigured and hidden so that you can focus on the code.

Create a project, and you’re good to go.

## Creating a Project

This package automates the process of creating a new Python project managed using [**Poetry**](https://python-poetry.org/docs/). It sets up the project structure, initializes a Git repository, configures the best development tools: [**mypy**](https://python-poetry.org/docs/), [**black**](https://github.com/psf/black), [**flake8**](https://github.com/PyCQA/flake8), [**isort**](https://pycqa.github.io/isort/), [**pytest**](https://docs.pytest.org/), and [**pytest-sugar**](https://github.com/Teemu/pytest-sugar/), and adds basic configurations for these tools.

To create a new project, simply use `pipx`:

```bash
pipx run create-python-proj
```

You will be prompted for the project name and create a new directory with the project structure and configurations will be created.

If you don't have [`pipx`](https://github.com/pypa/pipx) installed, you can install it with:

```bash
python3 -m pip install --user pipx
```

([`pipx`](https://github.com/pypa/pipx) is a Python package runner tool for running https://pypi.org/ packages)

It will create a directory called my-proj inside the current folder.<br>
Inside that directory, it will generate the initial project structure and install the transitive dependencies:

```
my-proj
├── pyproject.toml
├── poetry.lock
├── README.md
├── .gitignore
├── .flake8
├── .venv
│   └── ...local Python virtual environment
├── my-proj
│   ├── __init__.py
│   └── main.py
└── tests
    ├── __init__.py
    └── test_example.py
```

No configuration or complicated folder structures, only the files you need to build your app.
Once the installation is done, you can open your project folder and activate the local virtual environment, managed by Poetry:

```bash
cd my-proj
poetry shell
```

Inside the newly created project, you can run your program:

### `poetry run my-proj`

Runs the starter "Hello, World!" program.

### `pytest`

Runs the starter `test_example` test.

## Contributing

Contributions to Create-Python-Proj are welcome. To contribute, please follow these steps:

1. Fork the repository on GitHub.
2. Create a new branch with a descriptive name.
3. Commit your changes to the new branch.
4. Create a pull request, and describe the changes you made.

Please make sure to follow the project's coding standards and add tests for any new features.

## License

Create-Python-Proj is licensed under the MIT License. For more information, see the LICENSE file in the repository.
