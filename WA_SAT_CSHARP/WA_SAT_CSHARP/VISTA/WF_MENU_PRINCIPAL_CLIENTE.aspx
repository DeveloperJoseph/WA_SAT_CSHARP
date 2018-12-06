<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WF_MENU_PRINCIPAL_CLIENTE.aspx.cs" Inherits="WA_SAT_CSHARP.VISTA.WF_MENU_PRINCIPAL_CLIENTE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
    <canvas id="myChart">
            
    </canvas>
    <script>
        var ctx = document.getElementById("myChart");
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ["Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
                datasets: [{
                    label: '# of Votes',
                    data: [50, 60, 70, 80, 90, 100],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255,99,132,1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>
    </form>
</body>
</html>
