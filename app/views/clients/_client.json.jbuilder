json.extract! client, :id, :nome, :cognome, :telefono, :indirizzo, :ore_da_pagare, :ore_pagate, :ore_totali, :ultima_fattura, :created_at, :updated_at
json.url client_url(client, format: :json)
