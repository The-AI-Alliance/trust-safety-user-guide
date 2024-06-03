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

We used the following command to create the initial "skeleton" for the User Guide:

```shell
jupyter-book create user-guide/
```

The `user-guide` directory has the actual book content.

### Building the Book

```sell
jupyter-book build user-guide/
```

For convenience, a `Makefile` is provided in the root directory. You can also build the book using the following command:

```shell
make build
```

> **Tip:** Run `make help` to see other commands you can run.

This creates an HTML tree, [userguide/_build/html/index.html](userguide/_build/html/index.html) and a PDF (TBD).

However, in order to build the PDF, you have to install LaTex. We use [TeX Live](https://www.tug.org/texlive/)

## Editing Jupyter Books

If you are new to Jupyter Book, consider going through the [Create your first book](https://jupyterbook.org/en/stable/start/overview.html) tutorial.

### Markdown Dialect(s)

The pages are written in Markdown, using [CommonMark markdown](https://commonmark.org/), a markdown standard that is very common, and [MyST Markdown](https://jupyterbook.org/en/stable/content/myst.html), an extension of CommonMark with extra functionality for enriched documents.

