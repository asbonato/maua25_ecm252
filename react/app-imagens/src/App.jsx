import React from "react"
import { Component } from "react";
import 'primereact/resources/primereact.min.css'
import 'primeicons/primeicons.css'
import 'primeflex/primeflex.css'
import 'primereact/resources/themes/bootstrap4-light-purple/theme.css'
import Busca from './components/Busca'
//import { createClient } from 'pexels'
import ListaImagens from "./components/ListaImagens";
import PexelsLogo from "./components/PexelsLogo";
import axiosClient from "./utils/pexelsClient"

export default class App extends Component {
  state = {pics: []}
  //pexelsClient = null
  // PEXELS_KEY = import.meta.env.VITE_PEXELS_KEY

  // onBuscaRealizada = (termo) => {
  //   this.pexelsClient.photos.search({
  //     query: termo
  //   })
  //   .then(pics => this.setState({pics: pics.photos}))
  // }

  // componentDidMount(){
  //   this.pexelsClient = createClient(this.PEXELS_KEY)
  // }

  onBuscaRealizada = (termo) => {
    axiosClient.get('/search', {
      params: {query: termo}
    })
    .then(result => {
      console.log(result)
      //data é um atributo definido pelos axios
      //o conteúdo da resposta vem associado a esta chave
      this.setState({pics:result.data.photos})
    })
  }



  render(){
    return(
      <div className='grid justify-content-center m-auto w-9 border-round border-1 border-400'>
        <div className="col-12">
          <PexelsLogo/>
        </div>
        <div className="col-12">
          <h1>Exibir uma lista de...</h1>
        </div>
        <div className="col-12">
          <Busca onBuscaRealizada={this.onBuscaRealizada}/>
        </div>
        <div className="col-12">
          <div className="grid">
            <ListaImagens
              imgStyle={'col-12 md:col-6 lg:col-4 xl:col-3'} 
              pics={this.state.pics}/>
          </div>
        </div>
      </div>
    )
  }
}