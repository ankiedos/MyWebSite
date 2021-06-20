---
title: Sinatra i Flask
author: Antek
description: Omówienie frameworków sieciowych sinatra.rb i flask.py
tags: webdev ruby python framework sinatra flask
layout: post
permalink: /blog/2021/06/19/sinatra-i-flask
---
# Witam wszystkich w 4 poście na tym blogu!
Dzisiaj odejdziemy od tematu Jekylla i GNU/Linuxa, ale zostaniemy przy Rubym.
<!--excerpt-->
# Wstęp
Wcześniej zajmowaliśmy się stronami statycznymi, a dzisiaj powiemy o stronach dynamicznych.
<div class="warning">
W tym poście zakładam, iż macie podstawową wiedzę na temat języków Ruby lub Python.
</div>

Mały spis treści z uwagi na długość tego posta:
- [Przykład użycia Sinatry](#przyklad-aplikacji-uzywajac-sinatry)
- [Przykład użycia Flaska](#przyklad-aplikacji-uzywajac-flaska)

## Sinatra
Sinatra to webowy framework stworony w języku Ruby, stylizowany na odrębny język. **Nie należy mylić z piosenkarzem Frankiem Sinatrą!** Aplikację internetową tworzy się z pomocą czegoś w rodzaju *callbacków*, czyli algorytmów wywoływanych w odpowiedzi na jakieś zdarzenia. Tymi zdarzeniami są polecenia HTTP, takie jak `GET`, `POST`, czy też `DELETE`.
Domyślnym portem dla serwera jest `4567`.
## Flask
Flask jest z kolei inspirowany Sinatrą, przez co ich działanie jest takie same, tylko nazwy identifikatorów są różne.
Domyślnym portem w przypadku Flaska jest `5000`.

# Instalacja
<div class="warning">
Aby korzystać z Sinatry, jak i z Flaska musicie mieć zainstalowanego odpowiednio albo Ruby'ego, albo Pythona!
</div>

## Sinatra
```bash
gem install sinatra
```

## Flask
Jeśli jesteście na Windowsie to musicie zamiast `python3` napisać `python`
```bash
# Najpierw aktualizacja narzędzia pip, jeśli go macie (aktualizacje są dość częste)
python3 -m pip install --upgrade pip
# Korzystając  pip'a
python3 -m pip install flask
# Korzystając z poetry
python3 -m poetry install flask
```

# Przykład aplikacji używając Sinatry
```ruby
# Najpierw treba zaimportować sinatrę
require 'sinatra'

# Teraz napiszemy kod HTML dla roota trony
get '/' do
    '<h1>Hello, World!</h1>
    <p>Lore ipsum dolor sit amet</p>
    <ul>
        <li>Lista</li>
        <li>1</li>
        <li>2</li>
    </ul>
    '
    # Domyślnie zwraca kod błędu 200 (sukces)
end

get '/index' do
    redirect '/'
end

get '/about' do
    "Email: #{email}"
end

get '/prog-langs/:lang' do
    "#{params['lang']} jest bardzo fajnym językiem programowania."
end

# Coś odrobinę bardziej zaawansowanego
require 'json'
get '/translate' do
    # To ^ dopasowuje również '/translate?q=cos', '/translate?parametr=zxc', etc.
    query = params['q']
    db = JSON File.read('backend/database.json') # Czytamy plik database.json
    if db.has_key?(query) # Sprawdzamy, czy w bazie danych istnieje podana fraza (czy słownik 'db' ma klucz query)
        "#{query} po polsku to: #{db[query]}"
    else
        "Niestety nie znaleziono żadnych wyników wyszukiwania dla frazy #{query}."
    end
end

# Gdyby ktoś chciał zobaczyć wszystkie frazy znajdujące się w bazie danych:
get '/backend/database.json' do
    File.read('/backend/database.json')
end

# Uogólnienie powyższego wyglądałoby tak:
get '/*.*' do |path_to_file, ext|
    File.read(path_to_file + "." + ext)
end

get /.*/ do
    "Błąd 404: Nie znaleziono podanego adresu URL!"
end
# Warto zapamiętać, że adres URL jest sprawdzany w takiej samej kolejności, co napisaliśmy. To znaczy, iż najpierw dopasowuje do '/', potem '/index', '/about', '/prog-langs/:lang', '/translate', etc.
```
Program uruchamiamy tak:
```bash
ruby plik.rb
```

<div class="advice">
Sinatrę można bardzo łatwo integrować z innymi bibliotekami.
</div>
Ta integracja polega na ustawieniu domyślnych opcji dla np. konwerterów.

Przykład:
```ruby
require 'sinatra'
require 'haml'
require 'erb'

set :haml, format: :html5
set :erb, locals: { foo: "bar" }
get '/' do
    erb :index # Renderuje plik views/index.erb, chyba że do 
                # linii 5 dopiszemy:
                # , views: settings.root + 'templates'
                # Wtedy przetworzy templates/index.erb
    erb '<%= "foo" + foo %>'
    haml(
'%p
    dodatkowa zawartość strony:')
end
```
Lista wspieranych konwerterów/silników szablonów:
- Haml
- Erb
- Builder
- Nokogiri
- Sass
- SCSS
- Less
- Liquid <-- pamiętacie post "Wstęp do Jekylla"?
- Markdown
- Textile
- RDoc
- AsciiDoc
- Radius
- Markaby
- RABL
- Slim
- Creole
- MediaWiki
- CoffeeScript
- Stylus
- Yajl
- WLang

Ewentualnie do szablonów można użyć HTMLowego znacznika `<iframe>`.

# Przykład aplikacji używając Flaska
```python
import flask
app = flask.Flask('')
@app.route('/')
def index():
    "<h1>Witaj, Świecie!</h1>"

```
Uruchomienie wygląda tak:
```bash
export FLASK_APP=plik.py
flask run
# Lub
python3 -m flask run
```
Natomiast na Windowsie tak:
```bat
set FLASK_APP=plik.py
flask run
@rem lub
python -m flask run
@rem lub
py -3 -m flask run
```
Jednakże, jeśli plik z aplikacją Flaska nazwaliście albo `app.py`, albo `wsgi.py`, to nie musicie ustawiać zmiennej środowiskowej `FLASK_APP`.

# Posłowie
Z Flaskiem nie jestem zapoznany tak, jak z Sinatrą, więc nie będę o nim mówił zbyt dużo na blogu.

Dla Pythona i Ruby'ego istnieją również frameworki oparte na architekturze MVC (*Model View Controller*, pol.: *Model Widok Kontroler*): odpowiednio Django oraz Ruby on Rails.

Nie będę się nimi na razie zajmował na tym blogu z uwagi na złożoność tych bibliotek.

Natomiast możecie oczekiwać całej serii poświęconej Sinatrze. (Frameworkowi, nie piosenkarzowi)!

Uhhh, widzę, że ta linijka kodu jest pod numerem 194 w pliku MarkDown, więc w HTMLu jest pod dużo większym indeksem.

Ergo, to tyle na dzisiaj. Do następnego!