# ✅ ToDo App – Minha Lista de Tarefas

Aplicativo de lista de tarefas desenvolvido com Flutter, utilizando `Provider` para gerenciamento de estado e `SharedPreferences` para persistência local.

---

## 🧠 Funcionalidades

- ✅ Adicionar nova tarefa
- ✅ Listar todas as tarefas em uma única lista
- ✅ Marcar tarefa como concluída (via checkbox)
- ✅ Remover tarefa (via swipe)
- ✅ Modal para adicionar tarefa ao clicar no botão flutuante
- ✅ Persistência local utilizando `SharedPreferences`

---

## 🧱 Estrutura do Projeto

- **lib/**
  - **controllers/**
    - `task_controller.dart` — Lógica de negócio e gerenciamento de tarefas usando Provider.
  
  - **models/**
    - `task.dart` — Modelo que representa uma tarefa.
  
  - **views/**
    - `home_view.dart` — Tela principal da aplicação, onde as tarefas são listadas e manipuladas.
  
  - **widgets/**
    - `task_tile.dart` — Componente visual para exibir cada tarefa na lista.
  
  - **core/**
    - `app_theme.dart` — Configurações globais de tema e estilo da aplicação.
  
  - `main.dart` — Arquivo principal que inicializa o app e configura o Provider.

---

## 🧰 Tecnologias utilizadas

- **Flutter**
- **Dart**
- **Provider** – gerenciamento de estado
- **SharedPreferences** – persistência local de dados
- **MVC** – separação de responsabilidades

---

## 🎨 Estilo e experiência

- Interface limpa e objetiva
- Botão flutuante para adicionar tarefas
- Modal centralizado para entrada de dados
- Cores e tema personalizados com base em `ColorScheme.fromSeed`
- Responsivo e compatível com diferentes tamanhos de tela

---

## ▶️ Como executar este projeto Flutter

### 📋 Pré-requisitos

Antes de rodar o projeto, certifique-se de ter:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado
- Git instalado
- Um editor de código como VSCode ou Android Studio
- Emulador Android, navegador ou dispositivo conectado

---

### 🛠️ Passo a passo para rodar

1. **Clone o repositório:**
```
git clone https://github.com/DaniloMAP/my_todo_app.git
cd my_todo_app
```

2. **Instale as dependências:**
```
flutter pub get
```

3. **Execute o projeto:**
```
flutter run
```
