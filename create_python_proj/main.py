import os
import subprocess
import sys


def main():
    script_path = os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        "..",
        "create_python_proj.sh",
    )

    with open(script_path, "r") as file:
        shell_script = file.read()

    subprocess.run(shell_script, shell=True, check=True, executable="/bin/bash")


if __name__ == "__main__":
    sys.exit(main())
