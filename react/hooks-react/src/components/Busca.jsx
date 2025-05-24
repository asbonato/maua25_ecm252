import { IconField } from 'primereact/iconfield'
import { InputIcon } from 'primereact/inputicon'
import { InputText } from 'primereact/inputtext'
import { useState, useEffect } from 'react'
import axios from 'axios'
import striptags from 'striptags'

const Busca = () => {
    const [termoDeBusca, setTermoDeBusca] = useState('')
    const [resultados, setResultados] = useState([])
    useEffect(() => {
        //definimos uma função
        const fazBusca = async () => {
            const { data } = await axios.get('https://en.wikipedia.org/w/api.php', {
                params: {
                    action: 'query',
                    list: 'search',
                    format: 'json',
                    // instruindo o navegador a aceitar conteúdo de qualquer origem
                    origin: '*',
                    srsearch: termoDeBusca
                }
            })
            setResultados(data.query.search)
        }
        //e chamamos a seguir
        if (termoDeBusca)
            fazBusca()
    }, [termoDeBusca])

    return(
        <div>
            <IconField iconPosition='left'>
                <InputIcon className='pi pi-search'></InputIcon>
                <InputText 
                    placeholder='Buscar...'
                    onChange={(e) => setTermoDeBusca(e.target.value)}
                    value={termoDeBusca}
                />
            </IconField>
            {
                resultados.map((resultado) => (
                    <div
                        key={resultado.pageid}
                        //margem e borda
                        className='my-2 border border-1 border-400'>
                        <div
                            //borda, padding e ajuste textual
                            className='border-bottom border border-1 border-400 p-2 text-center font-bold'>
                            {resultado.title}
                        </div>
                        {/* padding */}
                        <div className="p-2">
                            <p>{`https://en.wikipedia.org?curid=${resultado.pageid}`}</p>
                            <spam dangerouslySetInnerHTML={{__html: resultado.snippet}}></spam>
                        </div>
                    </div>
                ))
            }
        </div>
    )
}
export default Busca