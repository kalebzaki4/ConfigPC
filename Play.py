import os

restaurantes = ['Pizza', 'Sushi']

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

def BeautyPC():
    os.system('cls' if os.name == 'nt' else 'clear')
    exibir_subtitulo('Repositório dedicado a deixar seu pc mais bonito!') 
    print('Tamanho do repositório: 27.181kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        print('Iniciando download...')
        # Código de download aqui
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        BeautyPC()

def BoostPC():
    os.system('cls' if os.name == 'nt' else 'clear')
    exibir_subtitulo('Repositório dedicado a melhorar o desempenho do seu PC!') 
    print('Tamanho do repositório: 35.412kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        print('Iniciando download...')
        # Código de download aqui
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        BoostPC()

def Extra_AutoFarmPro():
    os.system('cls' if os.name == 'nt' else 'clear')
    exibir_subtitulo('Repositório dedicado a automações extras e AutoFarmPro!') 
    print('Tamanho do repositório: 45.327kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        print('Iniciando download...')
        # Código de download aqui
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        Extra_AutoFarmPro()

def FanControl():
    os.system('cls' if os.name == 'nt' else 'clear')
    exibir_subtitulo('Repositório dedicado ao controle de ventiladores do seu PC!') 
    print('Tamanho do repositório: 22.159kb ') 
    resposta = input('Quer baixar ele em sua máquina? s/n: ').strip().lower()
    if resposta == 's':
        print('Iniciando download...')
        # Código de download aqui
        voltar_ao_menu_principal()
    elif resposta == 'n':
        voltar_ao_menu_principal()
    else:
        print('Opção inválida!\n')
        FanControl()

def listar_restaurantes():
    exibir_subtitulo('Listando restaurantes')

    for restaurante in restaurantes:
        print(f'.{restaurante}')

    voltar_ao_menu_principal()

def escolher_opcao():
    try:
        opcao_escolhida = int(input('Escolha uma opção: '))

        if opcao_escolhida == 1: 
            BeautyPC()
        elif opcao_escolhida == 2: 
            BoostPC()
        elif opcao_escolhida == 3: 
            Extra_AutoFarmPro()
        elif opcao_escolhida == 4: 
            FanControl()
        elif opcao_escolhida == 6: 
            finalizar_app()
        else: 
            opcao_invalida()
    except:
        opcao_invalida()

def main():
    os.system('cls' if os.name == 'nt' else 'clear')
    exibir_nome_do_programa()
    mostrar_pra_que_serve()
    exibir_opcoes()
    escolher_opcao()

if __name__ == '__main__':
    main()
