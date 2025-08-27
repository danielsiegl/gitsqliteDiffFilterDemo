# gitsqliteDiffFilterDemo
Sample repo to showcase just the Diff filter of https://github.com/danielsiegl/gitsqlite

## Install gitsqlite using winget

Open PowerShell and run:

```
winget install gitsqlite
```
For other operating systems see:
https://github.com/danielsiegl/gitsqlite


## Configure git to use gitsqlite as a diff filter

### Option 1: Command line
Run the following command in your repository:

```
git config diff.gitsqlite.textconv "gitsqlite diff"
```

### Option 2: Edit .git/config manually
Add the following section to your `.git/config` file:

```
[diff "gitsqlite"]
    textconv = gitsqlite diff
```

## Run the sample

1. Insert sample data into the database:
   ```
   .\insert_sample_data.ps1
   ```
2. Make changes to your SQLite file and use git diff to see the output:
   ```
   git diff smoketest.db
   ```
