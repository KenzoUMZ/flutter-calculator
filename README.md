[![CI](https://github.com/KenzoUMZ/flutter-calculator/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/KenzoUMZ/flutter-calculator/actions/workflows/CI.yml)

# Flutter Calculator
Calculadora desenvolvida em flutter capaz de realizar operações de soma, subtração, divisão e multiplicação
## Requisitos necessários

## 1 - Android Studio
### I - Acesse: https://developer.android.com/studio#downloads
### II - Clique em "Download Android Studio"
![image](https://user-images.githubusercontent.com/49520709/174870740-19c084d2-8501-46be-9a66-08f0a4938d49.png)
### III - Aceite os termos  e clique no botão de download
![image](https://user-images.githubusercontent.com/49520709/174870923-a6035d58-aac9-4695-a1b5-80061f70c7ae.png)
### IV - Após baixado, execute o arquivo de instalação onde você deverá encontrar a seguinte tela: 
![image](https://user-images.githubusercontent.com/49520709/174871483-55b1ab12-b17a-4c4b-b7d1-c92f1a326a14.png)
clique em "Next" nas próximas etapas
### V - Crie um novo projeto
![image](https://user-images.githubusercontent.com/49520709/174872278-6149f9b3-9453-4e97-8c6d-7265b88c9b58.png)
![image](https://user-images.githubusercontent.com/49520709/174872431-473f3dab-b6f3-422a-832d-dab16d5f5557.png)
![image](https://user-images.githubusercontent.com/49520709/174872576-d23ea624-3eb7-4c6f-896d-f1b6bada940e.png)
clique em "Finish"
## 2 - Android Emulator
### I - Com o Android Studio ainda aberto, clique neste ícone
![image](https://user-images.githubusercontent.com/49520709/174873179-e7ee4149-e8d3-4798-ad38-97344ea6c01d.png)
### II - Clique em "Create Device" para criarmos um emulador
![image](https://user-images.githubusercontent.com/49520709/174873377-b2a8945c-4f6c-4beb-941d-5a3c30ac1679.png)
### III - Selecione um dispositivo de sua escolha e clique em "Next"
### IV - Escolha uma versão de Android, neste projeto é recomendado utilizar o Android R ou Android S.
![image](https://user-images.githubusercontent.com/49520709/174873998-dcf24293-2e1f-47e5-8461-422c595b1de0.png)
### Feito isso Clique em "Next" e depois em "Finish" 

## 2 - Visual Studio Code
### I - Faça o download do Visual Studio Code em: https://code.visualstudio.com/docs?dv=win
### II - Uma vez baixado, execute o arquivo ".exe"
obs: Por padrão o VSCode é instalado no diretório {C:\Users\{Username}\AppData\Local\Programs\Microsoft VS Code}

## 3 - Extensões do VS Code
### I - Abra o menu de extensões
![image](https://user-images.githubusercontent.com/49520709/174875596-b424f97f-1b8d-4264-af79-97fc2230b850.png)
### II - Pesquise por "Flutter" na caixa de pesquisa para instalar a extensão e clique em "Install"
![image](https://user-images.githubusercontent.com/49520709/174875789-4ad912e3-0669-4acf-abcb-c9df2dc7d26e.png)
obs: Por padrão a extensão "Dart" (necessária para execução dos projetos) é instalada de forma conjunta com a do "Flutter",
porém certifique-se de que a mesma foi de fato instalada.

## 4 - Flutter SDK
### I - Acesse https://docs.flutter.dev/get-started/install
### II - Escolha o sistema operacional desejado:
![image](https://user-images.githubusercontent.com/49520709/174877004-21bcb256-d254-4e33-a7ea-c66d4191fb8c.png)
### III - Role a página abaixo até encontrar o botão "Get Flutter SDK"
![image](https://user-images.githubusercontent.com/49520709/174877251-57cd90e7-b34c-4aeb-8868-0d195be1706d.png)
### IV - Tendo baixado o arquivo, copie-o para um diretório seguro para evitar a deleção acidental do SDK.
obs: Recomendamos que instale na pasta "User" do seu sistema operacional.
```bash
# Por exemplo
C:\Users\nome\flutter
```
### V - Descompacte a pasta no diretório escolhido.
### VI - Adicione a pasta flutter\bin no seu path
```bash
# Por exemplo
C:\Users\nome\flutter\bin
```
### VII - Verifique em seu terminal com flutter doctor
```bash
>flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 3.0.0, on Microsoft Windows [Version 10.0.19044.1766], locale en-US)
[√] Android toolchain - develop for Android devices (Android SDK version 32.1.0-rc1)
[√] Chrome - develop for the web
[√] Visual Studio - develop for Windows (Visual Studio Community 2022 17.2.0)
[√] Android Studio (version 2021.2)
[√] VS Code (version 1.68.1)
[√] Connected device (4 available)
[√] HTTP Host Availability

• No issues found!
```


## Como rodar
### 1. Clonar o repo
```bash
git clone https://github.com/KenzoUMZ/flutter-calculator
```

### 2. Instalar as dependências
```bash
flutter pub get
```

### 3. Rodar
```bash
flutter run
```

## Testes
### 1. Rodando os testes
```bash
flutter test
```

## Dependências

| **Dependencies** | **Version**  |
|------------------|--------------|
| Flutter SDK      | >=2.16.2 <3.0.0  |
| flutter_test     | built in lib |
|cupertino_icons   | ^1.0.2       |
| google_fonts     | ^2.3.2      |

## Autores

| **Nome**        |
|-----------------|
| [Rubens Cividati](https://github.com/cividati) |
| [Samuel Kenzo](https://github.com/KenzoUMZ)    |
