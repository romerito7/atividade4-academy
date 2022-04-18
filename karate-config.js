function setup() {
    
    var data = new Date();
    var mseg    = data.getMilliseconds();
    var hora    = data.getHours();
    var min     = data.getMinutes();
    var seg     = data.getSeconds();

    var config = {
        baseUrl: "https://crud-api-academy.herokuapp.com/api/v1/",
        usuarioPadrao: {"name": "Romerito","email": "romerito"+mseg+seg+min+hora+"@raro.com"},
        usuario100: {"name": "RomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomeritoRomerito","email": "romerito"+mseg+seg+min+hora+"@raro.com"},
        email60: {"name": "Romerito","email": "romeritoromeritoromeritoromeritoromeritoromeritoromeritoromeritoromeritoromeritoromeritoromeritoromerito"+mseg+seg+min+hora+"@raro.com"},


    }
   
    return config;
}
