#!/bin/bash
# Script para servir o site localmente

PORT=${1:-8000}

echo "🚀 Servindo site em http://localhost:$PORT"
echo "📁 Diretório: $(pwd)"
echo ""
echo "Pressione Ctrl+C para parar o servidor"
echo ""

# Tenta usar Python3 primeiro
if command -v python3 &> /dev/null; then
    python3 -m http.server $PORT
# Se não tiver Python3, tenta Node.js
elif command -v node &> /dev/null; then
    npx http-server -p $PORT -c-1
else
    echo "❌ Erro: Python3 ou Node.js não encontrado"
    exit 1
fi
