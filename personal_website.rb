require 'rubygems'
require 'sinatra'
require 'haml'

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
    %li -- Falar
    %ul{:class => "noBullet"}
      %li --- Opinião
      %li --- Sincero
  %ul{:class => "noBullet"}
    %li -- etc ;)
#secondaryContent
  %strong +
  %br
  %a{:href => "http://www.blogger.com/profile/05395578056067121611", :target=>"blank", :title =>  "Blogger"}
    %img{:src => "/images/blogger.png"}
  %br
  %a{:href => "http://delicious.com/FabricioFFC", :target=>"blank", :title =>  "Delicious"}
    %img{:src => "/images/delicious.png"}
  %br
  %a{:href => "http://www.facebook.com/ffc.fabricio", :target=>"blank", :title =>  "Facebook"}
    %img{:src => "/images/facebook.png"} 
  %br
  %a{:href => "mailto:ffc.fabricio@gmail.com", :target=>"blank", :title =>  "E-mail"}
    %img{:src => "/images/gmail.png"} 
  %br
  %a{:href => "http://www.google.com/profiles/ffc.fabricio", :target=>"blank", :title =>  "Perfil no Google"}
    %img{:src => "/images/google.png"}
  %br
  %a{:href => "http://www.lastfm.com.br/user/FabricioFFC", :target=>"blank", :title =>  "LastFM"}
    %img{:src => "/images/lastfm.png"}
  %br
  %a{:href => "http://br.linkedin.com/in/fabricioferraridecampos", :target=>"blank", :title =>  "LinkedIn"}
    %img{:src => "/images/linkedin.png"} 
  %br
  %a{:href => "http://blog.fabricioferrari.com.br/", :target=>"blank", :title =>  "Blog pessoal - Tumblr"}
    %img{:src => "/images/tumblr.png"} 
  %br
  %a{:href => "http://twitter.com/FabricioFFC", :target=>"blank", :title =>  "Twitter"}
    %img{:src => "/images/twitter.png"} 
  %br
  %a{:href => "http://qualidadebr.wordpress.com", :target=>"blank", :title =>  "QualidadeBR - blog sobre Teste e Qualidade de Software"}
    %img{:src => "/images/wordpress.png"}     
