link to sentry: https://sentry.io/organizations/petchatapp/issues/?project=6113604

link to heroku: https://petchatapp.herokuapp.com/


1) crear carpeta
2) abrir terminal en carpeta creada
3) En terminal:
    a) git clone https://github.com/cratulas/ProyectoFinaHito4.git
    b) cd ProyectoFinaHito4/
4) Comprobar entorno de desarrollo
5) Con RVM o algun gestor de versiones de rails seleccionar la version de ruby 2.7.3 y configurar gemset con rails 5.2.6
6) En terminal:
    a) bundle o bundle install
7) En terminal:
    a) EDITOR=nano rails credentials:edit
    b) configurar variables de entorno de la siguiente forma (ejemplo):
    
    facebook:
        facebook_client_id: ' '
        facebook_client_secret: ' '

    amazon:
        access_key_id: ' '
        secret_access_key: ' '

    google_smtp:
        smtp_email: ' '
        smtp_password: ' '

    paypal:
        paypal_login_email: ' '
        paypal_password: ' '
        paypal_signature: ' '

8) en terminal:
    a) rails db:create
    b) rails db:migrate
    c) rails db:seed

9) rails s