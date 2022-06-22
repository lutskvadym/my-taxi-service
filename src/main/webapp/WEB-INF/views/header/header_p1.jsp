<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    * {box-sizing: border-box;}

    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      font-size: 14px;
    }

    .header {
      overflow: hidden;
      background-color: #f1f1f1;
      padding: 20px 10px;
    }

    .header a {
      float: left;
      color: black;
      text-align: center;
      padding: 14px;
      text-decoration: none;
      font-size: 16px;
      line-height: 22px;
      border-radius: 4px;
    }

    .header a.logo {
      font-size: 16px;
      font-weight: bold;
    }

    .header a:hover {
      background-color: #ddd;
      color: black;
    }

    .header a.active {
      background-color: dodgerblue;
      color: white;
    }

    .header-right {
      float: right;
    }

    @media screen and (max-width: 500px) {
      .header a {
        float: none;
        display: block;
        text-align: left;
      }

      .header-right {
        float: none;
      }
    }

    .table_strips {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 70%;
      text-align: center;
      margin: auto;
    }
    .table_strips th, td {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }
    .table_strips tr:nth-child(even) {
      background-color: GhostWhite;
    }
    .table_main {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 50%;
      text-align: center;
      margin: auto;
    }
    .table_main th, td {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }
    .driver_id {
      color: #3a5c93;
      text-align: right;
      padding: 8px;
    }
