
 <footer class="footer has-cards">
    <div class="container">
      <hr>
      <div class="row align-items-center justify-content-md-between">
        <div class="col-md-6">
          <div class="copyright">           
            &copy; Copyright <strong><span> kt corp</span></strong>. All Rights Reserved
          </div>
        </div>
        <div class="col-md-6">
          <ul class="nav nav-footer justify-content-end">
            <li class="nav-item">
              <a href="" class="nav-link"  href="https://www.kt.com" target="_blank">About Us</a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link"  href="https://blog.kt.com/" arget="_blank">Blog</a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link" target="_blank">License go</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  
  <!--  -->
  </div>
  <!--   Core JS Files   -->
  <script src="${imgUri}/assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="${imgUri}/assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="${imgUri}/assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <script src="${imgUri}/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="${imgUri}/assets/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="${imgUri}/assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <script src="${imgUri}/assets/js/plugins/moment.min.js"></script>
  <script src="${imgUri}/assets/js/plugins/datetimepicker.js" type="text/javascript"></script>
  <script src="${imgUri}/assets/js/plugins/bootstrap-datepicker.min.js"></script>
  <!-- Control Center for Argon UI Kit: parallax effects, scripts for the example pages etc -->
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <script src="${imgUri}/assets/js/argon-design-system.min.js?v=1.2.0" type="text/javascript"></script>
  <script>
    function scrollToDownload() {

      if ($('.section-download').length != 0) {
        $("html, body").animate({
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }
    }
  </script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "argon-design-system-pro"
      });
  </script>
</body>

</html>