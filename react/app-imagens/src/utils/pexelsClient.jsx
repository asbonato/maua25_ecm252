import axios from 'axios'

const PEXELS_KEY = import.meta.env.VITE_PEXELS_KEY

const axiosClient = axios.create({
    baseURL: 'https://api.pexels.com/v1/',
    headers: {
        Authorization: PEXELS_KEY
    }
})

export default axiosClient