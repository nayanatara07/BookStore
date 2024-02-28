<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Bookstore Inventory</title>
        <style>
          /* CSS Styles */
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
          }
          tr:hover {
            background-color: #f5f5f5;
          }
          th {
            background-color: #4CAF50;
            color: white;
          }
        </style>
      </head>
      <body>
        <h2>Bookstore Inventory</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Title</th>
            <th>Genre</th>
            <th>Author</th>
            <th>ISBN</th>
            <th>Cost</th>
            <th>Edition</th>
            <th>Publisher</th>
          </tr>
          <xsl:for-each select="Bookstore/Book">
            <tr>
              <td><xsl:value-of select="Title"/></td>
              <td><xsl:value-of select="Genre"/></td>
              <td><xsl:value-of select="Author"/></td>
              <td><xsl:value-of select="ISBN"/></td>
              <td><xsl:value-of select="Cost"/></td>
              <td><xsl:value-of select="Edition"/></td>
              <td><xsl:value-of select="Publisher"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
