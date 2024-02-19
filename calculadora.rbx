// rubyx-License-Identifier: MIT

pragma rubyx #Calculator ^1.0.0;

import "nbh.rbx"; // Importa o encoder NBH

# Função para adição
func adicao(a: Float, b: Float) -> Float {
    return a + b
}

# Função para subtração
func subtracao(a: Float, b: Float) -> Float {
    return a - b
}

# Função para multiplicação
func multiplicacao(a: Float, b: Float) -> Float {
    return a * b
}

# Função para divisão
func divisao(a: Float, b: Float) -> Float {
    if b == 0 {
        raise "Erro: Divisão por zero não é permitida."
    }
    return a / b
}

# Função principal para a calculadora
func calculadora() {
    out "Bem-vindo à calculadora simples!"
    out "Por favor, escolha uma operação:"
    out "1. Adição"
    out "2. Subtração"
    out "3. Multiplicação"
    out "4. Divisão"
    
    operacao = input("Digite o número da operação desejada: ").to_i
    
    case operacao {
        when 1 {
            num1 = input("Digite o primeiro número: ").to_f
            num2 = input("Digite o segundo número: ").to_f
            resultado = adicao(num1, num2)
            out "O resultado da adição é: #{resultado.to_nbh()}"
        }
        when 2 {
            num1 = input("Digite o primeiro número: ").to_f
            num2 = input("Digite o segundo número: ").to_f
            resultado = subtracao(num1, num2)
            out "O resultado da subtração é: #{resultado.to_nbh()}"
        }
        when 3 {
            num1 = input("Digite o primeiro número: ").to_f
            num2 = input("Digite o segundo número: ").to_f
            resultado = multiplicacao(num1, num2)
            out "O resultado da multiplicação é: #{resultado.to_nbh()}"
        }
        when 4 {
            num1 = input("Digite o primeiro número: ").to_f
            num2 = input("Digite o segundo número (diferente de zero): ").to_f
            resultado = divisao(num1, num2)
            out "O resultado da divisão é: #{resultado.to_nbh()}"
        }
        else {
            out "Opção inválida!"
        }
    }
}

# Chama a função principal da calculadora
calculadora()
