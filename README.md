
## Deployment

Run `./deploy.sh`, which pushes the contents of `out/` to the `gh-pages` branch, which is what Github is configured to serve.

## Helpful tips 

During the migration from Wordpress to this Racket-based static site generator, it's useful to be able to find/replace across all the files in the `out` directory.

```
find ./ -type f -exec sed -i -e 's/ONE-FISH/TWO-FISH/g' {} \;
```

On MacOS, you may get an error with the above command if you are incorporating special characters (`sed: RE error: illegal byte sequence`). Instead use: 
```
LC_ALL=C find ./ -type f -exec sed -i -e 's/ONE-FISH/TWO-FISH/g' {} \;
```

**Note: If you run this command outside the out directory, you may corrupt your git index files!**

On MacOS, you the `sed` command may produce copies of files with a -e suffix. These files can be found with:
```
find . -name "*.bak" -type f
```
  
And deleted with:
```
find . -name "*.bak" -type f -delete
```
