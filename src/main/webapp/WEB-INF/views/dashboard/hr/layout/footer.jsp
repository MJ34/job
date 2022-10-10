<!--   Core JS Files   -->
  <script src="${contextPath}/resources/static/assets/js/core/popper.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
  <script src="${contextPath}/resources/static/assets/js/core/bootstrap.min.js"></script>
  <script src="${contextPath}/resources/static/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="${contextPath}/resources/static/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="${contextPath}/resources/static/assets/js/plugins/chartjs.min.js"></script>
  <script src="${contextPath}/resources/static/assets/js/chart.js"></script>
   <script>
  $(document).ready(function () {
    $('#example').DataTable();
});
  </script>
  
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${contextPath}/resources/static/assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>