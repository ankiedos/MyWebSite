---
title: Wstęp do Jekylla
author: Antek
description: "O konfiguracji Jekylla słów kilka"
tags: jekyll gh-pages
layout: post
permalink: /blog/2021/04/19/konfiguracja-jekylla
release_date: 2021-04-25
---
Cześć, w dzisiejszym poście opowiem wam, jak skonfigurować Jekylla i Ruby'ego, tak aby wszystko działało. Tak, tak, wiem, że 2 tygodnie nic nie było, ale post trochę dłuższy niż ostatnio.
<!--excerpt-->
### Strony internetowe -- klasyfikacja
Najpierw rozróżnijmy poszczególne rodzaje stron internetowych. Dzielimy je nat strony **statyczne** i **dynamiczne**.

[POMIŃ](#jekyll)

Strony statyczne to takie strony, które nie zmieniają się na stałe, tylko w obrębie jednej sesji (jednego wejścia), tylko u jednego użytkownika. Wszystko działa po stronie przeglądarki, a serwer jest tylko po to, aby stronę zahostować.

W stronach statycznych używa się następującego modelu:

Frontend | Język znaczników
Styl | Język arkuszy stylów
Logika | Język skryptowy

- Język znaczników to HTML i opcjonalnie [XML](https://pl.wikipedia.org/wiki/XML)
- Język arkuszy stylów to CSS (Cascading Style Sheets - Język Kaskadujących Arkuszt Stylów) lub JSSS (JavaScript Style Sheets) (Język Arkuszy Stylów Języka JavaScript)
  - Można też użyć [LESSa](https://pl.wikipedia.org/wiki/LESS_(język_arkuszy_stylów)) lub SCSS, które potem zmieniają się w CSS
- Język skryptowy może być JavaScriptem lub językami zmieniającymi się w niego, takimi jak: TypeScript, LiveScript, CoffeeScript, Ice CoffeeScript, PureScript, ...; Może to być też ActionScript, albo (tylko w Internet Explorerze) JScript lub VisualBasic Script.
- Językiem odpowiadającym za logikę może być też Ruby, za pomocą programu Opal, który przemienia go w kod JavaScripta. Jednakże moim zdaniem Ruby nadaje się bardziej do stron dynamicznych

### Strony dynamiczne
Model strony dynamicznej wygląda tak jak poniżej:

Frontend | Język znaczników
Styl | Język arkuszy stylów
Logika <small>(po stronie przeglądarki)</small><sub>opcjonalne</sub> | Język skryptowy
Logika <small>(po stronie serwera)</small><sub>niezbędne</sub> | Język programowania
Backend | Język zapytań i baza danych

Gdzie język znaczników, styl i logika są takie same jak w stronach statycznych.

Język programowania odpowiedzialny za logikę to najczęściej PHP, ale może to być zwyczajny język programowania, jak C++, przy użyciu [CGI (Common Gateway Interface)](https://pl.wikipedia.org/wiki/CGI). Może to być również język działający na maszynie wirtualnej Javy, z wykorzystaniem narzędzia zwanego Java Server Packages. Nawet C# można użyć, przy użyciu frameworka [ASP.NET](https://dotnet.microsoft.com/apps/aspnet) lub Razor Pages, Blazor Server, albo Blazor WebAssembly.

Istnieje również ASP (Active Server Packages, którego spadkobiercą jest ASP.NET), w którym można pisać zarówno w VisualBasic Scripcie, JScripcie, PerlScripcie i C#.

Językiem zapytań najczęściej jest SQL, razem z bazami danych opartymi o silniki \*SQL\*, jak MySQL, PlSQL, PostgreSQL, TransactSQL, czy SQLite.

Innymi silnikami baz danych są np.: MongoDB czy Apache Cassandra.

## Jekyll
Niestety zeszliśmy trochę z tematu, pora teraz coś powiedzieć o Jekyllu.

Jekyll jest to *generator* statycznych stron internetowych, co oznacza, że trzeba samemu napisać kod w HTMLu lub w Markdownie, który jest czymś *a la* "skryptowy HTML dla ogółu ludzi, nawet dla tych, którym HTML wydaje się zbyt skomplikowany".

Spytacie się mnie zapewne, "Zaraz, skoro trzeba je samemu robić to Jekyll jest niepotrzebny, czyż nie?".

Odpowiedź na to pytanie jest prosta: Jekyll udostępnia możliwość korzystania z języka szablonów [Liquid](https://shopify.github.io/liquid), dzięki któremu możemy wywoływać pętlę `foreach` na HTMLu, czy nawet `if`a. Jak to się dzieje? Ano Liquid korzysta z języka YAML, który chyba znacie, a jeśli nie, to go poznajcie, bardzo wam się przyda w pracy lub po prostu jako format zapisywania swoich planów (wyjazdów, spotkań, planu dnia, lekarza, itp.). Jeśli chcecie, abym napisał o YAMLu i jego wielu zastosowaniach, napiszcie [tutaj](https://github.com/ankiedos/ankiedos.github.io/issues), tylko jeśli macie konto na GitHubie, bo nie dałem możliwości komentowania **jeszcze**.

Gdzie ten YAML się znajduje? W pliku `_config.yml` z konfiguracją waszej strony **globalnie**, w plikach `*.yaml` i `*.yml` w folderze `_data` lub na samej górze strony (w sensie pliku, a nie całej domeny), między `---`, a `---`. Przykład:
{% raw %}
```yaml
---
title: Hello, World!
description: Moja pierwsza strona w Jekyllu
author: Jan Kowalski
tags: hello-world jan-kowalski
---
# Cześć!
```
{% endraw %}
Od teraz możecie się do nich odwołać poprzez
{% raw %}
```liquid
Autorem strony jest {{ page.author }}

{% comment %}
Albo w ifie:
{% endcomment %}

{% if page.author == "Jan Kowalski" %}
Autorem strony jest wasz ulubiony Jan Kowalski
{% else %}
Jakiś pazerny człowiek pozmieniał zawartość tej strony...
{% endif %}

{% comment %}
Albo w forze:
{% endcomment %}

{% for tag in page.tags %}
[{{ tag }}]({{ "/tags/" | append: tag | relative_url }})
{% endfor %}

{% comment %}
Jeśli zmienna jest w pliku _config.yml, to odwołujemy się do niej tak:
{% endcomment %}

{{ site.author }}

{% comment %}
Ale jeśli w pliku file w folderze _data, to:
{% endcomment %}

{{ site.data.file.aboutme }}

{% if site.data.private.very-important-variable == "abcdef" -%}
xyz
{%- else -%}
{%- endif -%}
```
{% endraw %}
## Konfiguracja Jekylla
Jekyll jest napisany w języku Ruby, który jest interpretowany[\*](#annotations), więc aby się jego kod wykonał, potrzebny jest *interpreter*.

Jeśli używacie systemu GNU/Linux, to najprawdopodobniej macie go już.

[POMIŃ](#skipped)
### GNU/Linux
#### Ubuntu
- Instalacja Ruby'ego i zależności:
```bash
sudo apt-get install ruby-full build-essential zlib1g-dev
```
- Konfiguracja Ruby'ego:
```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

#### Fedora
```bash
sudo dnf install ruby ruby-devel openssl-devel redhat-rpm-config @development-tools
```
#### RHEL8/CentOS8
```bash
sudo dnf install ruby ruby-devel
sudo dnf group install "Development Tools"
```
#### Debian
```bash
sudo apt-get install ruby-full build-essential
```
#### Gentoo
```bash
sudo emerge -av jekyll
# lub
sudo emerge --ask --verbose jekyll
```
#### Arch Linux/Manjaro Linux
```bash
sudo pacman -S ruby base-devel
```
#### OpenSUSE
```bash
sudo zypper install -t pattern devel_ruby devel_C_C++
```
#### Czysty Linux
```bash
sudo swupd bundle-add ruby-basic
```
### macOS
#### Instalacja terminalowych narzędzi
```bash
xcode-select --install
```
#### Są 2 sposoby na instalację Ruby'ego:
1. Instalacja Ruby'ego (lub Homebrew)

```bash
# Homebrew
# Jeśli korzystacie z powłoki bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Jeśli korzystacie z Zsh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Ruby
brew install ruby
```
2. Jeśli zamierzacie programować w Rubym

```bash
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# rbenv
brew install rbenv

# Zintegrujcie Rbenv z powłoką
rbenv init

# Zrestartujcie terminal i wpiszcie
rbenv install WERSJA
rbenv global WERSJA
# Zainstaluje to Ruby'ego
```
#### Konfiguracja Ruby
```bash
# Jeśli korzystacie z powłoki Zsh
echo 'export PATH="$HOME/.gem/ruby/WERSJA RUBYEGO, KTÓRĄ ZAINSTALOWALIŚCIE/bin:$PATH"' >> ~/.zshrc

# Jeśli używacie Bash
echo 'export PATH="$HOME/.gem/ruby/WERSJA RUBYEGO, KTÓRĄ ZAINSTALOWALIŚCIE/bin:$PATH"' >> ~/.bash_profile
```

### Windows
Najprostszym sposobem jest użycie [RubyInstaller](https://rubyinstaller.org/downloads).
Zainstalujcie najnowszą wersję, wariację Ruby+DevKit, z domyślnymi opcjami.
Następnie wpiszcie (do PowerShella lub Terminala)
```bat
ridk install
```
...Lub użyjcie WSLa jeśli macie :)

<h2 id="skipped">Instalacja Jekylla (i Bundlera, jeśli nie macie go od razu)</h2>

Otwórzcie ponownie terminal i wpiszcie
```bat
gem install jekyll bundler
```
## Pierwsza strona
Aby stworzyć nową stronę, wpiszcie
```bat
bundle exec jekyll new moja_pierwsza_strona
cd moja_pierwsza_strona
```
W folderze `moja_pierwsza_strona` znajdziecie podfoldery `_includes`, `_layouts`, `_data`, `_posts` oraz pliki `index.md` i `_config.yml`. Najprawdopodobniej będzie jeszcze folder `.jekyll-cache`, ale jest nieważny, tylko Jekyll z niego korzysta.

Jekyllem można też budować strony, których się nie wygenerowało poprzez `bundle exec jekyll new strona`, ponieważ to generuje pewien "zestaw startowy".

Aby zbudować stronę, wpiszcie:
```bat
bundle exec jekyll build
```
Albo krócej
```bat
bundle exec jekyll b
```
Pojawi się podkatalog `_site`, w którym znajduje się wygenerowana strona. Teraz wpiszcie
```bat
bundle exec jekyll serve
```
Albo
```bat
bundle exec jekyll s
```
I otwórzcie w przeglądarce link, który się wyświetli. W moim przypadku jest to `127.0.0.1:4000`. Jekyll zaserwował stronę **lokalnie**, do podglądu.
Jeśli nie chcecie ciągle pisać `bundle exec jekyll b`, to użyjcie tej komendy z przełącznikiem `--watch`. Wtedy będzie budowało, jak tylko wykryje zmianę. Przy `serve` ta opcja jest włączona domyślnie.

<div class="warning">
<strong><em>UWAGA:</em></strong> Budujcie stronę zawsze z włączoną opcją <code class="highlighter-rouge">--trace</code>, ponieważ umożliwia pokazanie dodatkowych informacji o ewentualnym błędzie.
</div>

<div class="advice">
Porada: Stwórzcie alias (lub skrypt) dla uruchamiania Jekylla.
</div>

Dlaczego ciągle trzeba pisać `bundle exec` przed `jekyll`?
Sprawdźcie sami i wpiszcie `jekyll b`. Komunikat, który się wtedy najprawdopodobniej pojawi, powie wam dlaczego.
<hr>
<div class="annotations">
Przypisy
<footer id="annotations">
* - Ruby może być też na maszynie wirtualnej <a href="#konfiguracja-jekylla">&uparrow;</a>
</footer>
</div>

<hr>
<br>
Bibliografia:
<div class="bibliography">
<ul>
  <li>
    instrukcje instalacji Jekylla: <a href="https://jekyllrb.com/docs/installation/#guides">https://jekyllrb.com/docs/installation/#guides</a>
  </li>
</ul>
</div>
<br>