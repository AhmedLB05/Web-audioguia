#!/bin/bash
echo "Descargando Flutter 3.35.4..."
git clone https://github.com/flutter/flutter.git -b 3.35.4
export PATH="$PATH:`pwd`/flutter/bin"

echo "Generando archivo .env desde variables de entorno..."
cat <<EOF > .env
SUPABASE_URL=$SUPABASE_URL
SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY
API_BASE_URL=$API_BASE_URL
API_ADMIN_USER=$API_ADMIN_USER
API_ADMIN_PASS=$API_ADMIN_PASS
EOF

echo "Compilando aplicación Web..."
flutter build web --release
