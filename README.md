# README

This repo contains the AI Alliance _Understanding AI Trust and Safety: A Living Guide_, a [Jupyter Book](https://jupyterbook.org/). We welcome contributions as PRs. See the AI Alliance [CONTRIBUTING](https://github.com/The-AI-Alliance/community/blob/main/CONTRIBUTING.md). Also note the AI Alliance [Code of Conduct](https://github.com/The-AI-Alliance/community/blob/main/CODE_OF_CONDUCT.md) and [LICENSE](https://github.com/The-AI-Alliance/community/blob/main/LICENSE) (which is also in [this repo](LICENSE)).

## Setup

We recommend using a [Conda environment](https://conda.io/). Running the following command in this directory will setup everything you need in a Conda environment called `trust-safety-user-guide`:

```shell
conda env create -f conda.yml
```

At any time, you can activate the environment:

```shell
conda activate trust-safety-user-guide
```

Verify that `jupyter-book` is working:

```shell
jupyter-book --help
```

Which prints the following:

```text
Usage: jupyter-book [OPTIONS] COMMAND [ARGS]...

  Build and manage books with Jupyter.

Options:
  --version   Show the version and exit.
  -h, --help  Show this message and exit.
...
```

## Using Jupyter Book

If you are new to Jupyter Book, consider going through the [Create your first book](https://jupyterbook.org/en/stable/start/overview.html) tutorial.

