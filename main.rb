require 'sinatra'
require 'json'
require 'net/http'
 
post '/' do
 json = JSON.parse request.body.read
 mensaje = json["message"]
 usuario = mensaje["chat"]
 frases = [	"ksi ksi", 
 			"Comienza el plan J", 
 			"Yo voy, o no, o si, rayate, o no, no te rayes, si si, rayate", 
 			"lol",
 			"Yo me tiro la comida al pexo", 
 			"¿Te aguanto el cubata en el pecho?",
 			"No homo", 
 			"No homo, no homo, bueno... SI HOMO!!!!", 
 			"Se viene el chute de drojas pb", 
 			"/get Sasha Grey", 
 			"¿De que pais del Este eres Juapa? 😉 😉 ",
 			"Pene               Lope", 
 			"Zidane llegó al Madrid acabado", 
 			"McManaman era un jugador de LUJO", 
 			"Me he visto todos los resumenes de De Gea de Youtube",
 			"topor!!!!",
 			"Benzema hace jugar al Madrid",
 			"Pepe, el mejor central del mundo", 
 			"Puto Casillas", 
 			"Pichi vamonos de putas", 
 			"kick kick kick", 
 			"o.O", 
 			"Party Loca", 
 			"@Jorge_Bot >>>>>>>>>>>>>>>>> @mari_bot",
 			"Csssds", 
 			"Jider",
 			"Cojines",
 			"Como cae Benzema a banda 💓",
 			"Yaya",
 			"Xdddd", 
 			"Wtf",
 			"Facepalm",
 			"Cafeína taurina etc. Me veo en el gym to loco 👀 👀",
 			"Vaya partidas te has perdido vic Xdddddd", 
 			"Me peino y salgo, dadme 2 horas" ]


 fraseRandom =  URI.encode frases.sample
 
 uri = URI('https://api.telegram.org/bot{token}/sendMessage?chat_id=' + usuario["id"].to_s + '&text=' + fraseRandom.to_s)
 
 Net::HTTP.get(uri) # => String
end