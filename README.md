###INSTALLATION

````markdown
# 🧠 Ubuntu Jupyter + VS Code Auto Setup

This project provides a **one-command setup script** to automatically install and configure a complete Python development environment on **Ubuntu**, including **Jupyter Notebook**, **JupyterLab**, and full **VS Code integration**.

It handles:
- Python + pip + venv setup  
- Virtual environment creation  
- Installation of Jupyter, ipykernel, and key data science libraries  
- Kernel registration for VS Code  
- Optional VS Code + extensions installation  

---

## 🚀 Quick Start

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/<your-username>/<your-repo-name>.git
cd <your-repo-name>
````

### 2️⃣ Make the Script Executable

```bash
chmod +x setup_env.sh
```

### 3️⃣ Run the Installer

```bash
./setup_env.sh
```

This will:

* Update your Ubuntu packages
* Install Python 3, pip, and venv
* Create a virtual environment named `.venv`
* Install Jupyter, ipykernel, and common Python libraries
* Register the environment as a Jupyter kernel



## 🧩 Optional: Install VS Code & Extensions

If you want VS Code automatically installed with the Python and Jupyter extensions, add these lines to the end of `setup_env.sh` **(already supported in script)**:

```bash
sudo snap install code --classic
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
```

Or just run them manually after the setup.



## ✅ Verify Installation

After running the script:

1. Launch VS Code:

   ```bash
   code .
   ```
2. Open or create a Jupyter Notebook (`.ipynb` file)
3. In the top-right corner of VS Code, click **Select Kernel → .venv**
4. Run this code cell:

   ```python
   print("✅ Jupyter setup successful!")
   ```



## 🧠 Preinstalled Python Libraries

| Library        | Purpose              |
| -------------- | -------------------- |
| `numpy`        | Numerical computing  |
| `pandas`       | Data analysis        |
| `matplotlib`   | Data visualization   |
| `seaborn`      | Statistical plotting |
| `scikit-learn` | Machine learning     |


## 🛠️ Troubleshooting

If VS Code doesn’t detect your kernel:

```bash
source .venv/bin/activate
python -m ipykernel install --user --name=.venv
```

Then restart VS Code and select the `.venv` kernel again.


## 🧾 License

This project is released under the **MIT License**.
Feel free to fork, modify, and use it for your personal or team development setups.


## ✨ Author

**Mwebaza Tony**
📧 [mwebazaanthony2@gmail.com](mailto:mwebazaanthony2@gmail.com)
💻 IT Student & Systems Developer

---

> “Automate your environment. Don’t repeat manual setup twice.”
> — *Lyra Prime Philosophy*

```
