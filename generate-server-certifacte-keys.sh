openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj '/O=example Inc./CN=formation.io' -keyout TP_Data/2_IstioInAction/2.1_Gateway/cert/formation.io.key -out TP_Data/2_IstioInAction/2.1_Gateway/cert/formation.io.crt

openssl req -out TP_Data/2_IstioInAction/2.1_Gateway/cert/webapp.formation.io.csr -newkey rsa:2048 -nodes -keyout TP_Data/2_IstioInAction/2.1_Gateway/cert/webapp.formation.io.key -subj "/CN=webapp.formation.io/O=formation organization"
openssl x509 -req -sha256 -days 365 -CA TP_Data/2_IstioInAction/2.1_Gateway/cert/formation.io.crt -CAkey TP_Data/2_IstioInAction/2.1_Gateway/cert/formation.io.key -set_serial 0 -in TP_Data/2_IstioInAction/2.1_Gateway/cert/webapp.formation.io.csr -out TP_Data/2_IstioInAction/2.1_Gateway/cert/webapp.formation.io.crt
