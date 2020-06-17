
## Deployment

Run `./deploy.sh`, which pushes the contents of `out/` to the `gh-pages` branch, which is what Github is configured to serve.

## Helpful tips 

During the migration from Wordpress to this Racket-based static site generator, it's useful to be able to find/replace across all the files in the `out` directory.

```
find ./ -type f -exec sed -i -e 's/ONE-FISH/TWO-FISH/g' {} \;
```
