# FPI Exchange — деплой на Railway
1. @BotFather: /newbot -> BOT_TOKEN. Узнать свой ID: @userinfobot -> ADMIN_IDS.
2. @CryptoBot -> Crypto Pay -> Create App -> API Token -> CRYPTO_PAY_TOKEN.
3. GitHub: залить папку tma (Dockerfile в корне).
4. Railway: New Project -> Deploy from GitHub repo; + New -> Database -> Redis.
5. Variables сервиса: BOT_TOKEN, CRYPTO_PAY_TOKEN, ADMIN_IDS, REDIS_URL=${{Redis.REDIS_URL}}.
6. Settings -> Networking -> Generate Domain; PUBLIC_URL=https://<домен> (Redeploy).
7. @CryptoBot -> Crypto Pay -> App -> Webhooks: https://<домен>/webhook/cryptopay
8. @BotFather: /mybots -> бот -> Bot Settings -> Menu Button -> URL = https://<домен>
   (+ /newapp для прямой ссылки t.me/бот/app).
Картинки карт: frontend/public/cards/card1.png, card2.png, card3.png
