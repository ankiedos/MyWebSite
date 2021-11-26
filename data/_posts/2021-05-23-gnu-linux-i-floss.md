---
title: GNU/Linux i FLOSS
author: Antek
description: "Historia GNU/Linuxa i FLOSS"
tags: gnu-linux stallman floss
layout: post
permalink: /blog/2021/05/23/gnu-linux-i-floss
---
### Witam wszystkich!
Na wstępie chciałbym przeprosić za brak nowych postów przez ostatnie 4 tygodnie. Miałem ostatnio dużo na głowie, a także komputer, na którym było lokalne repozytorium z kodem strony, był w naprawie, a gdybym to zrobił na innym urządzeniu, to mógłbym mieć jakieś konflikty. Kolejną "wymówką" jest to, iż ostatnio bardzo intensywnie uczę się [Qt](https://qt.io) (takiego *frameworka* przystosowanego do tworzenia aplikacji desktopowych).
<!--excerpt-->
Komputer był w naprawie, ponieważ próbowałem zainstalować GRUBa, dzięki kóremu mógłbym przełączać się między Windowsem, a Manjaro, które chciałem zainstalować. GRUB nie działał i przez to komputer się nie *bootował*. Dopiero później dowiedziałem się, że *Calamares*, instalator Manjaro, sam konfiguruje ten *bootloader*. Jednakże, nadal na laptopie mam tylko Windowsa, lecz niedługo również ową dystrybucję GNU/Linuxa.

Pomyślałem sobie dzisiaj, że ten post będzie o GNU/Linuxie i ruchu *FLOSS* (*Free/Libre Open Source Software*).

### Jak powstały ruchy wolnego i otwartego oprogramowania?
Dawno, dawno temu, gdy komputery były jeszcze 8-bitowe, czyli ponad 70 lat wstecz, ze społeczeństwa wyodrębniła się subkultura, którą nazywamy *hakerską*. Nie chodzi tutaj o osoby włamujące się na serwery, czy też tworzące wirusy komputerowe, bowiem to są ***krakerzy***.
Członkami tej subkultury byli najczęściej przedstawiciele środowisk akademickich. Pomoc innym i działanie na korzyść dobra wspólnego, były najważniejszymi zasadami tej społeczności. Co za tym idzie, każde oprogramowanie jakie powstało, mogło być rozpowszechniane na skalę masową przez osoby nie będące autorami tychże.

Niestety w latach 80. XX wieku kultura hakerska zaczęła rozkładać się pod naciskiem rosnącego w siłę przemysłu informatycznego. Wiele hakerów zostało zatrudnionych przez firmy pragnące zastąpić wolne oprogramowanie własnym, prawnie zastrzeżonym.

Tutaj pojawia się ważna osobistość -- Richard Matthew Stallman, późniejszy twórca Projektu GNU i *Free Software Foundation*, nazywany też "świętym I**gnu**cym Kościoła Emacsa". Był <small>(może już powrócił?)</small> on wykładowcą na uczelni MIT. Podczas, gdy jego koledzy dotychczas pracujący w laboratorium sztucznej inteligencji MIT pracowali dla firm takich jak *Symbolics*, on rozwijał analogiczne oprogramowanie, z tym, że było ono wolne, na maszyny lispowe, będące odpowiednikami dzisiejszych pecetów, ale programowało się je w języku [Lisp](https://pl.wikipedia.org/wiki/Lisp). Był wtedy ostatnim ze swojego pokolenia hakerem pracującym w laboratorium. Próbowano go nakłonić do wielu rzeczy, które uznawał za zdradę swoich podstawowych wartości (m. in. został poproszony o nieujawnianie dotyczących laboratorium informacji, do których miał dostęp). Często wspomina również, jak nie udostępniono mu kodu źródłowego nowej drukarki firmy Xerox, która była dostępna w laboratorium sztucznej inteligencji.

27 września 1983 roku w Usenecie (odpowiedniku dzisiejszego Internetu) zapowiedział powstanie wolnego systemu operacyjnego GNU (skrót od ang. *GNU's Not Unix*), a 2 lata później stworzył [Manifest Projektu GNU](http://www.gnu.org/gnu/manifesto.pl.html). Wkrótce powstała organizacja non-profit *Free Software Foundation* w celu skoordynowania prac nad projektem, a w roku 1989 stworzył licencję GNU GPL[\*](#annotations-2) (*GNU General Public License*) i koncepcję *copyleft*. W międzyczasie stworzył rozszerzalny edytor GNU Emacs, który był wyłącznie małym jądrem i interpreterem dialektu języka Lisp -- *Emacs Lispu*. Edytor ten obecnie posiada nawet rozszerzenie pozwalające na wysyłanie i odbieranie wiadomości e-mail.

Wtedy systemowi GNU brakowało tylko jądra. W 1991 roku zainspirowany unixopodobnym systemem Minix student Linus Torvalds udostępnił hobbystycznie tworzone przez siebie jądro Linux na licencji GPL. Po przystosowaniu GNU do działania z Linuxem powstał system operacyjny GNU/Linux, potocznie błędnie znany jako Linux, ponieważ ta nazwa nie wskazuje na wkład, jaki miał Projekt GNU, w rozwój tego systemu.

Najstarszą rozwijaną do dzisiaj dystrybucją GNU/Linuxa jest Slackware.

W 1990 roku Projekt GNU wypuścił pierwszą wersję własnego jądra -- GNU Hurd. Niestety rozwój tego projektu jest bardzo powolny, ponieważ najnowsze wydanie ukazało się w 2016 roku jako wersja 0.9.

16 września 2019 roku Richard Stallman zrezygnował ze swojego stanowiska w FSF pod naciskiem osób niezgadzających się z jego opiniami.
Dwa lata później, w marcu tego roku, zapowiedział swój powrót. Powstał wtedy otwarty list do FSF aby nie przyjmowała go z powrotem.
Na początku kwietnia natomiast powstał list popierający kandydaturę RMS, który podpisałem. 12 kwietnia 2021 Richard Stallman wrócił na stanowisko prezesa Fundacji Wolnego Oprogramowania. Napisał on również, że bardzo przeprasza, że bronił takiego jednego prof. MIT, a mimo to niektórzy ludzie myśleli, że broni również człowieka, do którego był ten profesor porównywany. Czytamy również o aspołeczności, jaką RMS cechował się od lat dziecięcych.
<aside>
    <small>Szczerze mówiąc, dopiero dzisiaj się dowiedziałem, że Stallman powrócił.</small>
</aside>
<br>

#### Otwarte Oprogramowanie
Otwarte Oprogramowanie również wywodzi się z subkultury hakerskiej XX wieku, ale jest mniej radykalne w porównaniu do ruchu Wolnego Oprogramowania. Organem odpowiedzialnym za ten ruch jest *Open Source Initiative*, na czele której stoi Eric S Raymond, który utrzymuje [słownik wyrażeń używanych przez hakerów oraz ich tradycji i sposobu życia](http://www.catb.org/jargon/html/), *et al*. Jednakże, najbardziej znanym przedstawicielem ruchu *Open Source* jest Linus Torvalds.

Ruch Otwartego Oprogramowania dąży do tego, aby programiści udostępniali kod swoich programów.
<hr>
<div class="annotations">
Przypisy
    <footer id="annotations-1">
        W 1976 roku Bill Gates napisał "Otwarty List do Hobbystów", w którym mówi o hakerach jak o "złodziejach" (ang.): <a href="http://www.blinkenlights.com/classiccmp/gateswhine.html">http://www.blinkenlights.com/classiccmp/gateswhine.html</a>
    </footer>
    <footer id="annotations-2">
        * - Ruch FLSS ma 3 pisma uznawane za konstytucje, a nawet przez niektórych za Biblie: Maniftest GNU, Jargon File i GNU GPL, a OSS najprawdopodobniej wyłącznie Jargon File
    </footer>
</div>

<hr>
<br>
Bibliografia:
<div class="bibliography">
    <ul>
        <li>
            Richard Stallman i GNU/Linux: <a href="https://pl.wikipedia.org/wiki/Richard_Stallman">https://pl.wikipedia.org/wiki/Richard_Stallman</a>
        </li>
        <li>
            GNU Hurd: <a href="https://en.wikipedia.org/wiki/GNU_Hurd">https://en.wikipedia.org/wiki/GNU_Hurd</a>
        </li>
        <li>
            Odejście RMS z FSF: <a href="https://www.fsf.org/news/richard-m-stallman-resigns?fbclid=IwAR0MPJDZyUoo5AyLKWjJVOtZQ_sBNP6bDiNpzFM42o-BgwhguI9xrFHLUwc">https://www.fsf.org/news/richard-m-stallman-resigns?fbclid=IwAR0MPJDZyUoo5AyLKWjJVOtZQ_sBNP6bDiNpzFM42o-BgwhguI9xrFHLUwc</a>
        </li>
        <li>
            Powrót Richarda Stallmana na stanowisko prezesa FSF: <a href="https://www.fsf.org/news/statement-of-fsf-board-on-election-of-richard-stallman">https://www.fsf.org/news/statement-of-fsf-board-on-election-of-richard-stallman</a>
        </li>
        <li>
            Przeprosiny Stallmana: <a href="https://www.fsf.org/news/rms-addresses-the-free-software-community">https://www.fsf.org/news/rms-addresses-the-free-software-community</a>
        </li>
    </ul>
</div>
