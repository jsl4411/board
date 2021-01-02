<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer class="bg3 p-t-75 p-b-32">
    <div class="container">
        <div class="row">

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30" style="font-size:100px">
                    <img src="/images/003-w.png" >
                </h4>

            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    CATEGORIES
                </h4>

                <ul>
                    <li class="p-b-10">
                        <a href="/gxsx/notice.do" class="stext-107 cl7 hov-cl1 trans-04">
                            Notice
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="/finditem/list.do?cp=1" class="stext-107 cl7 hov-cl1 trans-04">
                            Finditem
                        </a>
                    </li>

                    <li class="p-b-10">
                        <a href="/board/" class="stext-107 cl7 hov-cl1 trans-04">
                            Lostitem
                        </a>
                    </li>
                </ul>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    CONTACT US
                </h4>

                <p class="stext-107 cl7 size-201">
                    <i class="fa fa-home"></i> 서울 마포구 백범로 23 구프라자 3층,
                    <br/>&nbsp;&nbsp;&nbsp; (지번)신수동 63-14 구프라자 3층
                </p>
                <p class="stext-107 cl7 size-201">
                    <i class="fa fa-phone"></i> 02-707-1480
                </p>
                <p class="stext-107 cl7 size-201">
                    <i class="fa fa-envelope"></i> javaoneteam@gmail.com

                </p>

                <div class="p-t-27">
                    <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-facebook"></i>
                    </a>

                    <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-instagram"></i>
                    </a>

                    <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                        <i class="fa fa-pinterest-p"></i>
                    </a>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3 p-b-50">
                <h4 class="stext-301 cl0 p-b-30">
                    BUSINESS HOURS
                </h4>

                <p class="stext-107 cl7 size-201">
                    <i class="fa fa-clock-o"></i> <span class="day">Weekdays : </span>
                    <span>9am to 8pm</span>
                </p>
                <p class="stext-107 cl7 size-201">
                    <i class="fa fa-clock-o"></i> <span class="day">Saturday &nbsp; : </span>
                    <span>9am to 2pm</span>
                </p>
                <p class="stext-107 cl7 size-201">
                    <i class="fa fa-clock-o"></i> <span class="day">Sunday &nbsp; &nbsp; : </span>
                    <span>Closed</span>
                </p>
            </div>
        </div>

        <p class="stext-107 cl6 txt-center">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | by Sansillyung <i class="fa fa-heart-o" aria-hidden="true"></i>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

        </p>
    </div>
    </div>
</footer>

<!-- ////////////////////////////////////// footer 종료 ////////////////////////////////////// -->
<!-- *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-* -->


<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
</div>

<!--===============================================================================================-->
<script src="/vendor/coza/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="/vendor/coza/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/vendor/coza/bootstrap/js/popper.js"></script>
<script src="/vendor/coza/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/vendor/coza/select2/select2.min.js"></script>
<script>
    $(".js-select2").each(function(){
        $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
        });
    })
</script>
<!--===============================================================================================-->
<script src="/vendor/coza/daterangepicker/moment.min.js"></script>
<script src="/vendor/coza/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="/vendor/coza/slick/slick.min.js"></script>
<script src="/js/coza/slick-custom.js"></script>
<!--===============================================================================================-->
<script src="/vendor/coza/parallax100/parallax100.js"></script>
<script>
    $('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script src="/vendor/coza/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
    $('.gallery-lb').each(function() { // the containers for all your galleries
        $(this).magnificPopup({
            delegate: 'a', // the selector for gallery item
            type: 'image',
            gallery: {
                enabled:true
            },
            mainClass: 'mfp-fade'
        });
    });
</script>
<!--===============================================================================================-->
<script src="/vendor/coza/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script src="/vendor/coza/sweetalert/sweetalert.min.js"></script>

<!--===============================================================================================-->
<script src="/vendor/coza/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
    $('.js-pscroll').each(function(){
        $(this).css('position','relative');
        $(this).css('overflow','hidden');
        var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
        });

        $(window).on('resize', function(){
            ps.update();
        })
    });
</script>
<!--===============================================================================================-->
<script src="/js/coza/main.js"></script>
<script async src="https://buttons.github.io/buttons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="https://unpkg.com/lightpick@latest/lightpick.js"></script>
<script src="/js/demo.js"></script>

</body>
</html>
