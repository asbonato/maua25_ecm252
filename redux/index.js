const Redux = require('redux')

//essa função é criadora de um tipo de ação
const criarContrato = (nome, taxa) => {
    //esse JSON que ela devolve é uma ação
    return {
        type: "CRIAR_CONTRATO",
        dados: {
            nome, taxa
        }
    }
}

const cancelarContrato = (nome) => {
    return {
        type: "CANCELAR_CONTRATO",
        dados: {
            nome
        }
    }
}

const solicitarCashback = (nome, valor) => {
    return {
        type: "CASHBACK",
        dados: {
            nome, valor
        }
    }
}

/**
 * Esta função é um reducer;
 * quando chamada pela primeira vez, seu primeiro parâmetro
 * será undefined, já que não existirá histórico nenhum;
 * por isso, configuramos uma lista vazia com o seu valor
 * padrão.
 */
const historicoDePedidosDeCashback = (historicoDePedidosDeCashbackAtual = [], acao) => {
    //se a ação for CASHBACK, adicionamos o novo pedido à coleção existente
    if (acao.type === 'CASHBACK'){
        //uma cópia; contém todos os existentes + o novo
        //não faça push
        return [
            ...historicoDePedidosDeCashbackAtual, acao.dados
        ]
    }
    //caso contrário, apenas ignoramos e devolvemos a coleção inalterada
    return historicoDePedidosDeCashbackAtual
}

/**
 * reducer para a manipulação do caixa
 * o caixa começa zerado
 */

const caixa = (dinheiroEmCaixa = 0, acao) => {
    if(acao.type === 'CASHBACK'){
        dinheiroEmCaixa -= acao.dados.valor
    } else if (acao.type === 'CRIAR_CONTRATO'){
        dinheiroEmCaixa += acao.dados.taxa
    }
    return dinheiroEmCaixa
}

/**
 * Reducer para criação e cancelamento de contratos
 * lista começa vazia
 */
const contratos = (listaDeContratosAtual = [], acao) => {
    if(acao.type === 'CRIAR_CONTRATO'){
        return [...listaDeContratosAtual, acao.dados]
    }
    if(acao.type === 'CANCELAR_CONTRATO'){
        return listaDeContratosAtual.filter(c => c.nome !== acao.dados.nome)
    }
    return listaDeContratosAtual
}

const { createStore, combineReducers } = Redux

const todosOsReducers = combineReducers({
    historicoCashback: historicoDePedidosDeCashback,
    nossocaixa: caixa,
    osContratos: contratos
})

const store = createStore(todosOsReducers)

/** teste da aplicação */
console.log(store.getState())

const acaoContratoJose = criarContrato('José', 50)
store.dispatch(acaoContratoJose)
console.log(store.getState())

const acaoContratoMaria = criarContrato('Maria', 50)
store.dispatch(acaoContratoMaria)
console.log(store.getState())

const acaoCashbackMaria = solicitarCashback('Maria', 10)
store.dispatch(acaoCashbackMaria)
console.log(store.getState())

const acaoCashbackJose = solicitarCashback('José', 20)
store.dispatch(acaoCashbackJose)
console.log(store.getState())

const acaoCancelaContratoMaria = cancelarContrato('Maria')
store.dispatch(acaoCancelaContratoMaria)
console.log(store.getState())