
<%
//HttpSession session = request.getSession(false);

if (session == null || session.getAttribute("userName") == null) {
	response.sendRedirect(request.getContextPath() + "/login-selection.jsp");
}
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Booking History</title>
      <link rel="stylesheet" href="css/booking-history.css"/>
      <link rel="stylesheet" href="css/booking-history-table.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
      <link rel='stylesheet' href='https://cdn.datatables.net/1.13.5/css/dataTables.bootstrap5.min.css'>
<!--       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400;500;600;700;800&family=Josefin+Slab:ital,wght@0,400;0,600;1,300;1,400;1,600&family=Muli:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap"/>
   </head>
   <body>
      <nav>
         <div class="logo">Parcel Management Company Website</div>
         <ul>
            <li><a class="service-text">Welcome ${userName }</a></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li>a<a href="LogoutHandler" class="button-link">Logout</a></li>
         </ul>
      </nav>
      <div class="header">
         <div class="img-wrapper">
            <img src="images/bg.jpg" />
         </div>
         <div class="bannerem">
            <h1>Booking&nbsp;History</h1>
            </div>
         <div class = "bannern">
            <main class="cd__main">
               <table id="example" class="table table-striped" style="width: 100%">
              <thead>
                  <tr>
                      <th>Customer ID</th>
                      <th>Booking ID</th>
                      <th>Booking Date</th>
                      <th>Receiver Name</th>
                      <th>Deleivered Address</th>
                      <th>Amount</th>
                      <th>Status</th>
                  </tr>
              </thead>
              <tbody>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Mrakie Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
                  <tr>
                      <td>1</td>
                      <td>76463</td>
                      <td>4/13/2024</td>
                      <td>Helsa Markie</td>
                      <td>Room 382</td>
                      <td>885</td>
                      <td>In-Transit</td>
                  </tr>
              </tbody>
          </table>
            </main>
         </div>
         </div>
      </div>
    <script src='https://code.jquery.com/jquery-3.7.0.js'></script>
    <script src='https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js'></script>
    <script src='https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js'></script>
    <script src='https://cdn.datatables.net/1.13.5/js/dataTables.bootstrap5.min.js'></script>
    <script src="./js/booking-history-tablescript.js"></script>
   </body>
</html>