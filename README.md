# overleafv2-git-integration-unofficial

**overleafv2-git-integration-unofficial** is a Python 3 script that can act as a **free replacement** to [Overleafv2](http://www.overleaf.com)'s github integration. Note that this script is an improvement of [Sharelatex-git](https://github.com/Jorl17/sharelatex-git-integration-unofficial) that aims to bring a two way git-bridge between overleaf v2 and git. It should soon be possible to also send data from your local git to the online overleaf project !

With **overleafv2-git-integration-unofficial**, you can use any folder in a **git repository** to keep your Overleafv2 project and track its changes. The script automatically **downloads the most recent files** and **does git commits for you**. You can also specify an optional commit message. It will even create your git repository if you haven't yet!

**overleafv2-git-integration-unofficial** works in public and private repositores alike, as well as on your own hosted instances. With it, you will instantly be able to track the changes to your project, be it a thesis, a paper or something entirely different.

**Install instructions** can be found [here](#how-do-i-installuninstall-it). A **Quickstart guide** can be found [here](#quickstart-getting-started). Other **example usage** can be found [here](#example-usage).

It should run in any operating system (Windows, Mac OS X, Linux).

Table of Contents
=================

  * [Quickstart (Getting Started)](#quickstart-getting-started)
  * [How do I install/uninstall it?](#how-do-i-installuninstall-it)
    * [Examples:](#examples)
      * [Install](#install)
      * [Install to /usr/local/bin prefix](#install-to-usrlocalbin-prefix)
      * [Uninstall](#uninstall)
      * [Uninstall from /usr/local prefix](#uninstall-from-usrlocalbin-prefix)
  * [How does it work? Is this legal?](#how-does-it-work-is-this-legal)
  * [Can I also push changes from git to Overleafv2? (e.g. do a <em>git revert</em> and change my project)](#can-i-also-push-changes-from-git-to-overleafv2-eg-do-a-git-revert-and-change-my-project)
  * [The URL is too large...can't I initialize the application with something else?](#the-url-is-too-largecant-i-initialize-the-application-with-something-else)
  * [If it does commits for me, won't it commit other files on my git tree?](#if-it-does-commits-for-me-wont-it-commit-other-files-on-my-git-tree)
  * [Can it also push the commits for me?](#can-it-also-push-the-commits-for-me)
  * [I want to change the project. How can I do that?](#i-want-to-change-the-project-how-can-i-do-that)
  * [Why not use the premium version?](#why-not-use-the-premium-version)
  * [Example Usage](#example-usage)
    * [Add a commit after editing the Overleafv2 project](#add-a-commit-after-editing-the-overleafv2-project)
    * [Push changes after adding a commit [experimental]](#push-changes-after-adding-a-commit-experimental)
    * [Checkout changes without actually creating a commit](#checkout-changes-without-actually-creating-a-commit)
  * [What are all the options?](#what-are-all-the-options)

(TOC created with the help of [gh-md-toc](https://github.com/ekalinin/github-markdown-toc))

# Quickstart (Getting Started)

This section tells you all you have to know to get started using **overleafv2-git-integration-unofficial** (from now on abbreviated **overleafv2-git**). It's *really* easy!

1. First, **[install](#how-do-i-installuninstall-it) the script.**

2. **Change directory to the folder where you want to keep your Overleafv2 files**. This folder can already be a part of a git repository, but **overleafv2-git** will create a repository if it doesn't exist yet. E.g.

		cd <my desired Overleafv2 project folder>

3. **Copy the URL address of your Overleafv2 project** (we'll use https://www.overleaf.com/project/56147712cc7f5d0adeadbeef as an example).

4. Invoke **overleafv2-git** with that address
 
		overleafv2-git https://www.overleaf.com/project/56147712cc7f5d0adeadbeef
        
5. **All done!** Whenever you want to add a new commit with your updated Overleafv2 project changes, come back to this folder and run
 
		overleafv2-git
        
   **You don't need to pass the URL ever again.** You can also pass commit messages to better track your changes. For that, use the `-m` option as so:
      
	    overleafv2-git -m "Started the Experimental Validation section"

Isn't that simple?    

# How do I install/uninstall it?
 Just clone the repository and run ``install.sh``, or ``uninstall.sh`` to remove it. It will install to /usr/bin, but you can change this by passing your desired prefix to install.sh, as an argument. This will install the **overleafv2-git-integration-unofficial** application/script and make it available for you to run.

## Examples:
### Install
    pip install requests bs4
    git clone https://github.com/tobiasBora/overleafv2-git-integration-unofficial.git
    cd overleafv2-git-integration-unofficial
    chmod +x install.sh uninstall.sh
    sudo ./install.sh
### Install to /usr/local/bin prefix
    pip install requests bs4
    git clone https://github.com/tobiasBora/overleafv2-git-integration-unofficial.git
    cd overleafv2-git-integration-unofficial
    chmod +x install.sh uninstall.sh
    sudo ./install.sh /usr/local/bin
### Uninstall 
    ./uninstall.sh
### Uninstall from /usr/local/bin prefix
    ./uninstall.sh /usr/local/bin

# How does it work? Is this legal?

**overleafv2-git-integration-unofficial** doesn't do anything illegal. In theory, you could do what **overleafv2-git-integration-unofficial** does on your own. You would download all the files, put them in your folder, and then run a couple of git commands.

# Can I also push changes from git to Overleafv2? (e.g. do a *git revert* and change my project)

Unfortunately, **this is not supported**. In theory, this could be done, but at the moment it is not implemented.

However, you **can** do all the changes you want in your repository, and then simply copy the affected files manually to your project. It's kind of a hassle, but unless you're always deleting what you write, 99.99% of the time you'll just want to track the changes -- **that's what this application is for**.

**If this really annoys you, open up an issue**!

# The URL is too large...can't I initialize the application with something else?

**Well, yes!** If your URL is https://www.overleaf.com/project/56147712cc7f5d0adeadbeef you can happily just pass 56147712cc7f5d0adeadbeef (the "project ID") and it will work. However, since you only really need to pass the URL once, I don't really see the point. Notice that this only works for projects hosted on the Overleafv2 server. If you run your own, you really have to pass the URL to the application (how would we know where your server is hosted?)

# If it does commits for me, won't it commit other files on my git tree?

**No, not at all!** If you see this behavior, it's a bug, please report it. The only files that **overleafv2-git-integration-unofficial** should include in its commits are the files associated with your project and, occasionally, your .gitignore file.

# Can it also push the commits for me?

**This is implemented, but it is experimental** (`-p` option). It should work if you have passwordless pushing in your git settings (be wary of *https* clone links!). Otherwise, it currently blocks and you have to kill it with a  CTRL+C. If you really need this feature, be sure to open up an issue and I'll get straight to it (or better yet, send me a patch!).

# I want to change the project. How can I do that?

If you made a mistake, or if you simply want to change the project ID, you can invoke **overleafv2-git** with the new ID (as if you were starting a new project). A conflict will arise and you will be asked if you want to use the new ID. **Note that this won't delete the previous project's files! Do that on your own!**.


# Why not use the premium version?

I really like Overleafv2, but I'm not willing to pay for just this particular feature that I can legally automate on my own. It's your choice :)

# Example Usage
Here are a couple of examples on how to use **overleafv2-git-integration-unofficial**. Most of these are covered in the [Quickstart guide](#quickstart-getting-started).

## Add a commit after editing the Overleafv2 project

That's easy! Do

	overleafv2-git
    
Yes, that easy! You can personalize the commit message (e.g. to specify what you changed in the document) with the `-m` option

	overleafv2-git -m "Started the Experimental Validation section"
    
## Push changes after adding a commit [experimental]

You can use the `-p` option:


	overleafv2-git -m "Started the Experimental Validation section" -p
    
## Checkout changes without actually creating a commit

Another easy one if you use `-n`,`--no-commit`! Do

	overleafv2-git -n

   
# What are all the options?

```
  -h, --help            show this help message and exit
  -m MESSAGE, --message=MESSAGE
                        Commit message (default: "").
  -p, --push            Push after doing commit (default: don't push)
                        [EXPERIMENTAL]
  -n, --no-commit       Don't commit, just download new files.
  -e EMAIL, --email=EMAIL
                        E-mail needed for login
  --password=PASSWORD   Password to authenticate with the given e-mail
```



