<!--tag diretiva
page-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <style>
        .margin-top-20{
            margin-top: 20px;
        }
        body{
            
        }
        section{/*estava no body*/
            background:url('https://wallpapercave.com/wp/wHd48NC.jpg');
            background-size:100% 100%;
            background-attachment: fixed; 
            background-repeat:no-repeat;
            font-family: 'Open Sans', sans-serif;
            padding-bottom: 40px;
        }
        .auth h1{
            color:#fff!important;
            font-weight:300;
            font-family: 'Open Sans', sans-serif;
        }
        .auth h1 span{
            font-size:21px;
            display:block;
            padding-top: 20px;
            text-align: justify;
            text-indent: 2em;
        }
        .auth h1 span br{ /*arrumar a identação o segundo paragrafo*/
            text-indent: 2em;
        }
        .auth .auth-box legend{
            color:#fff;
            border:none;
            font-weight:300;
            font-size:24px;
        }
        .auth .auth-box{
            max-width:500px;
            margin:0 auto;
            border:1px solid rgba(0, 0, 0, 0.1);
            background: rgba(3, 3, 3, 0.5);
            margin-top:40px;
            -webkit-box-shadow: 0px 0px 30px 0px rgba(50, 50, 50, 0.32);
            -moz-box-shadow:    0px 0px 30px 0px rgba(50, 50, 50, 0.32);
            box-shadow:         0px 0px 30px 0px rgba(50, 50, 50, 0.32);
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
        }
        @media(max-width:460px){
            .auth .auth-box{
                margin:0 10px;
            }
        }

        .auth .auth-box input::-webkit-input-placeholder { /* WebKit browsers */
            color:    rgb(189, 183, 148);
            font-weight:300;
        }
        .auth .auth-box input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color:    rgb(189, 183, 148);
            font-weight:300;
        }
        .auth .auth-box input::-moz-placeholder { /* Mozilla Firefox 19+ */
            color:    rgb(189, 183, 148);
            font-weight:300;
        }
        .auth .auth-box input:-ms-input-placeholder { /* Internet Explorer 10+ */
            color:    rgb(189, 183, 148);
            font-weight:300;
        }
        .auth form{
            font-weight:300!important;
            color: #fff;
        }

        .auth form input[type="number"]{
            border:none;
            padding:10px 0 10px 0;
            background-color: rgba(255, 255, 255, 0)!important;
            background: rgba(255, 255, 255, 0);
            color:#fff;
            font-size:16px;
            border-bottom:1px dotted #fff;
            border-radius:0;
            box-shadow:none!important;
            height:auto;
        }
        .auth form label{
            color:#fff;
            font-size:21px;
            font-weight:300;
        }

        .auth form .help-block{
            color:#fff;
        }

        .auth form select{
            background-color: rgba(255, 255, 255, 0)!important;
            background: rgba(255, 255, 255, 0);
            color:#fff!important;
            border-bottom:1px solid #fff!important;
            border-radius:0;
            box-shadow:none;
        }

        .auth form select option{
            color:#000;
        }

        /*Form buttons*/ /*muda a cor dos button */
        .auth form .btn{
            background:none;
            -webkit-transition: background 0.2s ease-in-out;
            -moz-transition: background 0.2s ease-in-out;
            -ms-transition: background 0.2s ease-in-out;
            -o-transition: background 0.2s ease-in-out;
            transition: background 0.2s ease-in-out;
        }
        .auth form .btn-success:hover, .btn-success{
            background:rgba(148, 72, 72, 0.5);
        }
        .auth form .btn-danger:hover{
            background:rgba(5, 5, 5, 0.5);
        }

        .panel-default{
            margin-left: 10%;
            margin-right: 10%;
        }

    </style>
  </head>
  <body>
    <section>
    <div class="container auth">
    <h1 class="text-center">Calculadora de IMC <span>IMC(Índice de Massa Corporal) serve para avaliar o peso do indivíduo com base na relação entre a massa corporal e a sua altura. Portanto, estar no peso ideal é importante para a saúde, pois diminui os riscos de doenças como desnutrição, AVC e infarto.<br>Lembrando, que essa tabela não é válida para crianças, pois, o IMC infantil possui uma tabela específica que deve ser verificada ao longo do tempo. Isso porque as crianças têm tendência a emagrecer conforme vão crescendo.</span> </h1>
    <div id="big-form" class="well auth-box">
      <form>
        <fieldset>

          <!-- Form Name -->
          <legend>Calculo IMC</legend>

          <!-- Button (Double) -->
          <div class="form-group">
            <label class=" control-label" >Sexo</label>
            <div class="radio-button"> 
                <!--ARRUMAR A OBRIGATORIEDADE-->
              <input id="h" name="sexo" class="btn btn-success" type="radio" value="H" >Homem
              <input id="m" name="sexo" class="btn btn-danger" type="radio" value="M">Mulher
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class=" control-label">Idade</label>  
            <div class="">
              <input class="form-control input-md" type="number" name="idade" placeholder="35" required="required" autocomplete="off">
              <span class="help-block">anos</span>  
            </div>
          </div>

          <!-- text input-->
          <div class="form-group">
            <label class=" control-label">Altura</label>
            <div class="">
              <input class="form-control input-md" type="number" name="altura" placeholder="1,60" pattern="[0-9]" min="0" step="any" required="required" autocomplete="off">
              <span class="help-block">m</span>
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class=" control-label">Peso</label>
            <div class="">
              <input class="form-control input-md" type="number" name="peso" placeholder="62,5" pattern="[0-9]" min="0" step="any" required="required" autocomplete="off">
              <span class="help-block">kg</span>
            </div>
          </div>

          <!-- Select Basic -->
          <div class="form-group">
            <label class=" control-label" for="selectbasic">Atividade Física</label>
            <div class="">
              <select id="selectbasic" name="selectbasic" class="form-control">
                <option value="1">Sedentário</option>
                <option value="2">Moderado</option>
                <option value="3">Intenso</option>
              </select>
            </div>
          </div>

        <div class="col-sm-offset-4 col-sm-5">
            <button type="submit" class="btn btn-success" id="calcular">Calcular</button>
        </div>
    </section>
          
    <!-- Scriptlet. Código Java no HTML. -->
    
    <%  String age = request.getParameter("idade");
        String sex = request.getParameter("sexo");
        String height = request.getParameter("altura");
        String weight = request.getParameter("peso");
        String fatorAtiv = request.getParameter("selectbasic");

        if (age != null) {
            int idade = Integer.parseInt(age);
            float altura = Float.parseFloat(height);
            float peso = Float.parseFloat(weight);
            double fA = Double.parseDouble(fatorAtiv);
            double imc;
            double idealMin, idealMax;
            double cal;
            double necesDiaria;

            imc = peso/(Math.pow(altura, 2));
            //Calculando o peso minimo
            idealMin = 18.5 * Math.pow(altura,2);
            //Calculando o peso máximo
            idealMax =  25 * Math.pow(altura,2);

            //Calculo para descobrir a taxa de metabolismo basal(TMB)
            if (idade >= 19 && idade <= 29 && sex == "M"){
                cal = (14.7 * peso) + 496;
            }else if (idade >=30 && idade <= 59 && sex=="M"){
                cal = (8.7 * peso) + 829;
            }else if (idade >= 60 && sex=="M"){
                cal = (10.5 * peso) + 596;
            }else  if (idade >= 19 && idade <= 29 && sex == "H"){
                cal = (15.3 * peso) + 679;
            }else if (idade >=30 && idade <= 59 && sex=="H"){
                cal = (8.7 * peso) + 879;
            }else if (idade >= 60 && sex=="H"){
                cal = (13.5 * peso) + 487;
            }else {
                cal = 1.0;
            }

            /*
            Comparação para descobrir o fator de atividade de uma pessoa (FA)
            *FatorAtiv = 1: É referente a uma pessoa Sedentária
            *FatorAtiv = 2: É referente a uma pessoa que pratica exercicios de forma Moderada
            *FatorAtiv = 3: É referente a uma pessoa que pratica exercicios de forma integrais
            */
            if (fA == 1){
                fA = 1.3;                
            }else if(fA == 2){
                fA = 1.50;
            }else if(fA == 3){
                fA = 1.7;
            }

            //Calculando a necessidade diaria da pessoa
            necesDiaria = cal * fA;

    %>       

            <section id="resultado">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Resultado</div>
                        <div class="panel-body">
                        <table class="table table-borderless">
    <%                      if (idade < 19){                       %>
                                    <!--Arrumar a posição disso--><p>A calculadora acima não pode ser usada para cálculo de peso ideal de crianças e adolescentes (até 19 anos). Isso porque o ganho de massa de uma criança segue um padrão completamente diferente de um adulto.<br>Procure o acompanhamento de um médico pediatra ou hebiatra se você detectar problemas de peso com seu filho. <b>Nunca</b> inicie um regime ou introduza suplementos alimentares e vitaminas sem antes consultar um médiCo.</p>
    <%                      }else if (imc < 16){                   %>
                                <span>Seu IMC é de <%out.println(imc+" kg/m");%>Magreza grave</span><br><br>
                                <p>De acordo com a sua altura e idade, o seu peso deveria ser no mínimo <%out.println(idealMin);%> kg. Assim, para ganhar peso de forma saudável e sem ganhar barriga, você deve começar a praticar atividade física, aumentar o volume das refeições e comer a cada 3 horas. Para isso, você deve ingerir cerca de <%out.println(necesDiaria);%> kcal por dia e aumentar o consumo de alimentos integrais e fontes de proteína, como carnes magras, peixes, ovos, arroz integral, feijão e aveia.</p>
    <%                      }else if (imc >= 16 && imc < 17){      %>
                                <span>Seu IMC é de <%out.println(imc+" kg/m");%>Magreza moderada</span>
                                <p>De acordo com a sua altura e idade, o seu peso deveria ser no mínimo <%out.println(idealMin);%> kg. Assim, para ganhar peso de forma saudável e sem ganhar barriga, você deve começar a praticar atividade física, aumentar o volume das refeições e comer a cada 3 horas. Para isso, você deve ingerir cerca de <%out.println(necesDiaria);%> kcal por dia e aumentar o consumo de alimentos integrais e fontes de proteína, como carnes magras, peixes, ovos, arroz integral, feijão e aveia.</p>
    <%                      }else if (imc >= 17 && imc < 18.5){    %>            
                                 <span>Seu IMC é de <%out.println(imc+" kg/m");%>Magreza leve</span>
                                 <p>De acordo com a sua altura e idade, o seu peso deveria ser no mínimo <%out.println(idealMin);%> kg. Assim, para ganhar peso de forma saudável e sem ganhar barriga, você deve começar a praticar atividade física, aumentar o volume das refeições e comer a cada 3 horas. Para isso, você deve ingerir cerca de <%out.println(necesDiaria);%> kcal por dia e aumentar o consumo de alimentos integrais e fontes de proteína, como carnes magras, peixes, ovos, arroz integral, feijão e aveia.</p>
    <%                      }else if (imc >= 18.5 && imc < 25){    %>
                                <span>Seu IMC é de <%out.println(imc+" kg/m");%>Saudável</span>
                                <p>De acordo com a sua altura e idade, o seu peso pode variar entre <%out.println(idealMin);%> kg a <%out.println(idealMax);%> kg, por isso continue tendo cuidado com a alimentação e comece a praticar atividade física regularmente para manter o peso e prevenir doenças.</p>
    <%                      }else if (imc >= 25 && imc < 30){      %>
                                <span>Seu IMC é de <%out.println(imc+" kg/m");%>Sobrepeso</span>
                                
    <%                      }else if (imc >= 30 && imc < 35){      %>
                                <span>Seu IMC é de <%out.println(imc+" kg/m");%>Obesidade Grau I</span>
    <%                      }else if (imc >= 35 && imc < 40){      %>
                                <span>Seu IMC é de <%out.println(imc+" kg/m");%>Obesidade Grau II (Severa)</span>
    <%                      }else if (imc > 40){                   %>
                                <span>Seu IMC é de <%out.println(imc+" kg/m");%>Obesidade Grau III (Mórbida)</span>
    <%                      }                                      %>
                        </div>
                                <thead>
                                  <tr>
                                    <th scope="col">IMC</th>
                                    <th scope="col">Classificação</th>
                                    <th scope="col">Possíveis Consequências</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <th scope="row" id="tabela"> < 16</th>
                                    <td>Magreza grave</td>
                                    <td>Insuficiência cardíaca, anemia grave, enfraquecimento do sistema imunológico</td>
                                  </tr>
                                  <tr>
                                    <th scope="row" id="tabela">16 a < 17</th>
                                    <td>Magreza moderada</td>
                                    <td>Infertilidade, queda de cabelo, falta da menstruação</td>
                                  </tr>
                                  <tr>
                                    <th scope="row" id="tabela">17 a < 18,5</th>
                                    <td>Magreza leve</td>
                                    <td>Estresse, ansiedade, fadiga</td>
                                  </tr>
                                  <tr>
                                    <th scope="row" id="tabela">18,5 < 25</th>
                                    <td>Saudável</td>
                                    <td>Menor risco para doenças</td>
                                  </tr>
                                  <tr>
                                    <th scope="row" id="tabela">25 a < 30</th>
                                    <td>Sobrepeso</td>
                                    <td>Fadiga, varizes, má circulação</td>
                                  </tr>
                                  <tr>
                                    <th scope="row" id="tabela">30 a < 35</th>
                                    <td>Obesidade Grau I</td>
                                    <td>Diabetes, infarto, angina, aterosclerose</td>
                                  </tr>
                                  <tr>
                                    <th scope="row" id="tabela">35 a < 40</th>
                                    <td>Obesidade Grau II (Severa)</td>
                                    <td>Apneia do sono, falta de ar</td>
                                  </tr>
                                  <tr>
                                    <th scope="row"id="tabela"> >40</th>
                                    <td>Obesidade Grau III (Mórbida)</td>
                                    <td>Refluxo, infarto, AVC, dificuldade de locomoção, escaras</td>
                                  </tr>
                                </tbody>
                              </table>
            </div>
    <%  }   %>
    </section>
    <script> 
        $('#calcular').click(function(){
            alert('DOM Carregado');
        });
    </script>
    
  </body>
</html>