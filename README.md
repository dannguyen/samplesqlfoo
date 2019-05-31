# sample sql data project and organizing stuff



An example of how to execute a SQL script, on a given database, and to output it to a destination file.

Open the Terminal to the root of this project. You can execute a SQL script via sqlite by running this command:

```sh
$ sqlite3  path/to/mydb.sqlite '.read path/to/my/code.sql'
```

To try it out using the sample hello-world script in this repo:

```sh
$ sqlite3 data/legislators.sqlite '.read src/hello-world.sql'
```

By default, the command will output the SQL result to stdout (i.e. your terminal window):

```
Hello|world!
```

Notice by default that sqlite3 outputs the result rows using the `|` character as the delimiter. There's various ways to configure the output format for sqlite3, but let's just keep things simple for now...

To output the result of the command to a file, just use the `>` redirection operator as usual:

```sh
$ sqlite3 data/legislators.sqlite \
    '.read src/hello-world.sql' \
    > answers/hello.txt
```



