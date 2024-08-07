
pages_url    := https://the-ai-alliance.github.io/trust-safety-user-guide/
docs_dir     := docs
site_dir     := ${docs_dir}/_site
clean_dirs   := ${site_dir} ${docs_dir}/.sass-cache

# Environment variables
MAKEFLAGS            = -w  # --warn-undefined-variables
MAKEFLAGS_RECURSIVE ?= # --print-directory (only useful for recursive makes...)
UNAME               ?= $(shell uname)
ARCHITECTURE        ?= $(shell uname -m)

# Used for version tagging release artifacts.
GIT_HASH            ?= $(shell git show --pretty="%H" --abbrev-commit |head -1)
TIMESTAMP           ?= $(shell date +"%Y%m%d-%H%M%S")

define help_message
Quick help for trust-safety-user-guide make process.

make all                # Clean and locally view the document.
make clean              # Remove built artifacts, etc.
make view-pages         # View the published GitHub pages in a browser.
make view-local         # View the pages locally (requires Jekyll).

Miscellaneous tasks for help, debugging, setup, etc.

make help               # Prints this output.
make print-info         # Print the current values of some make and env. variables.
make setup-jekyll       # Install Jekyll. Make sure Ruby is installed. 
                        # (Only needed for local viewing of the document.)
make run-jekyll         # Used by "view-local"; assumes everything is already built.
endef

define missing_shell_command_error_message
is needed by ${PWD}/Makefile. Try 'make help' and look at the README.
endef

ifndef docs_dir
$(error ERROR: There is no ${docs_dir} directory!)
endif

define gem-error-message

ERROR: Did the gem command fail with a message like this?
ERROR: 	 "You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory."
ERROR: To run the "gem install ..." command for the MacOS default ruby installation requires "sudo".
ERROR: Instead, use Homebrew (https://brew.sh) to install ruby and make sure "/usr/local/.../bin/gem"
ERROR: is on your PATH before "user/bin/gem".
ERROR:
ERROR: Or did the gem command fail with a message like this?
ERROR:   Bundler found conflicting requirements for the RubyGems version:
ERROR:     In Gemfile:
ERROR:       foo-bar (>= 3.0.0) was resolved to 3.0.0, which depends on
ERROR:         RubyGems (>= 3.3.22)
ERROR:   
ERROR:     Current RubyGems version:
ERROR:       RubyGems (= 3.3.11)
ERROR: In this case, try "brew upgrade ruby" to get a newer version.

endef

define bundle-error-message

ERROR: Did the bundle command fail with a message like this?
ERROR: 	 "/usr/local/opt/ruby/bin/bundle:25:in `load': cannot load such file -- /usr/local/lib/ruby/gems/3.1.0/gems/bundler-X.Y.Z/exe/bundle (LoadError)"
ERROR: Check that the /usr/local/lib/ruby/gems/3.1.0/gems/bundler-X.Y.Z directory actually exists. 
ERROR: If not, try running the clean-jekyll command first:
ERROR:   make clean-jekyll setup-jekyll
ERROR: Answer "y" (yes) to the prompts and ignore any warnings that you can't uninstall a "default" gem.

endef

define missing_ruby_gem_or_command_error_message
is needed by ${PWD}/Makefile. Try "gem install ..."
endef

define ruby_and_gem_required_message
'ruby' and 'gem' are required. See ruby-lang.org for installation instructions.
endef

define gem_required_message
Ruby's 'gem' is required. See ruby-lang.org for installation instructions.
endef


.PHONY: all view-pages view-local clean help 
.PHONY: setup-jekyll run-jekyll

all:: clean view-local

help::
	$(info ${help_message})
	@echo

print-info:
	@echo "GitHub Pages URL:    ${pages_url}"
	@echo "current dir:         ${PWD}"
	@echo "docs dir:            ${docs_dir}"
	@echo "site dir:            ${site_dir}"
	@echo "clean dirs:          ${clean_dirs} (deleted by 'make clean')"
	@echo
	@echo "GIT_HASH:            ${GIT_HASH}"
	@echo "TIMESTAMP:           ${TIMESTAMP}"
	@echo "MAKEFLAGS:           ${MAKEFLAGS}"
	@echo "MAKEFLAGS_RECURSIVE: ${MAKEFLAGS_RECURSIVE}"
	@echo "UNAME:               ${UNAME}"
	@echo "ARCHITECTURE:        ${ARCHITECTURE}"
	@echo "GIT_HASH:            ${GIT_HASH}"
	@echo "TIMESTAMP:           ${TIMESTAMP}"

clean::
	rm -rf ${clean_dirs} 

view-pages::
	@python -m webbrowser "${pages_url}" || \
		(echo "ERROR: I could not open the GitHub Pages URL. Try ⌘-click or ^-click on this URL instead:" && \
		 echo "ERROR:   ${pages_url}" && exit 1 )

view-local:: setup-jekyll do-view-local
do-view-local: clean run-jekyll

# Passing --baseurl '' allows us to use `localhost:4000` rather than require
# `localhost:4000/The-AI-Alliance/trust-safety-user-guide` when -ping locally.
run-jekyll:
	@echo
	@echo "Once you see the http://127.0.0.1:4000/ URL printed, open it with command+click..."
	@echo
	cd ${docs_dir} && bundle exec jekyll serve --baseurl '' --incremental || ( echo "ERROR: Failed to run Jekyll. Try running 'make setup-jekyll'." && exit 1 )

setup-jekyll:: ruby-installed-check bundle-ruby-command-check
	@echo "Updating Ruby gems required for local viewing of the docs, including jekyll."
	gem install jekyll bundler jemoji || ${MAKE} gem-error
	bundle install || ${MAKE} bundle-error
	bundle update html-pipeline || ${MAKE} bundle-error

ruby-installed-check:
	@command -v ruby > /dev/null || \
		( echo "ERROR: ${ruby_and_gem_required_message}" && exit 1 )
	@command -v gem  > /dev/null || \
		( echo "ERROR: ${gem_required_message}" && exit 1 )

%-error:
	$(error ${${@}-message})

%-ruby-command-check:
	@command -v ${@:%-ruby-command-check=%} > /dev/null || \
		( echo "ERROR: Ruby command/gem ${@:%-ruby-command-check=%} ${missing_ruby_gem_or_command_error_message}" && \
			exit 1 )

%-shell-command-check:
	@command -v ${@:%-shell-command-check=%} > /dev/null || \
		( echo "ERROR: shell command ${@:%-shell-command-check=%} ${missing_shell_command_error_message}" && \
			exit 1 )
