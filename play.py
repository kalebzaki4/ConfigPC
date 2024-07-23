import os
import sys
import requests
import shutil

def exibir_nome_do_programa():
    print("""
██████╗░███████╗██████╗░░█████╗░░██████╗██╗████████╗░█████╗░██████╗░██╗░█████╗░░██████╗
██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██║╚══██╔══╝██╔══██╗██╔══██╗██║██╔══██╗██╔════╝
██████╔╝█████╗░░██████╔╝██║░░██║╚█████╗░██║░░░██║░░░██║░░██║██████╔╝██║██║░░██║╚█████╗░
██╔══██╗██╔══╝░░██╔═══╝░██║░░██║░╚═══██╗██║░░░██║░░░██║░░██║██╔══██╗██║██║░░██║░╚═══██╗
██║░░██║███████╗██║░░░░░╚█████╔╝██████╔╝██║░░░██║░░░╚█████╔╝██║░░██║██║╚█████╔╝██████╔╝
╚═╝░░╚═╝╚══════╝╚═╝░░░░░░╚════╝░╚═════╝░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚═╝░╚════╝░╚═════╝░\n""")
    
def mostrar_pra_que_serve():
    print('Aqui, você pode baixar todos os meus repositórios do ConfigPC. Tenho 3 repositórios focados em otimizar o desempenho do seu PC. Selecione um dos repositórios numerados abaixo para iniciar o download. Caso queira saber mais sobre o que cada repositório faz, escolha a opção 5 para ver a descrição detalhada de cada um.\n')
    
def exibir_opcoes():
    print('1. BeautyPC')
    print('2. BoostPC')
    print('3. Extra/AutoFarmPro')
    print('4. FanControl')
    print('5. Descrição dos repositórios')
    print('6. Sair\n')

def finalizar_app():
    exibir_subtitulo('Finalizar app')
    print('Obrigado por usar o ConfigPC. Até logo!')
    os._exit(0)  # Fecha o terminal forçadamente

def voltar_ao_menu_principal():
    input('\nDigite uma tecla para voltar ao menu ')
    main()

def opcao_invalida():
    print('Opção inválida!\n')
    voltar_ao_menu_principal()

def exibir_subtitulo(texto):
    os.system('cls' if os.name == 'nt' else 'clear')
    print(texto)
    print()

def download_arquivo(url, nome_arquivo):
    try:
        # Fazendo a requisição GET para baixar o arquivo
        response = requests.get(url, stream=True)
        response.raise_for_status()  # Verifica se houve erro na requisição
        
        # Caminho onde o arquivo será salvo (pode ser ajustado conforme sua necessidade)
        caminho_arquivo = os.path.join(os.getcwd(), nome_arquivo)
        
        # Escrevendo o conteúdo do arquivo
        with open(caminho_arquivo, 'wb') as f:
            response.raw.decode_content = True
            shutil.copyfileobj(response.raw, f)
        
        print(f'Download de {nome_arquivo} concluído!')
    except requests.exceptions.RequestException as e:
        print(f'Erro durante o download: {e}')

def BeautyPC():
    exibir_subtitulo('Repositório dedicado a deixar seu pc mais bonito!') 
    print('Tamanho do repositório: 27.181kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        url_beautypc = 'https://github.com/kalebzaki4/ConfigPC/raw/main/BeautyPC.rar'
        download_arquivo(url_beautypc, 'BeautyPC.zip')  # Nome do arquivo e URL real devem ser ajustados
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        BeautyPC()

def BoostPC():
    exibir_subtitulo('Repositório dedicado a melhorar o desempenho do seu PC!') 
    print('Tamanho do repositório: 35.412kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        url_boostpc = 'https://github.com/kalebzaki4/ConfigPC/raw/main/Boost%20PC.rar'
        download_arquivo(url_boostpc, 'BoostPC.zip')  # Nome do arquivo e URL real devem ser ajustados
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        BoostPC()

def Extra_AutoFarmPro():
    exibir_subtitulo('Repositório dedicado a automações extras e AutoFarmPro!') 
    print('Tamanho do repositório: 45.327kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        url_extra = 'https://github.com/kalebzaki4/ConfigPC/raw/main/AutoFarmPro.rar'
        download_arquivo(url_extra, 'Extra_AutoFarmPro.zip')  # Nome do arquivo e URL real devem ser ajustados
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        Extra_AutoFarmPro()

def FanControl():
    exibir_subtitulo('Repositório dedicado ao controle de ventiladores do seu PC!') 
    print('Tamanho do repositório: 22.159kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        url_fancontrol = 'https://github.com/kalebzaki4/ConfigPC/raw/main/FanControl.rar'
        download_arquivo(url_fancontrol, 'FanControl.rar')  # Nome do arquivo e URL real devem ser ajustados
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        FanControl()

def descricao_repositorios():
    exibir_subtitulo('Descrição dos repositórios')

    print('1. BeautyPC')
    print('2. BoostPC')
    print('3. Extra/AutoFarmPro')
    print('4. FanControl')
    print('5. Voltar ao menu principal\n')

    opcao_descricao = input('Escolha um número para ver a descrição detalhada: ').strip()

    if opcao_descricao == '1':
        print("\nBeautyPC: Este repositório é focado em melhorar a aparência visual do seu PC. Ele inclui temas, ícones e outras personalizações visuais.\n")
    elif opcao_descricao == '2':
        print("\nBoostPC: Este repositório é focado em melhorar o desempenho do seu PC. Ele inclui scripts e ferramentas para otimizar a velocidade e a eficiência.\n")
    elif opcao_descricao == '3':
        print("\nExtra/AutoFarmPro: Este repositório inclui automações extras e o AutoFarmPro, uma ferramenta para automação de tarefas específicas.\n")
    elif opcao_descricao == '4':
        print("\nFanControl: Este repositório fornece ferramentas para controlar e otimizar a velocidade dos ventiladores do seu PC para melhor resfriamento e desempenho.\n")
    elif opcao_descricao == '5':
        voltar_ao_menu_principal()
        return
    else:
        print('Opção inválida!\n')
    
    voltar_ao_menu_principal()

def escolher_opcao():
    try:
        opcao_escolhida = int(input('Escolha um número: '))

        if opcao_escolhida == 1: 
            BeautyPC()
        elif opcao_escolhida == 2: 
            BoostPC()
        elif opcao_escolhida == 3: 
            Extra_AutoFarmPro()
        elif opcao_escolhida == 4: 
            FanControl()
        elif opcao_escolhida == 5: 
            descricao_repositorios()
        elif opcao_escolhida == 6: 
            finalizar_app()
        else: 
            opcao_invalida()
    except ValueError:
        opcao_invalida()

def main():
    os.system('cls' if os.name == 'nt' else 'clear')
    exibir_nome_do_programa()
    mostrar_pra_que_serve()
    exibir_opcoes()
    escolher_opcao()

if __name__ == '__main__':
    main()