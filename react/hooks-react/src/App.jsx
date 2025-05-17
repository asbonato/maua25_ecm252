import 'primereact/resources/primereact.min.css'
import 'primeicons/primeicons.css'
import 'primeflex/primeflex.css'
import 'primereact/resources/themes/bootstrap4-light-purple/theme.css'
import Accordion from './components/Accordion'

const App = () => {
  const itens = [
        {
            titulo: 'Java',
            conteudo: 'Linguagem compilada e interpretada'
        },
        {
            titulo: 'Python',
            conteudo: 'Linguagem interpretada e dinamicamente tipada'
        },
        {
            titulo: 'Javascript',
            conteudo: 'Interpretada. Executa do lado cliente e do lado servidor também.'
        }
    ]
    return(
      <div>
        <Accordion itens={itens} />
      </div>
    ) 
}
export default App