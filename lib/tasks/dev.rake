# frozen_string_literal: true

namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      tasks = [
        { command: 'db:drop', start_msg: 'Apagando o banco de dados', end_msg: 'Banco de dados apagado com sucesso' },
        { command: 'db:create', start_msg: 'Criando o banco de dados', end_msg: 'Banco de dados criado com sucesso' },
        { command: 'db:migrate', start_msg: 'Migrando o banco de dados', end_msg: 'Tabelas migradas com sucesso' }
      ]

      tasks.each do |task|
        show_spinner(task[:start_msg], task[:end_msg]) { `rails #{task[:command]}` }
      end

      `rails dev:add_admins`
      `rails dev:add_categories`

    else
      puts 'Você não está no ambiente de desenvolvimento'
    end
  end

  desc 'Cadastra as Categorias'
  task add_categories: :environment do
    show_spinner('Cadastrando Categorias', 'Categorias Cadastradas com Sucesso') do
      categories = [
        { title: 'Back-end' },
        { title: 'Front-end' }
      ]

      categories.each { |category| Category.create(category) }
    end
  end

  desc 'Cadastra os usuários admin'
  task add_admins: :environment do
    show_spinner('', '') do
      DEFAULT_PASSWORD = 123_456

      users = [
        {
          full_name: 'Admin',
          username: 'admin',
          email: 'admin@admin.com.br',
          password: DEFAULT_PASSWORD,
          password_confirmation: DEFAULT_PASSWORD,
          admin: true
        }
      ]

      3.times do
        users.push(
          full_name: FFaker::Name.name,
          username: FFaker::Internet.user_name,
          email: FFaker::Internet.email,
          password: DEFAULT_PASSWORD,
          password_confirmation: DEFAULT_PASSWORD,
          admin: true
        )
      end

      users.each do |user|
        User.create!(user)
      end
    end
  end

  def show_spinner(start_msg, end_msg)
    spinner = TTY::Spinner.new("[:spinner] #{start_msg} ...")
    spinner.auto_spin

    if block_given?
      yield
      spinner.success("(#{end_msg})")
    else
      spinner.error('(ERRO: Não foi passado o bloco)')
    end
  end
end
