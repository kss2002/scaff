# README

## hello mac

## scaffold

```bash
rails generate scaffold Post title:string content:text
```

## 전역 ERB 포멧팅 - prettier

```bash
gem install htmlbeautifier
```

전역으로 세팅 및 setting.json에 관련 코드를 추가해서 vs code에서 전역으로
사용할 수 있음.

```json
 "[erb]": {
    "editor.defaultFormatter": "aliariff.vscode-erb-beautify",
    "editor.formatOnSave": true
  }
```
