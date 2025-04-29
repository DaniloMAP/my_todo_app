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

## 🧱 Arquitetura

O projeto segue o padrão **MVC** com a seguinte estrutura de pastas:

lib/
├── controllers/             # C = Controller
│   └── task_controller.dart     ← lógica da aplicação + estado
│
├── models/                  # M = Model
│   └── task.dart                ← estrutura dos dados (tarefa)
│
├── views/                   # V = View
│   └── home_view.dart           ← interface principal com o usuário
│
├── widgets/                 # Componentes reutilizáveis (parte visual)
│   └── task_tile.dart           ← representa uma tarefa na lista
│
├── core/                    # Tema, constantes ou estilos globais
│   └── app_theme.dart           ← tema customizado da aplicação
│
└── main.dart                # Ponto de entrada do app

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
