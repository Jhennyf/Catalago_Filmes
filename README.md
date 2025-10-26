# 🎬 Catálogo de Filmes

> Uma aplicação Rails moderna para catalogar e avaliar seus filmes favoritos

[![Deploy](https://img.shields.io/badge/deploy-render-46E3B7)](https://catalago-filmes-1.onrender.com)
[![Ruby](https://img.shields.io/badge/ruby-3.3.0-red)](https://www.ruby-lang.org/)
[![Rails](https://img.shields.io/badge/rails-8.0.3-red)](https://rubyonrails.org/)

## 🌐 Demo Online

🚀 **Aplicação em produção:** [https://catalago-filmes-1.onrender.com](https://catalago-filmes-1.onrender.com)

> ⚠️ **Nota:** Esta é uma instância **gratuita** hospedada na Render. Por ser um plano free, o servidor entra em modo de hibernação após períodos de inatividade. O **primeiro acesso pode demorar de 30 a 60 segundos** para inicializar. Após o carregamento inicial, a aplicação funcionará normalmente.

## 📋 Sobre o Projeto

O **Catálogo de Filmes** é uma plataforma web desenvolvida em Ruby on Rails que permite aos usuários descobrir, catalogar e comentar sobre filmes. Com uma interface moderna usando Tailwind CSS e componentes reutilizáveis, oferece uma experiência fluida e intuitiva.

## ✨ Funcionalidades

- 🎭 **Catálogo de Filmes** - Navegue por uma extensa coleção de filmes
- 🏷️ **Categorias** - Organize filmes por gêneros e categorias
- 💬 **Sistema de Comentários** - Compartilhe suas opiniões sobre os filmes
- 🔐 **Autenticação de Usuários** - Sistema completo com Devise
- 🎨 **Interface Moderna** - Design responsivo com Tailwind CSS
- 🎠 **Carrossel Interativo** - Navegação elegante pelos filmes em destaque
- 🖼️ **Galeria de Imagens** - Visualize pôsteres e imagens dos filmes
- 👤 **Perfil de Usuário** - Gerencie suas informações e preferências

## 🚀 Tecnologias Utilizadas

- **Ruby** 3.3.0
- **Rails** 8.0.3
- **PostgreSQL** - Banco de dados
- **Tailwind CSS** 4.x - Framework CSS
- **Devise** - Autenticação
- **ViewComponent** - Componentes reutilizáveis
- **Stimulus** - Framework JavaScript
- **Turbo** - Hotwire para SPA-like experience
- **Kaminari** - Paginação
- **Ransack** - Sistema de busca

## 📦 Gems Principais

```ruby
gem "devise"              # Autenticação
gem "view_component"      # Componentes
gem "tailwindcss-rails"   # CSS Framework
gem "kaminari"           # Paginação
gem "ransack"            # Busca avançada
gem "pg"                 # PostgreSQL
gem "puma"               # Servidor web
```

## 🛠️ Instalação

### Pré-requisitos

- Ruby 3.3.0
- Rails 8.0.3
- PostgreSQL
- Node.js

### Passos

1. **Clone o repositório**
```bash
git clone https://github.com/Jhennyf/Catalago_Filmes.git
cd Catalago_Filmes
```

2. **Instale as dependências**
```bash
bundle install
```

3. **Configure o banco de dados**
```bash
rails db:create
rails db:migrate
rails db:seed
```

4. **Configure as credenciais**
```bash
EDITOR="code --wait" rails credentials:edit
```

5. **Inicie o servidor**
```bash
bin/dev
```

6. **Acesse a aplicação**
```
http://localhost:3000
```

## 🔧 Configuração de Ambiente

Crie um arquivo `.env` na raiz do projeto:

```env
DATABASE_URL=postgresql://user:password@localhost/catalog_film_production
RAILS_ENV=production
SECRET_KEY_BASE=sua_secret_key_aqui
RAILS_MASTER_KEY=sua_master_key_aqui
```

## 📂 Estrutura do Projeto

```
app/
├── components/          # ViewComponents reutilizáveis
│   ├── button_component.rb
│   ├── menu_component.rb
│   ├── movie_banner_component.rb
│   └── movie_carousel_component.rb
├── controllers/         # Controladores da aplicação
├── models/             # Modelos (User, Movie, Category, Comment)
├── views/              # Views e templates
└── javascript/         # Stimulus controllers
```

## 🎨 Componentes

### 🔘 Button Component
Botões reutilizáveis com variações de estilo

### 📋 Menu Component
Menu de navegação responsivo com dropdown

### 🎬 Movie Banner Component
Banner destacado para filmes em destaque

### 🎠 Movie Carousel Component
Carrossel interativo de filmes com Stimulus

## 🗄️ Modelos

- **User** - Usuários autenticados (Devise)
- **Movie** - Filmes do catálogo
- **Category** - Categorias/Gêneros
- **Comment** - Comentários dos usuários

## 🚀 Deploy

### Render.com

**🌐 Aplicação em produção:** [https://catalago-filmes-1.onrender.com](https://catalago-filmes-1.onrender.com)

> **💡 Dica:** A instância free da Render hiberna após inatividade. O primeiro acesso pode levar até 1 minuto para carregar.

#### Configuração:

1. Configure as variáveis de ambiente:
   - `RAILS_ENV=production`
   - `SECRET_KEY_BASE`
   - `RAILS_MASTER_KEY`
   - `DATABASE_URL` (fornecido automaticamente pelo PostgreSQL da Render)

2. Build Command:
```bash
bundle install && bundle exec rake assets:precompile && bundle exec rake db:migrate
```

3. Start Command:
```bash
bundle exec rails server -b 0.0.0.0 -p $PORT
```

## 🧪 Testes

```bash
# Rodar todos os testes
rails test

# Testes específicos
rails test test/models
rails test test/controllers
```

## 👥 Contribuindo

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 👨‍💻 Autores

- **Jhennyf** - *Desenvolvimento* - [@Jhennyf](https://github.com/Jhennyf)

## 🙏 Agradecimentos

- Comunidade Rails
- Tailwind CSS
- Todos os contribuidores

## 📧 Contato

- Email: jhennyfestudos2021@gmail.com
- GitHub: [@Jhennyf](https://github.com/Jhennyf)
- Link do Projeto: [https://github.com/Jhennyf/Catalago_Filmes](https://github.com/Jhennyf/Catalago_Filmes)
- Deploy: [https://catalago-filmes-1.onrender.com](https://catalago-filmes-1.onrender.com)

---

⭐ Feito com ❤️ e Ruby on Rails