# Create Python Proj

<img alt="Logo" align="right" src="https://github.com/wiresv/create-python-proj/blob/main/logo.png?raw=true" width="20%" />

Set up a modern Python project by running one command.<br>
(The missing [Create React App](https://github.com/facebook/create-react-app) for Python)

Create Python projects with the best development tools and configurations.

- [Creating a Project](#creating-a-project) – How to create a new project.
- [What's Included?](#whats-included) - Development tools setup.
- [Recommendations](#recommendations) - Do these things.

Create Python Project works on macOS, Windows, and Linux.<br>
If something doesn’t work, please [file an issue](https://github.com/wiresv/create-python-proj/issues/new).<br>

This is the best Python workflow setup, and you deserve the best.

> "A customer can have a car painted any colour he wants, as long as it's black."

## Quick Overview

```sh
pipx install create-python-proj
create-python-proj
cd my-proj
poetry shell
poetry run my-proj
```

If you've previously installed `create-python-proj` via `pipx install create-python-proj`, we recommend you run `pipx upgrade create-python-proj` to ensure that you are always using the latest version.

### Get Started Immediately

You **don’t** need to manually install or configure tools like Poetry, flake8, or mypy.
They are preconfigured and hidden so that you can focus on the code.

Create a project with the best setup, and you’re good to go.

## Creating a Project

This package automates the process of creating a new Python project managed using [**Poetry**](https://python-poetry.org/docs/). It sets up the project structure, initializes a Git repository, configures the best development tools: [**mypy**](https://github.com/python/mypy), [**black**](https://github.com/psf/black), [**flake8**](https://github.com/PyCQA/flake8), [**isort**](https://pycqa.github.io/isort/), [**pytest**](https://docs.pytest.org/), and adds the best configurations for these tools.

To create a new project, simply install using `pipx`:

```bash
pipx install create-python-proj
```

Then run the tool:

```bash
create-python-proj
```

You will be prompted for the project name and a new directory with the project structure and configurations will be created.

If you don't have `pipx` installed, you can install it with:

```bash
python3 -m pip install --user pipx
```

([`pipx`](https://github.com/pypa/pipx) is a Python package runner tool for running https://pypi.org/ packages)

`create-python-proj` will create a directory called my-proj inside the current folder.<br>
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

No configuration or complicated folder structures, only the files you need to build your project.
Once the installation is done, you can open your project folder and activate the local virtual environment, managed by Poetry:

```bash
cd my-proj
poetry shell
```

Inside the newly created project, you can run some built-in commands:

### `poetry run my-proj`

Runs the starter "Hello, World!" program.

### `pytest`

Runs the starter `test_example` test.

### `exit`

Deactivate the local virtual environment when you are finished working with the project.

## What's Included?

Your environment will have everything you need to build a modern Python project, with all tools already configured to work together seemlessly:

- [**Poetry**](https://python-poetry.org/docs/): a standalone, all-in-one package and dependency management tool for Python projects that simplifies dependency installation, package building, and publishing. It uses a pyproject.toml file to define project metadata and dependencies, streamlining the entire packaging process and making it easy to manage complex dependency trees.
- [**mypy**](https://github.com/python/mypy): a static type checker for Python that helps catch potential type errors and improve code readability by enforcing type annotations. It uses gradual typing to provide immediate benefits without requiring a full conversion to static typing.
- [**black**](https://github.com/psf/black): an opinionated code formatter for Python that enforces a consistent style across your codebase by automatically reformatting code to comply with the PEP 8 style guide. By focusing on deterministic formatting rules, it minimizes debates over code style and allows developers to concentrate on writing code.
- [**flake8**](https://github.com/PyCQA/flake8): a Python linter that checks for style guide violations, programming errors, and potential issues in your code. It combines the functionality of PyFlakes, pycodestyle, and McCabe complexity analysis, providing a comprehensive code quality analysis tool.
- [**isort**](https://pycqa.github.io/isort/): a Python utility that automatically sorts and organizes your imports according to the PEP 8 style guide or a custom configuration. It streamlines import management and ensures a consistent import style throughout your project.
- [**pytest**](https://docs.pytest.org/): a powerful and flexible testing framework for Python that simplifies the process of writing and running tests. It supports a wide range of test types, including unit tests, functional tests, and integration tests, and offers advanced features such as fixtures, parameterization, and plugins to extend its functionality.

## Recommendations

Enable automatically running **black** formatting, **mypy** type checking, **flake8** linting, **isort** imports organizing, and `pyproject.toml` formatting on every save in VS Code:

- Install the [Black Formatter VS Code extension](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter).
- Install the [mypy VS Code extension](https://marketplace.visualstudio.com/items?itemName=matangover.mypy).
- Install the [isort VS Code extension](https://marketplace.visualstudio.com/items?itemName=ms-python.isort).
- Install the [Even Better TOML VS Code extension](https://marketplace.visualstudio.com/items?itemName=tamasfe.even-better-toml).

and add these configs to your user `settings.json` file:

```json
// PYTHON
  "[python]": {
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "ms-python.black-formatter",
    "editor.insertSpaces": true,
    "editor.tabSize": 4,
    "editor.codeActionsOnSave": {
      "source.organizeImports": true
    }
  },
  "python.linting.enabled": true,
  "python.linting.flake8Enabled": true,
  "python.linting.flake8Path": "flake8",
  "python.linting.mypyEnabled": true,

  // TOML
  "[toml]": {
    "editor.defaultFormatter": "tamasfe.even-better-toml",
    "editor.formatOnSave": true
  },
  "evenBetterToml.formatter.allowedBlankLines": 1,
  "evenBetterToml.formatter.columnWidth": 88,
```

## Contributing

Contributions to Create-Python-Proj are welcome. To contribute, please follow these steps:

1. Fork the repository on GitHub.
2. Create a new branch with a descriptive name.
3. Commit your changes to the new branch.
4. Create a pull request, and describe the changes you made.

Please make sure to follow the project's coding standards and add tests for any new features.

## License

Create-Python-Proj is licensed under the MIT License. For more information, see the LICENSE file in the repository.
