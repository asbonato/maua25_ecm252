import 'bootstrap/dist/css/bootstrap.min.css'
import React from 'react'
import '@fortawesome/fontawesome-free/css/all.css'

class App extends React.Component{

  constructor(props){
    super(props)
    this.state = {
      latitude: null,
      longitude: null,
      estacao: null,
      data: null,
      icone: null
    }
  }

  obterEstacao = (data, latitude) => {
    const anoAtual = data.getFullYear()
    // 1/1 inverno no norte e verão no sul
    const d0 = new Date(anoAtual, 0, 1)
    // 21/03 primavera no norte e outono no sul
    const d1 = new Date(anoAtual, 2, 21)
    // 21/06 verão no norte e inverno no sul
    const d2 = new Date(anoAtual, 5, 21)
    // 24/09 outono no norte e primavera no sul
    const d3 = new Date(anoAtual, 8, 24)
    // 22/12 inverno no norte e verão no sul
    const d4 = new Date(anoAtual, 11, 22)
    // 31/12 inverno no norte e verão no sul
    const d5 = new Date(anoAtual, 11, 31)
    const sul = latitude < 0

    if(data >= d0 && data < d1)
      return sul?'Verão':'Inverno'
    if(data >= d1 && data < d2)
      return sul?'Outono':'Primavera'
    if(data >= d2 && data < d3)
      return sul?'Inverno':'Verão'
    if(data>= d3 && data < d4)
      return sul?'Primavera':'Outono'
    if (data>= d4 && data < d5)
      return sul?'Verão':'Inverno'
  return 'Data inválida'
  }

  icones = {
    'Primavera': 'fa-seedling',
    'Verão': 'fa-umbrella-beach',
    'Outono': 'fa-tree',
    'Inverno': 'fa-snowman'
  }

  obterLocalizacao = () => {
    window.navigator.geolocation.getCurrentPosition(
      posicao => {
        let data = new Date()
        let estacao = this.obterEstacao(data, posicao.coords.latitude)
        let icone = this.icones[estacao]
        //console.log(estacao)
        //console.log(icone)
        this.setState({
          latitude: posicao.coords.latitude,
          longitude: posicao.coords.longitude,
          estacao: estacao,
          data: data.toLocaleTimeString(),
          icone: icone
        })
      }
    )
  }

  render(){
    return(
      //responsividade, margem acima
      <div className='container mt-2'>
        {/** uma linha, conteúdo centralizado, display é flex */}
        <div className='row justify-content-center'>
          {/** oito colunas das doze disponíveis serão usadas para telas médias em diante */}
          <div className='col-md-8'>
            {/** um cartão bootstrap */}
            <div className='card'>
              {/** o corpo do cartão */}
              <div className='card-body'>
                {/** centraliza verticalmente, margem abaixo */}
                <div className='d-flex align-items-center border rounded mb-2' style={{height:'6rem'}}>
                  {/** ícone obtido do estado do componente */}
                  <i className={`fas fa-5x ${this.state.icone}`}></i>
                  {/** largura 75%, margem na esquerda (start), fs aumenta a fonte */}
                  <p className='w-75 ms-3 text-center fs-1'>{this.state.estacao}</p>
                </div>
                <div>
                  <p className='text-center'>
                    {/** renderização condicional */}
                    {
                      this.state.latitude?
                      `Coordenadas: ${this.state.latitude}, ${this.state.longitude}. Data: ${this.state.data}`
                      :
                      'Clique no botão para saber a sua estação climática'
                    }
                  </p>
                  {/** botão azul, outline, 100% de largura e margem acima */}
                  <button onClick={this.obterLocalizacao}
                          className='btn btn-outline-primary w-100 mt-2'>
                    Qual a minha estação?        
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default App