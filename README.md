# 資料作成ワークフロー

markdown で書いた文書を、`pandoc`により　$\latex$ 形式に変換し、`LuaLatex` に

ある程度うまくいくコマンド

```bash
# setup
docker build -t texlive-test tex/
```

```bash
docker container run -it --rm -v $PWD:/data pandoc/core:latest-alpine --from=markdown+hard_line_breaks --to=latex --number-sections -o /data/dist/main.tex contents/main.md
docker run --rm -it -v $PWD:/workdir  texlive-test sh -c 'latexmk -lualatex layout.tex && latexmk -c layout'
```
