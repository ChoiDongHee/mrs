<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<%@include file="./include/mrs_header.jsp"%>

<!--   -->
  <div class="wrapper">
    <div class="section section-hero section-shaped">
      <div class="shape shape-style-1 shape-primary">
        <span class="span-150"></span>
        <span class="span-50"></span>
        <span class="span-50"></span>
        <span class="span-75"></span>
        <span class="span-100"></span>
        <span class="span-75"></span>
        <span class="span-50"></span>
        <span class="span-100"></span>
        <span class="span-50"></span>
        <span class="span-100"></span>
      </div>
      <div class="page-header">
        <div class="container shape-container d-flex align-items-center py-lg">
          <div class="col px-0">
            <div class="row align-items-center justify-content-center">
              <div class="col-lg-10 text-center">
                <img src="${imgUri}/assets/img/brand/Influencer-Marketing-ready-red-and-grey.png" class="img-fluid">
                
                <p class="lead text-white">The community intelligence marketing platform built for advocacy.</p>
                <div class="btn-wrapper mt-5">
                  <a href="./user/join" class="btn btn-lg btn-white btn-icon mb-3 mb-sm-0">
                    <span class="btn-inner--icon"><i class="ni ni-cloud-download-95"></i></span>
                    <span class="btn-inner--text"><span class="text-warning">JOIN</span>  kt Influencer Platfrom </span>
                  </a>
                  <a href="https://github.com/creativetimofficial/argon-design-system" class="btn btn-lg btn-github btn-icon mb-3 mb-sm-0" target="_blank">
                    <span class="btn-inner--icon"><i class="fa fa-github"></i></span>
                    <span class="btn-inner--text"><span class="text-warning">LOGIN</span> kt Influencer Platfrom
                  </a>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
  
  <!--   -->
 <div class="section" style="background-image: url('${imgUri}/assets/img/ill/1.svg');">
    <div class="container py-md">
      <div class="row justify-content-between align-items-center">
        <div class="col-lg-6 mb-lg-auto">
          <div class="rounded overflow-hidden transform-perspective-left">
            <div id="carousel_example" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#carousel_example" data-slide-to="0" class="active"></li>
                <li data-target="#carousel_example" data-slide-to="1"></li>
                <li data-target="#carousel_example" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="img-fluid" src="${imgUri}/assets/img/theme/img-1-1200x1000.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                  <img class="img-fluid" src="${imgUri}/assets/img/theme/img-8-1200x1000.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                  <img class="img-fluid" src="${imgUri}/assets/img/theme/img-3-1200x1000.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                  <img class="img-fluid" src="${imgUri}/assets/img/theme/img-4-1200x1000.jpg" alt=" slide">
                </div>
                                <div class="carousel-item">
                  <img class="img-fluid" src="${imgUri}/assets/img/theme/img-5-1200x1000.jpg" alt=" slide">
                </div>
                <div class="carousel-item">
                  <img class="img-fluid" src="${imgUri}/assets/img/theme/img-6-1200x1000.jpg" alt=" slide">
                </div>
              </div>
              <a class="carousel-control-prev" href="#carousel_example" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carousel_example" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-lg-5 mb-5 mb-lg-0">
          <h1 class="font-weight-light">영화/TV드라마/키즈  30만편 콘텐츠!<H1>
          <p class="lead mt-4">olleh tv에서 판매중인 모든 콘넨츠를 골라 한번 클릭으로 프로모션 링크를 걸어 보세요. </p>
          <a target="_blank"  href="https://tv.kt.com/tv/vod/pVodInfo.asp" class="btn btn-white mt-4">See all Content</a>
        </div>
      </div>
    </div>
  </div>
 

  
    <!-- SVG separator -->
    <div class="separator separator-bottom separator-skew">
      <svg x="0" y="0" viewBox="0 0 2560 0" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
      </svg>
    </div>
  </section>
  
  
  
<!-- footer.jsp 파일의 내용을 가져와서 삽입 -->
<%@include file="./include/mrs_footer.jsp"%>
  
  