<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <footer class="dark footer section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-md-6 col-xs-12">
                        <div class="widget">
                            <div class="widget-title">
                                <h4>អំពី KhmerSLIDE</h4>
                                <hr>
                            </div>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took...</p>

                            <a href="index9.html#" class="btn btn-default">Read More</a>
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-md-3 col-md-6 col-xs-12">
                        <div class="widget">
                            <div class="widget-title">
                                <h4>ស្វែងរកពួកយើងនៅលើ:</h4>
                                <hr>
                            </div>
                            	<a href="#" class="btn btn-outline btn-primary"><i class="fa fa-facebook-official"></i> Facebook</a>
                            	<a href="#" class="btn btn-outline btn-danger"><i class="fa fa-google-plus-square"></i> Google+</a>
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-md-3 col-md-6 col-xs-12">
                        <div class="widget">
                            <div class="widget-title">
                                <h4>អត្ថបទពេញនិយម</h4>
                                <hr>
                            </div>

                            <ul class="popular-courses" data-ng-controller="documentCtrl">
                                <li data-ng-repeat="dp in popularDocument" data-ng-if="$index<12">
                                    <a href="/view/doc={{ dp.DOC_ID }}"" title=""><img class="img-thumbnail" src="http://localhost:9999{{ dp.THUMBNAIL }}" alt="" title="{{ dp.DOC_TITLE }}"></a>
                                </li>
                            </ul>
                        </div><!-- end widget -->
                    </div><!-- end col -->

                    <div class="col-md-3 col-md-6 col-xs-12">
                        <div class="widget">
                            <div class="widget-title">
                                <h4>ទំនាក់ទំនងតាមរយៈ​</h4>
                                <hr>
                            </div>

                            <ul class="contact-details">
                                <li><i class="fa fa-link"></i> <a href="index9.html#">www.yoursite.com</a></li>
                                <li><i class="fa fa-envelope"></i> <a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                                <li><i class="fa fa-phone"></i> +90 123 45 67</li>
                                <li><i class="fa fa-fax"></i> +90 123 45 68</li>
                                <li><i class="fa fa-home"></i> Envato INC 22 Elizabeth Str. Melbourne. Victoria 8777.</li>
                            </ul>

                        </div><!-- end widget -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </footer><!-- end section -->