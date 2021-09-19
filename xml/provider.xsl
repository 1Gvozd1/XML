<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/providers">
        <html>
            <head>              
                <title> Список поставщиков </title>
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
                <h1>Список поставщиков</h1>
                <table>
                    <tr>
                        <th>ID поставщика</th>
                        <th>ФИО</th>
                        <th>Цена товара</th>
                        <th>Упаковка продукции</th>
                        <th>Опыт работы на рынке</th>
                        <th>Географическое расположение</th>
                        <th>Почта</th>
                        <th>Соблюдение графика поставок</th>
                        <th>Уровень затрат на доставку</th>
                    </tr>

                    <xsl:for-each select = "provider">
                        <tr>
                            <td><xsl:value-of select = "provider_id/@id"/></td>
                            <xsl:for-each select="fullname">
                                <td>
                                    <xsl:value-of select = "surname"/><xsl:text> </xsl:text>
                                    <xsl:value-of select = "name"/><xsl:text> </xsl:text>
                                    <xsl:value-of select = "patronymic"/> 
                                </td>
                            </xsl:for-each>                            
                            <td><xsl:value-of select = "product_price"/></td>
                            <td><xsl:value-of select = "product_packing"/></td>
                            <td><xsl:value-of select = "work_experience"/></td>
                            <td><xsl:value-of select = "location"/></td>
                            <td><xsl:value-of select = "email"/></td>
                            <td><xsl:value-of select = "graphics_сompliance"/></td>
                            <td><xsl:value-of select = "сost_level"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 
