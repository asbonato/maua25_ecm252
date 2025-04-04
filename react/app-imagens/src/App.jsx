import React from "react"
import { Component } from "react";
import 'primereact/resources/primereact.min.css'
import 'primeicons/primeicons.css'
import 'primeflex/primeflex.css'
import 'primereact/resources/themes/bootstrap4-light-purple/theme.css'
import Busca from './components/Busca'

export default class App extends Component {

  onBuscaRealizada = (termo) => {
    console.log(termo)
  }

  render(){
    console.log(import.meta.env.VITE_PEXELS_KEY)
    return(
      <div className='grid justify-content-center m-auto w-9 border-round border-1 border-400'>
        <div className="col-12">
          <h1>Exibir uma lista de...</h1>
        </div>
        <div className="col-8">
          <Busca onBuscaRealizada={this.onBuscaRealizada}/>
        </div>
      </div>
    )
  }
}