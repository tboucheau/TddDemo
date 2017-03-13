#Tuto Grafikart sur RSPEC

RSpec est une gem qui permet d'effectuer des tests unitaires en rails. La syntaxe est relativement naturelle et permet de créer des tests simplement.

La mise en place se fait par la gem `gem 'rspec-rails', '~> 3.5'` dans la partie test du Gemfile.
De même il est intéressant d'utiliser factory_girl_rails qui est une gem qui permet de créer des données conforment aux modèles qui seront utiliser dans les tests `gem 'factory_girl_rails'`. Pour plus de rapidité les tests seront fait en mémoire. Pour cela la base de données doit être configurée de la sorte :
<pre>
FICHIER DATABASE.YML :
```
test:
  <<: *default
  database: ":memory:"

```
</pre>

Enfin pour ne pas avoir de soucis dans la base de données en mémoire, il faut utiliser la gem `gem 'memory_test_fix'` qui permet d'effectuer les migrations à la volée.
