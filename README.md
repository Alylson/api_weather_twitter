## Descrição

- Obter algumas características como clima de uma cidade por meio da API 
[Open Weather Map (OWM)](https://openweathermap.org/api) e [Twitter](https://developer.twitter.com/en/docs/twitter-api) e fazer um tweet 

## API - Tecnologia utilizada

- Ruby 3.0.0. Ver outras versões disponíveis: https://www.ruby-lang.org/en/downloads/releases/

- Framework Rails: 7.0.2. Documentação completa disponível em: https://guides.rubyonrails.org/7_0_release_notes.html

## Configuração da api

- Configurar credenciais de acesso ao OWM e Twitter. Para quem usa o VSCode é possível rodar o seguinte comando no terminal: 
```
$EDITOR="code --wait" rails credentials:edit
```
- Em seguinda informar os valores: 
```
open_weather_map:
  url: 
  appid: 

twitter:
  consumer_key: 
  consumer_secret: 
  access_token: 
  access_token_secret: 
```
- Fazer o download do arquivo de cidades e verificar o id da cidade para ser informado no arquivo weather_controller [Lista de cidades](http://bulk.openweathermap.org/sample/)

- Na raiz do projeto rodar: 
```
$bundle install
```

## Rotas disponíveis

###### Fazendo o tweet da temperatura atual

    method: GET
    url: http://localhost:3000/api/V1/weather
