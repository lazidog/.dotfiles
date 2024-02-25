ln -sf ~/.dotfiles/node/.eslintrc.js ~/.eslintrc.js
ln -sf ~/.dotfiles/node/.prettierrc.js ~/.prettierrc.js

npx install-peerdeps -g eslint-config-airbnb

ln -s /opt/homebrew/lib/node_modules ~/

: '
/usr/local/lib
├── @nestjs/cli@10.2.1
├── @typescript-eslint/eslint-plugin@6.17.0
├── @typescript-eslint/parser@6.17.0
├── corepack@0.23.0
├── create-react-app@5.0.1
├── eslint-config-prettier@9.1.0
├── eslint-plugin-json@3.1.0
├── eslint-plugin-react@7.33.2
├── eslint@8.56.0
├── n@9.2.0
├── npm@10.2.4
├── pnpm@8.15.3
├── prettier@3.1.1
├── react-native@0.73.1
├── typescript@5.3.3
└── yarn@1.22.21
'