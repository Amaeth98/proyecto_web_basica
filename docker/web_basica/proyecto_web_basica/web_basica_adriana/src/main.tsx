import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import PokeApp from './PokeApp.tsx';
import 'bootstrap/dist/css/bootstrap.min.css';
import './pokeapi.css'


createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <PokeApp />
  </StrictMode>
);
