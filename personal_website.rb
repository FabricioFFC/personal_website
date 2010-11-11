require 'rubygems'
require 'sinatra'
require 'haml'

enable :inline_templates

get '/stylesheet.css' do
  content_type 'text/css'
  File.read 'stylesheet.css'
end

get '/' do
  haml :index
end

__END__

@@ layout
!!!
%html(lang='pt-BR')
  %head
    %meta(charset='utf-8')
    %title Sobre | Fabrício
    :javascript
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-5295321-5']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
  %body
    %link{:rel => "stylesheet", :href => "/stylesheet.css", :type => "text/css"}
    = yield

@@ index
#primaryContent
  #hello Olá.
  %br
  %strong Sou 
  Fabrício Ferrari de Campos
  %br
  %strong Moro
  Santo André - SP - Brasil
  %br
  %strong Trabalho
  %a{:href => "http://www.voicetechnology.com.br"}Voice Technology
  %br
  %strong Gosto
  %ul{:class => "noBullet"}
    %li -- Testar software
    %ul{:class => "noBullet"}
      %li --- Investigação
      %li --- Exploração
      %li --- Imaginar
  %ul{:class => "noBullet"}
    %li -- Desenvolver software
    %ul{:class => "noBullet"}
      %li --- Rails
      %li --- Criar
      %li --- Solucionar
  %ul{:class => "noBullet"}
    %li -- Ajudar as pessoas
    %ul{:class => "noBullet"}
      %li --- Blogar
      %li --- Comunidade
  %ul{:class => "noBullet"}
    %li -- Escutar
    %ul{:class => "noBullet"}
      %li --- Pessoas
      %li --- Histórias
      %li --- Rock'n' Roll
  %ul{:class => "noBullet"}
    %li -- Ler
    %ul{:class => "noBullet"}
      %li --- Aprender
      %li --- Refletir
      %li --- Viajar    
  %ul{:class => "noBullet"}
    %li -- Conversar
    %ul{:class => "noBullet"}
      %li --- Opinião
      %li --- Sincero
  %ul{:class => "noBullet"}
    %li -- etc ;)
#secondaryContent
  %strong +
  #links
    %br
    %a{:href => "mailto:ffc.fabricio@gmail.com", :target=>"blank", :title =>  "E-mail"}
      Contate-me
    %br
    %a{:href => "http://br.linkedin.com/in/fabricioferraridecampos", :target=>"blank", :title =>  "LinkedIn"}
      LinkedIn - Minhas experiências e perfil profissional
    %br
    %a{:href => "http://github.com/FabricioFFC", :target=>"blank", :title =>  "Github"}
      Projetos no github
    %br
    %a{:href => "http://twitter.com/FabricioFFC", :target=>"blank", :title =>  "Twitter"}
      Twitter
    %br
    %a{:href => "http://qualidadebr.wordpress.com", :target=>"blank", :title =>  "QualidadeBR"}
      QualidadeBR - meu blog focado em Teste e Qualidade de Software
    %br
    %a{:href => "http://www.testexpert.com.br/?q=blog/1886", :target=>"blank", :title =>  "TestExpert"}
      Coluna no TestExpert
    %br
    %a{:href => "http://www.slideshare.net/FabricioFFC", :target=>"blank", :title =>  "Slideshare"}
      Minhas apresentações no Slideshare
    %br
    %a{:href => "http://delicious.com/FabricioFFC", :target=>"blank", :title =>  "Delicious"}
      Bookmarks no Delicious
    %br
    %a{:href => "http://www.facebook.com/ffc.fabricio", :target=>"blank", :title =>  "Facebook"}
      Página do Facebook
    %br
    %a{:href => "http://www.google.com/profiles/ffc.fabricio", :target=>"blank", :title =>  "Google"}
      Perfil no Google
    %br
    %a{:href => "http://blog.fabricioferrari.com.br/", :target=>"blank", :title =>  "Tumblr"}
      Blog pessoal
    %br
    %a{:href => "http://www.lastfm.com.br/user/FabricioFFC", :target=>"blank", :title =>  "LastFM"}
      O que gosto de escutar
    %br
    %a{:href => "http://www.google.com/reader/shared/ffc.fabricio", :target=>"blank", :title =>  "Google Reader"}
      O que li na internet
    %br
    %a{:href => "http://moovee.me/user/FabricioFFC", :target=>"blank", :title =>  "Moovee"}
      Filmes que assisti
