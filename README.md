# 🚀 Smart Up Arrow

**Smart Up Arrow** is a lightweight shell enhancement that makes your ↑ and ↓ arrow keys smarter across Bash, Zsh, and PowerShell.

When you type a prefix like `ssh` and press the Up Arrow key, it cycles through previous commands that started with `ssh` — just like smart history search in modern shells.

---

## ✨ Features

- 🔍 Prefix-based command history search with ↑ / ↓
- 💨 Super lightweight — no background daemons or performance hit
- ⚙️ Works in:
  - ✅ **Bash** (via `.inputrc`)
  - ✅ **Zsh** (via `bindkey`)
  - ✅ **Windows PowerShell** (via `PSReadLine` key handler)

---

## 📦 Installation

You can install this on:

- **🧑‍💻 Linux (Bash/Zsh) via .deb package**
- **🪟 Windows PowerShell via script**

---

## 🐧 Linux (Bash/Zsh)

### 1. Clone the repo and build

```bash
git clone https://github.com/user-pratik/smart-up-arrow.git
cd smart-up-arrow
./build.sh
```

### 2. Install the `.deb` package

```bash
sudo dpkg -i ../smart-up-arrow_1.1_all.deb
```

### 3. Activate

```bash
smart-up-arrow-install
```

### 4. Restart your terminal (or run `source ~/.zshrc` or `source ~/.bashrc`)

---

## ❌ Uninstall on Linux

```bash
sudo apt remove smart-up-arrow
```

This automatically:
- Removes history keybindings
- Cleans up `.inputrc` or `.zshrc`
- Deletes related files

---

## 🪟 Windows PowerShell

### ✅ Install

```powershell
git clone https://github.com/user-pratik/smart-up-arrow.git
cd smart-up-arrow\windows
.\install.ps1
```

This will:
- Bind ↑ and ↓ to `HistorySearchBackward` / `Forward`
- Auto-load SmartUpArrow on every PowerShell start via `$PROFILE`

### ❌ Uninstall

```powershell
cd smart-up-arrow\windows
.\uninstall.ps1
```

This will:
- Remove the script reference from your PowerShell profile

---

## 💻 Directory Structure

```
smart-up-arrow/
├── build.sh
├── README.md
├── smart-up-arrow/
│   ├── DEBIAN/
│   │   ├── control
│   │   └── postrm
│   ├── etc/
│   │   └── smart-up-arrow/
│   │       ├── .inputrc
│   │       └── zsh_bindings.zsh
│   ├── usr/
│   │   └── local/
│   │       └── bin/
│   │           └── smart-up-arrow-install
│   └── uninstall.sh
├── windows/
│   ├── SmartUpArrow.ps1
│   ├── install.ps1
│   └── uninstall.ps1
```

---

## ❤️ Author

Made by [Pratik Anand](https://github.com/user-pratik)

---

