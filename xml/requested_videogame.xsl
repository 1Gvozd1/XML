<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/requested_videogames">
        <html>
            <head>              
                <title> Список запрошенных видеоигр </title>
                <style type="text/css">
                    table {
                        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
                        font-size: 14px;
                        border-radius: 10px;
                        border-spacing: 0;
                        text-align: center;
                        }
                        th {
                        background: #BCEBDD;
                        color: black;
                        padding: 10px 20px;
                        }
                        th, td {
                        border-style: solid;
                        border-width: 0 1px 1px 0;
                        border-color: white;
                        }
                        th:first-child, td:first-child {
                        text-align: center;
                        }
                        th:first-child {
                        border-top-left-radius: 10px;
                        }
                        th:last-child {
                        border-top-right-radius: 10px;
                        border-right: none;
                        }
                        td {
                        padding: 10px 20px;
                        background: #F8E391;
                        }
                        tr:last-child td:first-child {
                        border-radius: 0 0 0 10px;
                        }
                        tr:last-child td:last-child {
                        border-radius: 0 0 10px 0;
                        }
                        tr td:last-child {
                        border-right: none;
                        }
                    </style>
            </head> 
            <body>
                <h1>Список запрошенных видеоигр </h1>
                <table>
                    <tr>
                        <th>ID запрошенной игры</th>
                        <th>Дата запроса</th>
                        <th>Время запроса</th>
                        <th>Количество запрошенных копий</th>
                    </tr>

                    <xsl:for-each select = "requested_videogame">
                        <tr>
                            <td><xsl:value-of select = "requested_videogame_id/@id"/></td>
                            <td><xsl:value-of select = "request_date"/></td>
                            <td><xsl:value-of select = "request_time"/></td>
                            <td><xsl:value-of select = "quantity"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 
