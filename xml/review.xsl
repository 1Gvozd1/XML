<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/reviews">
        <html>
            <head>              
                <title> Список отзывов </title>
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
                <h1>Список отзывов</h1>
                <table border="0">
                    <tr>
                        <th>ID отзыва</th>
                        <th>ФИО клиента</th>
                        <th>Оценка</th>
                        <th>Текст отзыва</th>
                        <th>Субъект отзыва</th>
                    </tr>

                    <xsl:for-each select = "review">
                        <tr>
                            <td><xsl:value-of select = "review_id/@id"/></td>
                            <xsl:for-each select="client_fullname">
                                <td>
                                    <xsl:value-of select = "surname"/><xsl:text> </xsl:text>
                                    <xsl:value-of select = "name"/><xsl:text> </xsl:text>
                                    <xsl:value-of select = "patronymic"/> 
                                </td>
                            </xsl:for-each>                            
                            <td><xsl:value-of select = "assessment"/></td>
                            <td><xsl:value-of select = "review_text"/></td>
                            <td><xsl:value-of select = "review_subject"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 
