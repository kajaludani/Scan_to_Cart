<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="h"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]><html class="ie6" dir="ltr" lang="en"><![endif]-->
<!--[if IE 7]><html class="ie7" dir="ltr" lang="en"><![endif]-->
<!--[if IE 8]><html class="ie8" dir="ltr" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html dir="ltr" lang="en">
<!--<![endif]-->
<html lang="en">
<head>
<title>Apparel :: Men's Clothing</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"
	data-ca-mode="free" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

<meta name="description" content="" />


<meta name="keywords" content="" />

<link rel="canonical" href="#" />


<link type="text/css" rel="stylesheet"
	href="css/standalone.5fb66ce8915f0ef09c359b10cce34ba01433851241.css?t=1465976671" />




<link href="" rel="shortcut icon" type="application/octet-stream" />
<link
	href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Bitter'
	rel='stylesheet' type='text/css'>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/User/css/standalone.5fb66ce8915f0ef09c359b10cce34ba01433851241.css" />




<script>
	function load() {
		var amount = document.getElementById("amount");
		var productName = document.getElementById("productName");
		var itemID = document.getElementById("itemID");
		alert("Hello");

		/*    if (offer == null) {
		   	var offer = document.getElementById("noOffer");
		} */

		xmlhttp = new XMLHttpRequest();

		xmlhttp.open("get",
				"${pageContext.request.contextPath}/viewProductController?flag=add&amount="
						+ amount.value + "&itemID=" + itemID.value
						+ "&productName=" + productName.value, true);

		xmlhttp.send();

	}
</script>





</head>

<body>

	<div class="ty-tygh  " id="tygh_container">

		<div id="ajax_overlay" class="ty-ajax-overlay"></div>
		<div id="ajax_loading_box" class="ty-ajax-loading-box"></div>

		<div class="cm-notification-container notification-container"></div>

		<div class="ty-helper-container" id="tygh_main_container">



			<jsp:include page="header.jsp"></jsp:include>

			<div class="tygh-content clearfix">
				<div class="container-fluid  content-grid">
					<div class="row-fluid ">
						<div class="span16 main-content">
							<div class="row-fluid ">
								<div class="span5 side-grid">

									<div class="ty-sidebox">
										<h2 class="ty-sidebox__title ">

											<span class="ty-sidebox__title-wrapper hidden-phone">View
												Cart</span> <span class="cm-combination" id="sw_sidebox_29">
												<span class="ty-sidebox__title-wrapper visible-phone">View
													Cart</span> <span class="ty-sidebox__title-toggle visible-phone">
													<i class="ty-sidebox__icon-open ty-icon-down-open"></i> <i
													class="ty-sidebox__icon-hide ty-icon-up-open"></i>
											</span>
											</span>


										</h2>
									</div>
									<div class="ty-sidebox">
										<h2 class="ty-sidebox__title ">

											<span class="ty-sidebox__title-wrapper hidden-phone">Category</span>
											<span class="cm-combination" id="sw_sidebox_51"> <span
												class="ty-sidebox__title-wrapper visible-phone">Category</span>
												<span class="ty-sidebox__title-toggle visible-phone">
													<i class="ty-sidebox__icon-open ty-icon-down-open"></i> <i
													class="ty-sidebox__icon-hide ty-icon-up-open"></i>
											</span>
											</span>


										</h2>
										<div class="ty-sidebox__body" id="sidebox_51">
											<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

											<div class="ty-menu ty-menu-vertical">
												<ul id="vmenu_51" class="ty-menu__items cm-responsive-menu">


													<c:forEach items="${sessionScope.catList}" var="i">

														<li
															class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-">
															<div
																class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
																<i class="ty-menu__icon-open ty-icon-down-open"></i> <i
																	class="ty-menu__icon-hide ty-icon-up-open"></i>
															</div>
															<div class="ty-menu__item-arrow hidden-phone">
																<i class="ty-icon-right-open"></i><i
																	class="ty-icon-left-open"></i>
															</div>
															<div class="ty-menu__submenu-item-header">
																<a
																	href="<%=request.getContextPath()%>/viewProductController?flag=viewProduct&id=${i.categoryId}&cname=${i.categoryName}"
																	class="ty-menu__item-link">${i.categoryName}</a>
															</div> <!--        <div class="ty-menu__submenu">
        <ul class="ty-menu__submenu-items cm-responsive-menu-submenu">
        <li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
        <div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
        <i class="ty-menu__icon-open ty-icon-down-open"></i>
        <i class="ty-menu__icon-hide ty-icon-up-open"></i></div>
        <div class="ty-menu__item-arrow hidden-phone"></div>
        <i class="ty-icon-right-open"></i>
        
<li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
<i class="ty-menu__icon-open ty-icon-down-open"></i><i class="ty-menu__icon-hide ty-icon-up-open"></i></div>
<div class="ty-menu__item-arrow hidden-phone"><i class="ty-icon-right-open"></i><i class="ty-icon-left-open"></i></div>
<div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Top Wear</a></div>
<div class="ty-menu__submenu">
</div>

<li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
<i class="ty-menu__icon-open ty-icon-down-open"></i><i class="ty-menu__icon-hide ty-icon-up-open"></i></div>
<div class="ty-menu__item-arrow hidden-phone"><i class="ty-icon-right-open"></i><i class="ty-icon-left-open"></i></div>
<div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Bottom Wear</a></div>
<div class="ty-menu__submenu"></div>
</li>

</ul>

</div>
 -->

														</li>
													</c:forEach>





													<!-- <li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
<i class="ty-menu__icon-open ty-icon-down-open"></i><i class="ty-menu__icon-hide ty-icon-up-open"></i></div>
<div class="ty-menu__item-arrow hidden-phone"><i class="ty-icon-right-open"></i><i class="ty-icon-left-open"></i></div>
<div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Women's Wear</a>
</div>
<div class="ty-menu__submenu">
<ul class="ty-menu__submenu-items cm-responsive-menu-submenu">
<li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle"><i class="ty-menu__icon-open ty-icon-down-open"></i>
<i class="ty-menu__icon-hide ty-icon-up-open"></i></div><div class="ty-menu__item-arrow hidden-phone"><i class="ty-icon-right-open"></i>
<i class="ty-icon-left-open"></i></div><div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Top Wear</a></div>
<div class="ty-menu__submenu"></div></li>

<li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle"><i class="ty-menu__icon-open ty-icon-down-open"></i>
<i class="ty-menu__icon-hide ty-icon-up-open"></i></div><div class="ty-menu__item-arrow hidden-phone">
<i class="ty-icon-right-open"></i><i class="ty-icon-left-open"></i></div>
<div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Bottom Wear</a></div>
<div class="ty-menu__submenu"></div>
</li></ul>
</div>
</li>
 -->
													<!-- <li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir ty-menu__item-active menu-level-">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle"><i class="ty-menu__icon-open ty-icon-down-open"></i>
<i class="ty-menu__icon-hide ty-icon-up-open"></i></div><div class="ty-menu__item-arrow hidden-phone"><i class="ty-icon-right-open"></i>
<i class="ty-icon-left-open"></i></div><div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Kids Wear</a></div>
<div class="ty-menu__submenu">
</div>
</li>
 -->

												</ul>
												<!-- <li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
<i class="ty-menu__icon-open ty-icon-down-open"></i><i class="ty-menu__icon-hide ty-icon-up-open"></i></div>
<div class="ty-menu__item-arrow hidden-phone"><i class="ty-icon-right-open"></i><i class="ty-icon-left-open"></i></div>
<div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Accessories</a>
</div>
<div class="ty-menu__submenu">
<ul class="ty-menu__submenu-items cm-responsive-menu-submenu">
<li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle"><i class="ty-menu__icon-open ty-icon-down-open"></i>
<i class="ty-menu__icon-hide ty-icon-up-open"></i></div>
<div class="ty-menu__item-arrow hidden-phone">
<i class="ty-icon-right-open"></i>
<i class="ty-icon-left-open"></i></div><div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Bags</a></div>
<div class="ty-menu__submenu">
</div></li>
<li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle"><i class="ty-menu__icon-open ty-icon-down-open"></i>
<i class="ty-menu__icon-hide ty-icon-up-open"></i></div><div class="ty-menu__item-arrow hidden-phone">
<i class="ty-icon-right-open"></i><i class="ty-icon-left-open"></i></div>
<div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Watches</a></div>
<div class="ty-menu__submenu"></div>
</li>
<li class="ty-menu__item cm-menu-item-responsive dropdown-vertical__dir menu-level-1">
<div class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle"><i class="ty-menu__icon-open ty-icon-down-open"></i>
<i class="ty-menu__icon-hide ty-icon-up-open"></i></div><div class="ty-menu__item-arrow hidden-phone">
<i class="ty-icon-right-open"></i><i class="ty-icon-left-open"></i></div>
<div class="ty-menu__submenu-item-header">
<a href="#"  class="ty-menu__item-link">Shoes</a></div>
<div class="ty-menu__submenu"></div>
</li></ul>
</div>
</li> -->





											</div>
										</div>
									</div>
									<div class="ty-sidebox">
										<div class="ty-sidebox__body" id="sidebox_30">


											<ul class="ty-template-small">


												<li class="ty-template-small__item clearfix">
													<form action="#" method="post" name="product_form_3000011"
														enctype="multipart/form-data"
														class="cm-disable-empty-files  cm-ajax cm-ajax-full-render 
                cm-ajax-status-middle ">
														<input type="hidden" name="result_ids"
															value="cart_status*,wish_list*,checkout*,account_info*" />
														<input type="hidden" name="redirect_url"
															value="index.php?dispatch=categories.view&amp;category_id=225" />
														<input type="hidden" name="product_data[11][product_id]"
															value="11" />


													</form>

												</li>


											</ul>
										</div>
									</div>
								</div>
								<div class="span11 main-content-grid">
									<div id="breadcrumbs_10">
										<div class="ty-breadcrumbs clearfix">
											<a href="index.jsp" class="ty-breadcrumbs__a">Home</a><span
												class="ty-breadcrumbs__slash">></span><span
												class="ty-breadcrumbs__current">${sessionScope.cname}</span>
										</div>
										<!--breadcrumbs_10-->
									</div>
									<div class="ty-mainbox-container clearfix">

										<h1 class="ty-mainbox-title">

											<span>${sessionScope.cname}</span>


										</h1>


										<div class="ty-mainbox-body">
											<div id="category_products_11">






												<!-- Inline script moved to the bottom of the page -->



												<div class="ty-pagination-container cm-pagination-container"
													id="pagination_contents">






													<div class="ty-sort-container">







														<div class="ty-sort-dropdown">
															<!-- <a id="sw_elm_sort_fields" class="ty-sort-dropdown__wrapper cm-combination">Sort Alphabetically: A to Z<i class="ty-sort-dropdown__icon ty-icon-down-micro"></i></a>
    <ul id="elm_sort_fields" class="ty-sort-dropdown__content cm-popup-box hidden">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <li class="sort-by-timestamp-desc ty-sort-dropdown__content-item">
                        <a class="cm-ajax ty-sort-dropdown__content-item-a" data-ca-target-id="pagination_contents" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?sort_by=timestamp&amp;sort_order=desc" rel="nofollow">Newest Items First</a>
                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <li class="sort-by-product-desc ty-sort-dropdown__content-item">
                        <a class="cm-ajax ty-sort-dropdown__content-item-a" data-ca-target-id="pagination_contents" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?sort_by=product&amp;sort_order=desc" rel="nofollow">Sort Alphabetically: Z to A</a>
                    </li>
                                                                                                                                                                                                                                                <li class="sort-by-price-asc ty-sort-dropdown__content-item">
                        <a class="cm-ajax ty-sort-dropdown__content-item-a" data-ca-target-id="pagination_contents" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?sort_by=price&amp;sort_order=asc" rel="nofollow">Sort by Price: Low to High</a>
                    </li>
                                                                                                                                                <li class="sort-by-price-desc ty-sort-dropdown__content-item">
                        <a class="cm-ajax ty-sort-dropdown__content-item-a" data-ca-target-id="pagination_contents" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?sort_by=price&amp;sort_order=desc" rel="nofollow">Sort by Price: High to Low</a>
                    </li>
                                                                                                                                                                                                                                                                                                                                                        <li class="sort-by-popularity-desc ty-sort-dropdown__content-item">
                        <a class="cm-ajax ty-sort-dropdown__content-item-a" data-ca-target-id="pagination_contents" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?sort_by=popularity&amp;sort_order=desc" rel="nofollow">Sort by Popularity</a>
                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            </ul>
</div>


<div class="ty-sort-dropdown">
<a id="sw_elm_pagination_steps" class="ty-sort-dropdown__wrapper cm-combination">12 Per Page<i class="ty-sort-dropdown__icon ty-icon-down-micro"></i></a>
    <ul id="elm_pagination_steps" class="ty-sort-dropdown__content cm-popup-box hidden">
                                            <li class="ty-sort-dropdown__content-item">
                <a class="cm-ajax ty-sort-dropdown__content-item-a" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?items_per_page=24" data-ca-target-id="pagination_contents" rel="nofollow">24 Per Page</a>
            </li>
                                    <li class="ty-sort-dropdown__content-item">
                <a class="cm-ajax ty-sort-dropdown__content-item-a" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?items_per_page=48" data-ca-target-id="pagination_contents" rel="nofollow">48 Per Page</a>
            </li>
                                    <li class="ty-sort-dropdown__content-item">
                <a class="cm-ajax ty-sort-dropdown__content-item-a" href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/?items_per_page=96" data-ca-target-id="pagination_contents" rel="nofollow">96 Per Page</a>
            </li>
                    </ul> -->
														</div>
													</div>




													<h:forEach items="${sessionScope.pList }" var="p">
														<h:forEach items="${sessionScope.List }" var="i">
															<h:if test="${p.productId eq i.vo.productId }">


																<div class="ty-product-list clearfix">

																	<form
																		action="http://demos.templatemela.com/cscart/CST02/CST020042/"
																		method="post" name="product_form_27"
																		enctype="multipart/form-data"
																		class="cm-disable-empty-files  cm-ajax cm-ajax-full-render cm-ajax-status-middle  cm-processed-form">
																		<input name="result_ids"
																			value="cart_status*,wish_list*,checkout*,account_info*"
																			type="hidden"> <input name="redirect_url"
																			value="index.php?sort_by=product&amp;sort_order=desc&amp;layout=products_without_options&amp;dispatch=categories.view&amp;category_id=225"
																			type="hidden"> <input
																			name="product_data[27][product_id]" value="27"
																			type="hidden">


																		<div class="ty-product-list__image">

																			<span class="cm-reload-27 image-reload"
																				id="list_image_update_27"> <a
																				href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/trefoil-logo-hoodie/">
																					<input name="image[list_image_update_27][link]"
																					value="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/trefoil-logo-hoodie/"
																					type="hidden"> <input
																					name="image[list_image_update_27][data]"
																					value="27,350,350,product" type="hidden"> <img
																					class="ty-pict    " id="det_img_27"
																					src="${pageContext.request.contextPath}/doc/${i.encryptedfilename}"
																					alt="" title="">


																			</a> <!--list_image_update_27--></span>



																		</div>
																		<div class="ty-product-list__content">





																			<div class="ty-product-list__info">
																				<div class="ty-product-list__item-name">

																					<a
																						href="http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/trefoil-logo-hoodie/"
																						class="product-title">${i.vo.productName}</a>


																				</div>




																				<div class="ty-product-list__feature">

																					<div class="cm-reload-27"
																						id="product_features_update_27">
																						<input name="appearance[show_features]" value="1"
																							type="hidden">



																						<!--product_features_update_27-->
																					</div>



																				</div>
																				<div class="ty-product-list__description">
																					<div>
																						<p>This classic women's adidas Originals
																							Trefoil Logo Hoodie is made of comfortable fleece
																							with a drawcord hood, a kangaroo pocket and an
																							outsize logo. The pullover hoodie also features
																							extra-long cuffs and hem for feminine style.</p>
																					</div>

																				</div>
																				<div class="ty-product-list__rating"></div>
																				<div class="ty-product-list__option"></div>


																				<div class="cm-reload-27 stock-wrap"
																					id="product_amount_update_27">
																					<input name="appearance[show_product_amount]"
																						value="1" type="hidden">
																					<div class="ty-control-group product-list-field">
																						<label class="ty-control-group__label">Availability:</label>
																						<span
																							class="ty-qty-in-stock ty-control-group__item"
																							id="in_stock_info_27">In stock</span>
																					</div>
																					<!--product_amount_update_27-->
																				</div>




																				<div class="ty-product-list__qty">

																					<div class="cm-reload-27" id="qty_update_27">
																						<input name="appearance[show_qty]" value="1"
																							type="hidden"> <input
																							name="appearance[capture_options_vs_qty]"
																							value="" type="hidden"> <input
																							name="product_data[27][amount]" value="1"
																							type="hidden">
																						<!--qty_update_27-->
																					</div>



																				</div>






																			</div>

																			<div class="ty-product-list__price">
																				<span class="cm-reload-27" id="old_price_update_27">



																					<!--old_price_update_27-->
																				</span> <span class="cm-reload-27 ty-price-update"
																					id="price_update_27"> <input
																					name="appearance[show_price_values]" value="1"
																					type="hidden"> <input
																					name="appearance[show_price]" value="1"
																					type="hidden"> <span class="ty-price"
																					id="line_discounted_price_27"><span
																						class="ty-price-num">
																							<!-- $ -->
																					</span><span id="sec_discounted_price_27"
																						class="ty-price-num">Floor:- ${i.vo.floor}</span></span><br>
																					<span class="ty-price"
																					id="line_discounted_price_27"><span
																						class="ty-price-num">
																							<!-- $ -->
																					</span><span id="sec_discounted_price_27"
																						class="ty-price-num">Rack:- ${i.vo.rack}</span></span><br>

																					<span class="ty-price"
																					id="line_discounted_price_27"><span
																						class="ty-price-num">
																							<!-- $ -->
																					</span><span id="sec_discounted_price_27"
																						class="ty-price-num">${i.vo.productPrice }</span></span>


																					<!--price_update_27--></span> <input type="hidden"
																					id="productName" value="${i.vo.productName }">
																				<input type="hidden" id="amount"
																					value=" ${i.vo.productPrice}"> <input
																					type="hidden" id="itemID" value="${i.vo.productId}">




																			</div>

																			<div class="ty-product-list__control">
																				<div class="cm-reload-27 "
																					id="add_to_cart_update_27">
																					<input name="appearance[show_add_to_cart]"
																						value="1" type="hidden"> <input
																						name="appearance[show_list_buttons]" value="1"
																						type="hidden"> <input
																						name="appearance[but_role]" value="action"
																						type="hidden"> <input
																						name="appearance[quick_view]" value=""
																						type="hidden"> <a href="" onclick="load()"
																						class="ty-btn ty-btn__primary ty-btn__big ">Add
																						To WishList</a> <a id="opener_call_request_27"
																						class="cm-dialog-opener cm-dialog-auto-size ty-btn ty-btn__text"
																						data-ca-target-id="content_call_request_27"
																						rel="nofollow">Buy now with 1-click</a> <a
																						class="ty-btn ty-btn__text ty-add-to-wish cm-submit text-button"
																						id="button_wishlist_27"
																						data-ca-dispatch="dispatch[wishlist.add..27]">Add
																						to wish list</a>





																					<!--add_to_cart_update_27-->
																				</div>

																			</div>


																		</div>
																	</form>

																</div>
															</h:if>
														</h:forEach>
													</h:forEach>

													<!-- Inline script moved to the bottom of the page -->

													<div class="grid-list">
														<div class="ty-column3">
															<div
																class="ty-grid-list__item ty-quick-view-button__wrapper">
																<form action="V31582_01.jpg" method="post"
																	name="product_form_41" enctype="multipart/form-data"
																	class="cm-disable-empty-files  cm-ajax cm-ajax-full-render cm-ajax-status-middle ">
																	<input type="hidden" name="result_ids"
																		value="cart_status*,wish_list*,checkout*,account_info*" />
																	<input type="hidden" name="redirect_url"
																		value="index.php?dispatch=categories.view&amp;category_id=225" />
																	<input type="hidden"
																		name="product_data[41][product_id]" value="41" />

																</form>
															</div>
														</div>
													</div>




													<!--pagination_contents-->
												</div>





												<!--category_products_11-->
											</div>



										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="tygh-footer clearfix" id="tygh_footer">
				<div class="container-fluid  ty-footer-grid">
					<div class="row-fluid ">
						<div class="span16 ty-footer-grid__full-width ty-footer-menu">
							<div class="row-fluid ">
								<div class="span4 demo-store-grid">
									<div
										class="ty-footer footer-no-wysiwyg hb-animate-element left-to-right ty-float-left">
										<h2 class="ty-footer-general__header  cm-combination"
											id="sw_footer-general_15">

											<span>Demo Store</span> <i
												class="ty-footer-menu__icon-open ty-icon-down-open"></i> <i
												class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
										</h2>
										<div class="ty-footer-general__body" id="footer-general_15">
											<div class="ty-wysiwyg-content">
												<ul id="demo_store_links">
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/about-our-company/">About
															us</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/contact-us/">Contact
															us</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/gift-certificates/">Gift
															certificates</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/index.php?dispatch=product_features.view_all&amp;filter_id=10">Our
															brands</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/sitemap/">Sitemap</a></li>

												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="span4 customer-service-grid">
									<div
										class="ty-footer footer-no-wysiwyg hb-animate-element top-to-bottom ty-float-left">
										<h2 class="ty-footer-general__header  cm-combination"
											id="sw_footer-general_16">

											<span>Customer Service</span> <i
												class="ty-footer-menu__icon-open ty-icon-down-open"></i> <i
												class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
										</h2>
										<div class="ty-footer-general__body" id="footer-general_16">
											<div class="ty-wysiwyg-content">
												<ul id="customer_service_links">
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/orders/"
														rel="nofollow">About your order</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/wishlist/"
														rel="nofollow">Wishlist</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/compare/"
														rel="nofollow">Compare list</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/blog/">Blog</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/sitemap/">Sitemap</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="span4 about-grid">
									<div
										class="ty-footer footer-no-wysiwyg hb-animate-element bottom-to-top ty-float-left">
										<h2 class="ty-footer-general__header  cm-combination"
											id="sw_footer-general_42">

											<span>About CS-Cart</span> <i
												class="ty-footer-menu__icon-open ty-icon-down-open"></i> <i
												class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
										</h2>
										<div class="ty-footer-general__body" id="footer-general_42">
											<div class="ty-wysiwyg-content">
												<ul id="about_cs_cart_links">
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/our-team/">What
															is CS-Cart?</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/privacy-policy/">Privacy
															policy</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/index.php?dispatch=product_features.view_all&amp;filter_id=10">Our
															brands</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/sitemap/">Sitemap</a></li>
													<li class="ty-footer-menu__item"><a
														href="http://demos.templatemela.com/cscart/CST02/CST020042/index.php?dispatch=news.list">News</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="span4 contact-grid">
									<div
										class="ty-footer footer-no-wysiwyg hb-animate-element right-to-left ty-float-left">
										<h2 class="ty-footer-general__header  cm-combination"
											id="sw_footer-general_43">

											<span>Contact Us</span> <i
												class="ty-footer-menu__icon-open ty-icon-down-open"></i> <i
												class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
										</h2>
										<div class="ty-footer-general__body" id="footer-general_43">
											<div class="ty-wysiwyg-content">
												<ul id="contact_us_links">
													<li class="address">My Company 42 avenue des,</li>
													<li>Champs Elysees 75000, Paris, France</li>
													<li class="ph-no">0123-456-789</li>
													<li class="email"><a href="#">sales@yourcompany.com</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row-fluid ">
						<div class="span16 ty-footer-grid__full-width footer-copyright">
							<div class="row-fluid ">
								<div class="span8 newsletter-grid">
									<div class=" subscribe-block    ty-float-left">
										<div class="ty-footer-form-block">
											<form
												action="http://demos.templatemela.com/cscart/CST02/CST020042/"
												method="post" name="subscribe_form">
												<input type="hidden" name="redirect_url"
													value="index.php?dispatch=categories.view&amp;category_id=225" />
												<input type="hidden" name="newsletter_format" value="2" />
												<h3 class="ty-footer-form-block__title">Stay Connected</h3>
												<div
													class="ty-footer-form-block__form ty-control-group ty-input-append">
													<label class="cm-required cm-email hidden"
														for="subscr_email12">Email</label> <input type="text"
														name="subscribe_email" id="subscr_email12" size="20"
														value="Enter e-mail address" class="cm-hint ty-input-text" />
													<button title="Go" class="ty-btn-go" type="submit">
														<i class="ty-btn-go__icon ty-icon-right-dir"></i>
													</button>
													<input type="hidden" name="dispatch"
														value="newsletters.add_subscriber" />
												</div>
											</form>
										</div>

									</div>
								</div>
								<div class="span8 social-block-grid">
									<div class=" social-block ty-float-right">
										<div class="ty-wysiwyg-content">
											<div class="ty-social-link-block">
												<!--<h3 class="ty-social-link__title">Get social</h3>-->


												<a class="ty-social-link facebook"
													href="http://www.facebook.com"><span
													class="followus-title"> Facebook </span></a> <a
													class="ty-social-link twitter" href="https://twitter.com"><span
													class="followus-title"> Twitter </span></a> <a
													class="ty-social-link linkedln"
													href="http://www.facebook.com"><span
													class="followus-title"> linkedln </span></a> <a
													class="ty-social-link rss" href="https://twitter.com"><span
													class="followus-title"> rss </span></a> <a
													class="ty-social-link youtube"
													href="http://www.facebook.com"><span
													class="followus-title"> youtube </span></a> <a
													class="ty-social-link pinterest" href="https://twitter.com"><span
													class="followus-title"> pinterest </span></a> <a
													class="ty-social-link skype" href="http://www.facebook.com"><span
													class="followus-title"> skype </span></a> <a
													class="ty-social-link google" href="https://twitter.com"></i><span
													class="followus-title"> google </span></a>


											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row-fluid ">
								<div class="span16 footer-bottom">
									<div class=" copyright-inner">
										<p class="bottom-copyright">
											&copy; 2004-2017 Simtech. &nbsp;Powered by <a
												class="bottom-copyright" href="http://www.cs-cart.com"
												target="_blank">CS-Cart - Shopping Cart Software</a>
										</p>
									</div>
									<div class="ty-payment-icons">

										<span class="ty-payment-icons__item twocheckout">&nbsp;</span>
										<span class="ty-payment-icons__item paypal">&nbsp;</span> <span
											class="ty-payment-icons__item mastercard">&nbsp;</span> <span
											class="ty-payment-icons__item visa">&nbsp;</span>


									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>






			<!--tygh_main_container-->
		</div>




		<!--tygh_container-->
	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"
		data-no-defer></script>
	<script data-no-defer>
		if (!window.jQuery) {
			document
					.write('<script type="text/javascript" src="js/jquery.min.js?ver=4.3.1" ><\/script>');
		}
	</script>

	<script
		src="js/jquery-ui.min.js"
		data-no-defer></script>
	<script data-no-defer>
		if (!window.jQuery.ui) {
			document
					.write('<script type="text/javascript" src="js/jquery-ui.custom.min.js?ver=4.3.1" ><\/script>');
		}
	</script>

	<script type="text/javascript"
		src="js/scripts-cf5e6d77decbbf90c0c1bec58ac613841433851241.js?t=1465976681?ver=4.3.1"></script>
	<script type="text/javascript">
		(function(_, $) {

			_
					.tr({
						cannot_buy : 'You cannot buy the product with these option variants',
						no_products_selected : 'No products selected',
						error_no_items_selected : 'No items selected! At least one check box must be selected to perform this action.',
						delete_confirmation : 'Are you sure you want to delete the selected items?',
						text_out_of_stock : 'Out of stock',
						items : 'item(s)',
						text_required_group_product : 'Please select a product for the required group [group_name]',
						save : 'Save',
						close : 'Close',
						notice : 'Notice',
						warning : 'Warning',
						error : 'Error',
						empty : 'Empty',
						text_are_you_sure_to_proceed : 'Are you sure you want to proceed?',
						text_invalid_url : 'You have entered an invalid URL',
						error_validator_email : 'The email address in the <b>[field]<\/b> field is invalid.',
						error_validator_phone : 'The phone number in the <b>[field]<\/b> field is invalid. The correct format is (555) 555-55-55 or 55 55 555 5555.',
						error_validator_integer : 'The value of the <b>[field]<\/b> field is invalid. It should be integer.',
						error_validator_multiple : 'The <b>[field]<\/b> field does not contain the selected options.',
						error_validator_password : 'The passwords in the <b>[field2]<\/b> and <b>[field]<\/b> fields do not match.',
						error_validator_required : 'The <b>[field]<\/b> field is mandatory.',
						error_validator_zipcode : 'The ZIP / Postal code in the <b>[field]<\/b> field is incorrect. The correct format is [extra].',
						error_validator_message : 'The value of the <b>[field]<\/b> field is invalid.',
						text_page_loading : 'Loading... Your request is being processed, please wait.',
						error_ajax : 'Oops, something went wrong ([error]). Please try again.',
						text_changes_not_saved : 'Your changes have not been saved.',
						text_data_changed : 'Your changes have not been saved.Press OK to continue, or Cancel to stay on the current page.',
						placing_order : 'Placing the order',
						file_browser : 'File browser',
						browse : 'Browse...',
						more : 'More',
						text_no_products_found : 'No products found'
					});

			$
					.extend(
							_,
							{
								index_script : 'index.php',
								changes_warning : /*'Y'*/'N',
								currencies : {
									'primary' : {
										'decimals_separator' : '.',
										'thousands_separator' : ',',
										'decimals' : '2'
									},
									'secondary' : {
										'decimals_separator' : '.',
										'thousands_separator' : ',',
										'decimals' : '2',
										'coefficient' : '1.00000'
									}
								},
								default_editor : 'redactor',
								default_previewer : 'magnific',
								current_path : '/cscart/CST02/CST020042',
								current_location : 'http://demos.templatemela.com/cscart/CST02/CST020042',
								images_dir : 'http://demos.templatemela.com/cscart/CST02/CST020042/design/themes/CST020042/media/images',
								notice_displaying_time : 5,
								cart_language : 'en',
								default_language : 'en',
								cart_prices_w_taxes : false,
								theme_name : 'CST020042',
								regexp : [],
								current_url : 'http://demos.templatemela.com/cscart/CST02/CST020042/apparel/womens-clothing/',
								current_host : 'demos.templatemela.com',
								init_context : ''
							});

			$(document).ready(function() {
				$.runCart('C');
			});

			// CSRF form protection key
			_.security_hash = 'f6408744a8b63352b6636422088d7a37';

		}(Tygh, Tygh.$));
	</script>
	<script type="text/javascript">
		(function(_, $) {
			_.call_requests_phone_masks_list = [ {
				"mask" : "+247-####",
				"cc" : "AC",
				"name_en" : "Ascension",
				"desc_en" : "",
				"name_ru" : "Остров Вознесения",
				"desc_ru" : ""
			}, {
				"mask" : "+376-###-###",
				"cc" : "AD",
				"name_en" : "Andorra",
				"desc_en" : "",
				"name_ru" : "Андорра",
				"desc_ru" : ""
			}, {
				"mask" : "+971-5#-###-####",
				"cc" : "AE",
				"name_en" : "United Arab Emirates",
				"desc_en" : "mobile",
				"name_ru" : "Объединенные Арабские Эмираты",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+971-#-###-####",
				"cc" : "AE",
				"name_en" : "United Arab Emirates",
				"desc_en" : "",
				"name_ru" : "Объединенные Арабские Эмираты",
				"desc_ru" : ""
			}, {
				"mask" : "+93-##-###-####",
				"cc" : "AF",
				"name_en" : "Afghanistan",
				"desc_en" : "",
				"name_ru" : "Афганистан",
				"desc_ru" : ""
			}, {
				"mask" : "+1(268)###-####",
				"cc" : "AG",
				"name_en" : "Antigua & Barbuda",
				"desc_en" : "",
				"name_ru" : "Антигуа и Барбуда",
				"desc_ru" : ""
			}, {
				"mask" : "+1(264)###-####",
				"cc" : "AI",
				"name_en" : "Anguilla",
				"desc_en" : "",
				"name_ru" : "Ангилья",
				"desc_ru" : ""
			}, {
				"mask" : "+355(###)###-###",
				"cc" : "AL",
				"name_en" : "Albania",
				"desc_en" : "",
				"name_ru" : "Албания",
				"desc_ru" : ""
			}, {
				"mask" : "+374-##-###-###",
				"cc" : "AM",
				"name_en" : "Armenia",
				"desc_en" : "",
				"name_ru" : "Армения",
				"desc_ru" : ""
			}, {
				"mask" : "+599-###-####",
				"cc" : "AN",
				"name_en" : "Caribbean Netherlands",
				"desc_en" : "",
				"name_ru" : "Карибские Нидерланды",
				"desc_ru" : ""
			}, {
				"mask" : "+599-###-####",
				"cc" : "AN",
				"name_en" : "Netherlands Antilles",
				"desc_en" : "",
				"name_ru" : "Нидерландские Антильские острова",
				"desc_ru" : ""
			}, {
				"mask" : "+599-9###-####",
				"cc" : "AN",
				"name_en" : "Netherlands Antilles",
				"desc_en" : "Curacao",
				"name_ru" : "Нидерландские Антильские острова",
				"desc_ru" : "Кюрасао"
			}, {
				"mask" : "+244(###)###-###",
				"cc" : "AO",
				"name_en" : "Angola",
				"desc_en" : "",
				"name_ru" : "Ангола",
				"desc_ru" : ""
			}, {
				"mask" : "+672-1##-###",
				"cc" : "AQ",
				"name_en" : "Australian bases in Antarctica",
				"desc_en" : "",
				"name_ru" : "Австралийская антарктическая база",
				"desc_ru" : ""
			}, {
				"mask" : "+54(###)###-####",
				"cc" : "AR",
				"name_en" : "Argentina",
				"desc_en" : "",
				"name_ru" : "Аргентина",
				"desc_ru" : ""
			}, {
				"mask" : "+1(684)###-####",
				"cc" : "AS",
				"name_en" : "American Samoa",
				"desc_en" : "",
				"name_ru" : "Американское Самоа",
				"desc_ru" : ""
			}, {
				"mask" : "+43(###)###-####",
				"cc" : "AT",
				"name_en" : "Austria",
				"desc_en" : "",
				"name_ru" : "Австрия",
				"desc_ru" : ""
			}, {
				"mask" : "+61-#-####-####",
				"cc" : "AU",
				"name_en" : "Australia",
				"desc_en" : "",
				"name_ru" : "Австралия",
				"desc_ru" : ""
			}, {
				"mask" : "+297-###-####",
				"cc" : "AW",
				"name_en" : "Aruba",
				"desc_en" : "",
				"name_ru" : "Аруба",
				"desc_ru" : ""
			}, {
				"mask" : "+994-##-###-##-##",
				"cc" : "AZ",
				"name_en" : "Azerbaijan",
				"desc_en" : "",
				"name_ru" : "Азербайджан",
				"desc_ru" : ""
			}, {
				"mask" : "+387-##-#####",
				"cc" : "BA",
				"name_en" : "Bosnia and Herzegovina",
				"desc_en" : "",
				"name_ru" : "Босния и Герцеговина",
				"desc_ru" : ""
			}, {
				"mask" : "+387-##-####",
				"cc" : "BA",
				"name_en" : "Bosnia and Herzegovina",
				"desc_en" : "",
				"name_ru" : "Босния и Герцеговина",
				"desc_ru" : ""
			}, {
				"mask" : "+1(246)###-####",
				"cc" : "BB",
				"name_en" : "Barbados",
				"desc_en" : "",
				"name_ru" : "Барбадос",
				"desc_ru" : ""
			}, {
				"mask" : "+880-##-###-###",
				"cc" : "BD",
				"name_en" : "Bangladesh",
				"desc_en" : "",
				"name_ru" : "Бангладеш",
				"desc_ru" : ""
			}, {
				"mask" : "+32(###)###-###",
				"cc" : "BE",
				"name_en" : "Belgium",
				"desc_en" : "",
				"name_ru" : "Бельгия",
				"desc_ru" : ""
			}, {
				"mask" : "+226-##-##-####",
				"cc" : "BF",
				"name_en" : "Burkina Faso",
				"desc_en" : "",
				"name_ru" : "Буркина Фасо",
				"desc_ru" : ""
			}, {
				"mask" : "+359(###)###-###",
				"cc" : "BG",
				"name_en" : "Bulgaria",
				"desc_en" : "",
				"name_ru" : "Болгария",
				"desc_ru" : ""
			}, {
				"mask" : "+973-####-####",
				"cc" : "BH",
				"name_en" : "Bahrain",
				"desc_en" : "",
				"name_ru" : "Бахрейн",
				"desc_ru" : ""
			}, {
				"mask" : "+257-##-##-####",
				"cc" : "BI",
				"name_en" : "Burundi",
				"desc_en" : "",
				"name_ru" : "Бурунди",
				"desc_ru" : ""
			}, {
				"mask" : "+229-##-##-####",
				"cc" : "BJ",
				"name_en" : "Benin",
				"desc_en" : "",
				"name_ru" : "Бенин",
				"desc_ru" : ""
			}, {
				"mask" : "+1(441)###-####",
				"cc" : "BM",
				"name_en" : "Bermuda",
				"desc_en" : "",
				"name_ru" : "Бермудские острова",
				"desc_ru" : ""
			}, {
				"mask" : "+673-###-####",
				"cc" : "BN",
				"name_en" : "Brunei Darussalam",
				"desc_en" : "",
				"name_ru" : "Бруней-Даруссалам",
				"desc_ru" : ""
			}, {
				"mask" : "+591-#-###-####",
				"cc" : "BO",
				"name_en" : "Bolivia",
				"desc_en" : "",
				"name_ru" : "Боливия",
				"desc_ru" : ""
			}, {
				"mask" : "+55-##-####-####",
				"cc" : "BR",
				"name_en" : "Brazil",
				"desc_en" : "",
				"name_ru" : "Бразилия",
				"desc_ru" : ""
			}, {
				"mask" : "+1(242)###-####",
				"cc" : "BS",
				"name_en" : "Bahamas",
				"desc_en" : "",
				"name_ru" : "Багамские Острова",
				"desc_ru" : ""
			}, {
				"mask" : "+975-17-###-###",
				"cc" : "BT",
				"name_en" : "Bhutan",
				"desc_en" : "",
				"name_ru" : "Бутан",
				"desc_ru" : ""
			}, {
				"mask" : "+975-#-###-###",
				"cc" : "BT",
				"name_en" : "Bhutan",
				"desc_en" : "",
				"name_ru" : "Бутан",
				"desc_ru" : ""
			}, {
				"mask" : "+267-##-###-###",
				"cc" : "BW",
				"name_en" : "Botswana",
				"desc_en" : "",
				"name_ru" : "Ботсвана",
				"desc_ru" : ""
			}, {
				"mask" : "+375(##)###-##-##",
				"cc" : "BY",
				"name_en" : "Belarus",
				"desc_en" : "",
				"name_ru" : "Беларусь (Белоруссия)",
				"desc_ru" : ""
			}, {
				"mask" : "+501-###-####",
				"cc" : "BZ",
				"name_en" : "Belize",
				"desc_en" : "",
				"name_ru" : "Белиз",
				"desc_ru" : ""
			}, {
				"mask" : "+243(###)###-###",
				"cc" : "CD",
				"name_en" : "Dem. Rep. Congo",
				"desc_en" : "",
				"name_ru" : "Дем. Респ. Конго (Киншаса)",
				"desc_ru" : ""
			}, {
				"mask" : "+236-##-##-####",
				"cc" : "CF",
				"name_en" : "Central African Republic",
				"desc_en" : "",
				"name_ru" : "Центральноафриканская Республика",
				"desc_ru" : ""
			}, {
				"mask" : "+242-##-###-####",
				"cc" : "CG",
				"name_en" : "Congo (Brazzaville)",
				"desc_en" : "",
				"name_ru" : "Конго (Браззавиль)",
				"desc_ru" : ""
			}, {
				"mask" : "+41-##-###-####",
				"cc" : "CH",
				"name_en" : "Switzerland",
				"desc_en" : "",
				"name_ru" : "Швейцария",
				"desc_ru" : ""
			}, {
				"mask" : "+225-##-###-###",
				"cc" : "CI",
				"name_en" : "Cote d’Ivoire (Ivory Coast)",
				"desc_en" : "",
				"name_ru" : "Кот-д’Ивуар",
				"desc_ru" : ""
			}, {
				"mask" : "+682-##-###",
				"cc" : "CK",
				"name_en" : "Cook Islands",
				"desc_en" : "",
				"name_ru" : "Острова Кука",
				"desc_ru" : ""
			}, {
				"mask" : "+56-#-####-####",
				"cc" : "CL",
				"name_en" : "Chile",
				"desc_en" : "",
				"name_ru" : "Чили",
				"desc_ru" : ""
			}, {
				"mask" : "+237-####-####",
				"cc" : "CM",
				"name_en" : "Cameroon",
				"desc_en" : "",
				"name_ru" : "Камерун",
				"desc_ru" : ""
			}, {
				"mask" : "+86(###)####-####",
				"cc" : "CN",
				"name_en" : "China (PRC)",
				"desc_en" : "",
				"name_ru" : "Китайская Н.Р.",
				"desc_ru" : ""
			}, {
				"mask" : "+86(###)####-###",
				"cc" : "CN",
				"name_en" : "China (PRC)",
				"desc_en" : "",
				"name_ru" : "Китайская Н.Р.",
				"desc_ru" : ""
			}, {
				"mask" : "+86-##-#####-#####",
				"cc" : "CN",
				"name_en" : "China (PRC)",
				"desc_en" : "",
				"name_ru" : "Китайская Н.Р.",
				"desc_ru" : ""
			}, {
				"mask" : "+57(###)###-####",
				"cc" : "CO",
				"name_en" : "Colombia",
				"desc_en" : "",
				"name_ru" : "Колумбия",
				"desc_ru" : ""
			}, {
				"mask" : "+506-####-####",
				"cc" : "CR",
				"name_en" : "Costa Rica",
				"desc_en" : "",
				"name_ru" : "Коста-Рика",
				"desc_ru" : ""
			}, {
				"mask" : "+53-#-###-####",
				"cc" : "CU",
				"name_en" : "Cuba",
				"desc_en" : "",
				"name_ru" : "Куба",
				"desc_ru" : ""
			}, {
				"mask" : "+238(###)##-##",
				"cc" : "CV",
				"name_en" : "Cape Verde",
				"desc_en" : "",
				"name_ru" : "Кабо-Верде",
				"desc_ru" : ""
			}, {
				"mask" : "+599-###-####",
				"cc" : "CW",
				"name_en" : "Curacao",
				"desc_en" : "",
				"name_ru" : "Кюрасао",
				"desc_ru" : ""
			}, {
				"mask" : "+357-##-###-###",
				"cc" : "CY",
				"name_en" : "Cyprus",
				"desc_en" : "",
				"name_ru" : "Кипр",
				"desc_ru" : ""
			}, {
				"mask" : "+420(###)###-###",
				"cc" : "CZ",
				"name_en" : "Czech Republic",
				"desc_en" : "",
				"name_ru" : "Чехия",
				"desc_ru" : ""
			}, {
				"mask" : "+49(####)###-####",
				"cc" : "DE",
				"name_en" : "Germany",
				"desc_en" : "",
				"name_ru" : "Германия",
				"desc_ru" : ""
			}, {
				"mask" : "+49(###)###-####",
				"cc" : "DE",
				"name_en" : "Germany",
				"desc_en" : "",
				"name_ru" : "Германия",
				"desc_ru" : ""
			}, {
				"mask" : "+49(###)##-####",
				"cc" : "DE",
				"name_en" : "Germany",
				"desc_en" : "",
				"name_ru" : "Германия",
				"desc_ru" : ""
			}, {
				"mask" : "+49(###)##-###",
				"cc" : "DE",
				"name_en" : "Germany",
				"desc_en" : "",
				"name_ru" : "Германия",
				"desc_ru" : ""
			}, {
				"mask" : "+49(###)##-##",
				"cc" : "DE",
				"name_en" : "Germany",
				"desc_en" : "",
				"name_ru" : "Германия",
				"desc_ru" : ""
			}, {
				"mask" : "+49-###-###",
				"cc" : "DE",
				"name_en" : "Germany",
				"desc_en" : "",
				"name_ru" : "Германия",
				"desc_ru" : ""
			}, {
				"mask" : "+253-##-##-##-##",
				"cc" : "DJ",
				"name_en" : "Djibouti",
				"desc_en" : "",
				"name_ru" : "Джибути",
				"desc_ru" : ""
			}, {
				"mask" : "+45-##-##-##-##",
				"cc" : "DK",
				"name_en" : "Denmark",
				"desc_en" : "",
				"name_ru" : "Дания",
				"desc_ru" : ""
			}, {
				"mask" : "+1(767)###-####",
				"cc" : "DM",
				"name_en" : "Dominica",
				"desc_en" : "",
				"name_ru" : "Доминика",
				"desc_ru" : ""
			}, {
				"mask" : "+1(809)###-####",
				"cc" : "DO",
				"name_en" : "Dominican Republic",
				"desc_en" : "",
				"name_ru" : "Доминиканская Республика",
				"desc_ru" : ""
			}, {
				"mask" : "+1(829)###-####",
				"cc" : "DO",
				"name_en" : "Dominican Republic",
				"desc_en" : "",
				"name_ru" : "Доминиканская Республика",
				"desc_ru" : ""
			}, {
				"mask" : "+1(849)###-####",
				"cc" : "DO",
				"name_en" : "Dominican Republic",
				"desc_en" : "",
				"name_ru" : "Доминиканская Республика",
				"desc_ru" : ""
			}, {
				"mask" : "+213-##-###-####",
				"cc" : "DZ",
				"name_en" : "Algeria",
				"desc_en" : "",
				"name_ru" : "Алжир",
				"desc_ru" : ""
			}, {
				"mask" : "+593-##-###-####",
				"cc" : "EC",
				"name_en" : "Ecuador ",
				"desc_en" : "mobile",
				"name_ru" : "Эквадор ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+593-#-###-####",
				"cc" : "EC",
				"name_en" : "Ecuador",
				"desc_en" : "",
				"name_ru" : "Эквадор",
				"desc_ru" : ""
			}, {
				"mask" : "+372-####-####",
				"cc" : "EE",
				"name_en" : "Estonia ",
				"desc_en" : "mobile",
				"name_ru" : "Эстония ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+372-###-####",
				"cc" : "EE",
				"name_en" : "Estonia",
				"desc_en" : "",
				"name_ru" : "Эстония",
				"desc_ru" : ""
			}, {
				"mask" : "+20(###)###-####",
				"cc" : "EG",
				"name_en" : "Egypt",
				"desc_en" : "",
				"name_ru" : "Египет",
				"desc_ru" : ""
			}, {
				"mask" : "+291-#-###-###",
				"cc" : "ER",
				"name_en" : "Eritrea",
				"desc_en" : "",
				"name_ru" : "Эритрея",
				"desc_ru" : ""
			}, {
				"mask" : "+34(###)###-###",
				"cc" : "ES",
				"name_en" : "Spain",
				"desc_en" : "",
				"name_ru" : "Испания",
				"desc_ru" : ""
			}, {
				"mask" : "+251-##-###-####",
				"cc" : "ET",
				"name_en" : "Ethiopia",
				"desc_en" : "",
				"name_ru" : "Эфиопия",
				"desc_ru" : ""
			}, {
				"mask" : "+358(###)###-##-##",
				"cc" : "FI",
				"name_en" : "Finland",
				"desc_en" : "",
				"name_ru" : "Финляндия",
				"desc_ru" : ""
			}, {
				"mask" : "+679-##-#####",
				"cc" : "FJ",
				"name_en" : "Fiji",
				"desc_en" : "",
				"name_ru" : "Фиджи",
				"desc_ru" : ""
			}, {
				"mask" : "+500-#####",
				"cc" : "FK",
				"name_en" : "Falkland Islands",
				"desc_en" : "",
				"name_ru" : "Фолклендские острова",
				"desc_ru" : ""
			}, {
				"mask" : "+691-###-####",
				"cc" : "FM",
				"name_en" : "F.S. Micronesia",
				"desc_en" : "",
				"name_ru" : "Ф.Ш. Микронезии",
				"desc_ru" : ""
			}, {
				"mask" : "+298-###-###",
				"cc" : "FO",
				"name_en" : "Faroe Islands",
				"desc_en" : "",
				"name_ru" : "Фарерские острова",
				"desc_ru" : ""
			}, {
				"mask" : "+262-#####-####",
				"cc" : "FR",
				"name_en" : "Mayotte",
				"desc_en" : "",
				"name_ru" : "Майотта",
				"desc_ru" : ""
			}, {
				"mask" : "+33(###)###-###",
				"cc" : "FR",
				"name_en" : "France",
				"desc_en" : "",
				"name_ru" : "Франция",
				"desc_ru" : ""
			}, {
				"mask" : "+508-##-####",
				"cc" : "FR",
				"name_en" : "St Pierre & Miquelon",
				"desc_en" : "",
				"name_ru" : "Сен-Пьер и Микелон",
				"desc_ru" : ""
			}, {
				"mask" : "+590(###)###-###",
				"cc" : "FR",
				"name_en" : "Guadeloupe",
				"desc_en" : "",
				"name_ru" : "Гваделупа",
				"desc_ru" : ""
			}, {
				"mask" : "+241-#-##-##-##",
				"cc" : "GA",
				"name_en" : "Gabon",
				"desc_en" : "",
				"name_ru" : "Габон",
				"desc_ru" : ""
			}, {
				"mask" : "+1(473)###-####",
				"cc" : "GD",
				"name_en" : "Grenada",
				"desc_en" : "",
				"name_ru" : "Гренада",
				"desc_ru" : ""
			}, {
				"mask" : "+995(###)###-###",
				"cc" : "GE",
				"name_en" : "Rep. of Georgia",
				"desc_en" : "",
				"name_ru" : "Грузия",
				"desc_ru" : ""
			}, {
				"mask" : "+594-#####-####",
				"cc" : "GF",
				"name_en" : "Guiana (French)",
				"desc_en" : "",
				"name_ru" : "Фр. Гвиана",
				"desc_ru" : ""
			}, {
				"mask" : "+233(###)###-###",
				"cc" : "GH",
				"name_en" : "Ghana",
				"desc_en" : "",
				"name_ru" : "Гана",
				"desc_ru" : ""
			}, {
				"mask" : "+350-###-#####",
				"cc" : "GI",
				"name_en" : "Gibraltar",
				"desc_en" : "",
				"name_ru" : "Гибралтар",
				"desc_ru" : ""
			}, {
				"mask" : "+299-##-##-##",
				"cc" : "GL",
				"name_en" : "Greenland",
				"desc_en" : "",
				"name_ru" : "Гренландия",
				"desc_ru" : ""
			}, {
				"mask" : "+220(###)##-##",
				"cc" : "GM",
				"name_en" : "Gambia",
				"desc_en" : "",
				"name_ru" : "Гамбия",
				"desc_ru" : ""
			}, {
				"mask" : "+224-##-###-###",
				"cc" : "GN",
				"name_en" : "Guinea",
				"desc_en" : "",
				"name_ru" : "Гвинея",
				"desc_ru" : ""
			}, {
				"mask" : "+240-##-###-####",
				"cc" : "GQ",
				"name_en" : "Equatorial Guinea",
				"desc_en" : "",
				"name_ru" : "Экваториальная Гвинея",
				"desc_ru" : ""
			}, {
				"mask" : "+30(###)###-####",
				"cc" : "GR",
				"name_en" : "Greece",
				"desc_en" : "",
				"name_ru" : "Греция",
				"desc_ru" : ""
			}, {
				"mask" : "+502-#-###-####",
				"cc" : "GT",
				"name_en" : "Guatemala",
				"desc_en" : "",
				"name_ru" : "Гватемала",
				"desc_ru" : ""
			}, {
				"mask" : "+1(671)###-####",
				"cc" : "GU",
				"name_en" : "Guam",
				"desc_en" : "",
				"name_ru" : "Гуам",
				"desc_ru" : ""
			}, {
				"mask" : "+245-#-######",
				"cc" : "GW",
				"name_en" : "Guinea-Bissau",
				"desc_en" : "",
				"name_ru" : "Гвинея-Бисау",
				"desc_ru" : ""
			}, {
				"mask" : "+592-###-####",
				"cc" : "GY",
				"name_en" : "Guyana",
				"desc_en" : "",
				"name_ru" : "Гайана",
				"desc_ru" : ""
			}, {
				"mask" : "+852-####-####",
				"cc" : "HK",
				"name_en" : "Hong Kong",
				"desc_en" : "",
				"name_ru" : "Гонконг",
				"desc_ru" : ""
			}, {
				"mask" : "+504-####-####",
				"cc" : "HN",
				"name_en" : "Honduras",
				"desc_en" : "",
				"name_ru" : "Гондурас",
				"desc_ru" : ""
			}, {
				"mask" : "+385-##-###-###",
				"cc" : "HR",
				"name_en" : "Croatia",
				"desc_en" : "",
				"name_ru" : "Хорватия",
				"desc_ru" : ""
			}, {
				"mask" : "+509-##-##-####",
				"cc" : "HT",
				"name_en" : "Haiti",
				"desc_en" : "",
				"name_ru" : "Гаити",
				"desc_ru" : ""
			}, {
				"mask" : "+36(###)###-###",
				"cc" : "HU",
				"name_en" : "Hungary",
				"desc_en" : "",
				"name_ru" : "Венгрия",
				"desc_ru" : ""
			}, {
				"mask" : "+62(8##)###-####",
				"cc" : "ID",
				"name_en" : "Indonesia ",
				"desc_en" : "mobile",
				"name_ru" : "Индонезия ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+62-##-###-##",
				"cc" : "ID",
				"name_en" : "Indonesia",
				"desc_en" : "",
				"name_ru" : "Индонезия",
				"desc_ru" : ""
			}, {
				"mask" : "+62-##-###-###",
				"cc" : "ID",
				"name_en" : "Indonesia",
				"desc_en" : "",
				"name_ru" : "Индонезия",
				"desc_ru" : ""
			}, {
				"mask" : "+62-##-###-####",
				"cc" : "ID",
				"name_en" : "Indonesia",
				"desc_en" : "",
				"name_ru" : "Индонезия",
				"desc_ru" : ""
			}, {
				"mask" : "+62(8##)###-###",
				"cc" : "ID",
				"name_en" : "Indonesia ",
				"desc_en" : "mobile",
				"name_ru" : "Индонезия ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+62(8##)###-##-###",
				"cc" : "ID",
				"name_en" : "Indonesia ",
				"desc_en" : "mobile",
				"name_ru" : "Индонезия ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+353(###)###-###",
				"cc" : "IE",
				"name_en" : "Ireland",
				"desc_en" : "",
				"name_ru" : "Ирландия",
				"desc_ru" : ""
			}, {
				"mask" : "+972-5#-###-####",
				"cc" : "IL",
				"name_en" : "Israel ",
				"desc_en" : "mobile",
				"name_ru" : "Израиль ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+972-#-###-####",
				"cc" : "IL",
				"name_en" : "Israel",
				"desc_en" : "",
				"name_ru" : "Израиль",
				"desc_ru" : ""
			}, {
				"mask" : "+91(####)###-###",
				"cc" : "IN",
				"name_en" : "India",
				"desc_en" : "",
				"name_ru" : "Индия",
				"desc_ru" : ""
			}, {
				"mask" : "+246-###-####",
				"cc" : "IO",
				"name_en" : "Diego Garcia",
				"desc_en" : "",
				"name_ru" : "Диего-Гарсия",
				"desc_ru" : ""
			}, {
				"mask" : "+964(###)###-####",
				"cc" : "IQ",
				"name_en" : "Iraq",
				"desc_en" : "",
				"name_ru" : "Ирак",
				"desc_ru" : ""
			}, {
				"mask" : "+98(###)###-####",
				"cc" : "IR",
				"name_en" : "Iran",
				"desc_en" : "",
				"name_ru" : "Иран",
				"desc_ru" : ""
			}, {
				"mask" : "+354-###-####",
				"cc" : "IS",
				"name_en" : "Iceland",
				"desc_en" : "",
				"name_ru" : "Исландия",
				"desc_ru" : ""
			}, {
				"mask" : "+39(###)####-###",
				"cc" : "IT",
				"name_en" : "Italy",
				"desc_en" : "",
				"name_ru" : "Италия",
				"desc_ru" : ""
			}, {
				"mask" : "+1(876)###-####",
				"cc" : "JM",
				"name_en" : "Jamaica",
				"desc_en" : "",
				"name_ru" : "Ямайка",
				"desc_ru" : ""
			}, {
				"mask" : "+962-#-####-####",
				"cc" : "JO",
				"name_en" : "Jordan",
				"desc_en" : "",
				"name_ru" : "Иордания",
				"desc_ru" : ""
			}, {
				"mask" : "+81-##-####-####",
				"cc" : "JP",
				"name_en" : "Japan ",
				"desc_en" : "mobile",
				"name_ru" : "Япония ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+81(###)###-###",
				"cc" : "JP",
				"name_en" : "Japan",
				"desc_en" : "",
				"name_ru" : "Япония",
				"desc_ru" : ""
			}, {
				"mask" : "+254-###-######",
				"cc" : "KE",
				"name_en" : "Kenya",
				"desc_en" : "",
				"name_ru" : "Кения",
				"desc_ru" : ""
			}, {
				"mask" : "+996(###)###-###",
				"cc" : "KG",
				"name_en" : "Kyrgyzstan",
				"desc_en" : "",
				"name_ru" : "Киргизия",
				"desc_ru" : ""
			}, {
				"mask" : "+855-##-###-###",
				"cc" : "KH",
				"name_en" : "Cambodia",
				"desc_en" : "",
				"name_ru" : "Камбоджа",
				"desc_ru" : ""
			}, {
				"mask" : "+686-##-###",
				"cc" : "KI",
				"name_en" : "Kiribati",
				"desc_en" : "",
				"name_ru" : "Кирибати",
				"desc_ru" : ""
			}, {
				"mask" : "+269-##-#####",
				"cc" : "KM",
				"name_en" : "Comoros",
				"desc_en" : "",
				"name_ru" : "Коморы",
				"desc_ru" : ""
			}, {
				"mask" : "+1(869)###-####",
				"cc" : "KN",
				"name_en" : "Saint Kitts & Nevis",
				"desc_en" : "",
				"name_ru" : "Сент-Китс и Невис",
				"desc_ru" : ""
			}, {
				"mask" : "+850-191-###-####",
				"cc" : "KP",
				"name_en" : "DPR Korea (North) ",
				"desc_en" : "mobile",
				"name_ru" : "Корейская НДР ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+850-##-###-###",
				"cc" : "KP",
				"name_en" : "DPR Korea (North)",
				"desc_en" : "",
				"name_ru" : "Корейская НДР",
				"desc_ru" : ""
			}, {
				"mask" : "+850-###-####-###",
				"cc" : "KP",
				"name_en" : "DPR Korea (North)",
				"desc_en" : "",
				"name_ru" : "Корейская НДР",
				"desc_ru" : ""
			}, {
				"mask" : "+850-###-###",
				"cc" : "KP",
				"name_en" : "DPR Korea (North)",
				"desc_en" : "",
				"name_ru" : "Корейская НДР",
				"desc_ru" : ""
			}, {
				"mask" : "+850-####-####",
				"cc" : "KP",
				"name_en" : "DPR Korea (North)",
				"desc_en" : "",
				"name_ru" : "Корейская НДР",
				"desc_ru" : ""
			}, {
				"mask" : "+850-####-#############",
				"cc" : "KP",
				"name_en" : "DPR Korea (North)",
				"desc_en" : "",
				"name_ru" : "Корейская НДР",
				"desc_ru" : ""
			}, {
				"mask" : "+82-##-###-####",
				"cc" : "KR",
				"name_en" : "Korea (South)",
				"desc_en" : "",
				"name_ru" : "Респ. Корея",
				"desc_ru" : ""
			}, {
				"mask" : "+965-####-####",
				"cc" : "KW",
				"name_en" : "Kuwait",
				"desc_en" : "",
				"name_ru" : "Кувейт",
				"desc_ru" : ""
			}, {
				"mask" : "+1(345)###-####",
				"cc" : "KY",
				"name_en" : "Cayman Islands",
				"desc_en" : "",
				"name_ru" : "Каймановы острова",
				"desc_ru" : ""
			}, {
				"mask" : "+7(6##)###-##-##",
				"cc" : "KZ",
				"name_en" : "Kazakhstan",
				"desc_en" : "",
				"name_ru" : "Казахстан",
				"desc_ru" : ""
			}, {
				"mask" : "+7(7##)###-##-##",
				"cc" : "KZ",
				"name_en" : "Kazakhstan",
				"desc_en" : "",
				"name_ru" : "Казахстан",
				"desc_ru" : ""
			}, {
				"mask" : "+856(20##)###-###",
				"cc" : "LA",
				"name_en" : "Laos ",
				"desc_en" : "mobile",
				"name_ru" : "Лаос ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+856-##-###-###",
				"cc" : "LA",
				"name_en" : "Laos",
				"desc_en" : "",
				"name_ru" : "Лаос",
				"desc_ru" : ""
			}, {
				"mask" : "+961-##-###-###",
				"cc" : "LB",
				"name_en" : "Lebanon ",
				"desc_en" : "mobile",
				"name_ru" : "Ливан ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+961-#-###-###",
				"cc" : "LB",
				"name_en" : "Lebanon",
				"desc_en" : "",
				"name_ru" : "Ливан",
				"desc_ru" : ""
			}, {
				"mask" : "+1(758)###-####",
				"cc" : "LC",
				"name_en" : "Saint Lucia",
				"desc_en" : "",
				"name_ru" : "Сент-Люсия",
				"desc_ru" : ""
			}, {
				"mask" : "+423(###)###-####",
				"cc" : "LI",
				"name_en" : "Liechtenstein",
				"desc_en" : "",
				"name_ru" : "Лихтенштейн",
				"desc_ru" : ""
			}, {
				"mask" : "+94-##-###-####",
				"cc" : "LK",
				"name_en" : "Sri Lanka",
				"desc_en" : "",
				"name_ru" : "Шри-Ланка",
				"desc_ru" : ""
			}, {
				"mask" : "+231-##-###-###",
				"cc" : "LR",
				"name_en" : "Liberia",
				"desc_en" : "",
				"name_ru" : "Либерия",
				"desc_ru" : ""
			}, {
				"mask" : "+266-#-###-####",
				"cc" : "LS",
				"name_en" : "Lesotho",
				"desc_en" : "",
				"name_ru" : "Лесото",
				"desc_ru" : ""
			}, {
				"mask" : "+370(###)##-###",
				"cc" : "LT",
				"name_en" : "Lithuania",
				"desc_en" : "",
				"name_ru" : "Литва",
				"desc_ru" : ""
			}, {
				"mask" : "+352(###)###-###",
				"cc" : "LU",
				"name_en" : "Luxembourg",
				"desc_en" : "",
				"name_ru" : "Люксембург",
				"desc_ru" : ""
			}, {
				"mask" : "+371-##-###-###",
				"cc" : "LV",
				"name_en" : "Latvia",
				"desc_en" : "",
				"name_ru" : "Латвия",
				"desc_ru" : ""
			}, {
				"mask" : "+218-##-###-###",
				"cc" : "LY",
				"name_en" : "Libya",
				"desc_en" : "",
				"name_ru" : "Ливия",
				"desc_ru" : ""
			}, {
				"mask" : "+218-21-###-####",
				"cc" : "LY",
				"name_en" : "Libya",
				"desc_en" : "Tripoli",
				"name_ru" : "Ливия",
				"desc_ru" : "Триполи"
			}, {
				"mask" : "+212-##-####-###",
				"cc" : "MA",
				"name_en" : "Morocco",
				"desc_en" : "",
				"name_ru" : "Марокко",
				"desc_ru" : ""
			}, {
				"mask" : "+377(###)###-###",
				"cc" : "MC",
				"name_en" : "Monaco",
				"desc_en" : "",
				"name_ru" : "Монако",
				"desc_ru" : ""
			}, {
				"mask" : "+377-##-###-###",
				"cc" : "MC",
				"name_en" : "Monaco",
				"desc_en" : "",
				"name_ru" : "Монако",
				"desc_ru" : ""
			}, {
				"mask" : "+373-####-####",
				"cc" : "MD",
				"name_en" : "Moldova",
				"desc_en" : "",
				"name_ru" : "Молдова",
				"desc_ru" : ""
			}, {
				"mask" : "+382-##-###-###",
				"cc" : "ME",
				"name_en" : "Montenegro",
				"desc_en" : "",
				"name_ru" : "Черногория",
				"desc_ru" : ""
			}, {
				"mask" : "+261-##-##-#####",
				"cc" : "MG",
				"name_en" : "Madagascar",
				"desc_en" : "",
				"name_ru" : "Мадагаскар",
				"desc_ru" : ""
			}, {
				"mask" : "+692-###-####",
				"cc" : "MH",
				"name_en" : "Marshall Islands",
				"desc_en" : "",
				"name_ru" : "Маршалловы Острова",
				"desc_ru" : ""
			}, {
				"mask" : "+389-##-###-###",
				"cc" : "MK",
				"name_en" : "Republic of Macedonia",
				"desc_en" : "",
				"name_ru" : "Респ. Македония",
				"desc_ru" : ""
			}, {
				"mask" : "+223-##-##-####",
				"cc" : "ML",
				"name_en" : "Mali",
				"desc_en" : "",
				"name_ru" : "Мали",
				"desc_ru" : ""
			}, {
				"mask" : "+95-##-###-###",
				"cc" : "MM",
				"name_en" : "Burma (Myanmar)",
				"desc_en" : "",
				"name_ru" : "Бирма (Мьянма)",
				"desc_ru" : ""
			}, {
				"mask" : "+95-#-###-###",
				"cc" : "MM",
				"name_en" : "Burma (Myanmar)",
				"desc_en" : "",
				"name_ru" : "Бирма (Мьянма)",
				"desc_ru" : ""
			}, {
				"mask" : "+95-###-###",
				"cc" : "MM",
				"name_en" : "Burma (Myanmar)",
				"desc_en" : "",
				"name_ru" : "Бирма (Мьянма)",
				"desc_ru" : ""
			}, {
				"mask" : "+976-##-##-####",
				"cc" : "MN",
				"name_en" : "Mongolia",
				"desc_en" : "",
				"name_ru" : "Монголия",
				"desc_ru" : ""
			}, {
				"mask" : "+853-####-####",
				"cc" : "MO",
				"name_en" : "Macau",
				"desc_en" : "",
				"name_ru" : "Макао",
				"desc_ru" : ""
			}, {
				"mask" : "+1(670)###-####",
				"cc" : "MP",
				"name_en" : "Northern Mariana Islands",
				"desc_en" : "",
				"name_ru" : "Северные Марианские острова Сайпан",
				"desc_ru" : ""
			}, {
				"mask" : "+596(###)##-##-##",
				"cc" : "MQ",
				"name_en" : "Martinique",
				"desc_en" : "",
				"name_ru" : "Мартиника",
				"desc_ru" : ""
			}, {
				"mask" : "+222-##-##-####",
				"cc" : "MR",
				"name_en" : "Mauritania",
				"desc_en" : "",
				"name_ru" : "Мавритания",
				"desc_ru" : ""
			}, {
				"mask" : "+1(664)###-####",
				"cc" : "MS",
				"name_en" : "Montserrat",
				"desc_en" : "",
				"name_ru" : "Монтсеррат",
				"desc_ru" : ""
			}, {
				"mask" : "+356-####-####",
				"cc" : "MT",
				"name_en" : "Malta",
				"desc_en" : "",
				"name_ru" : "Мальта",
				"desc_ru" : ""
			}, {
				"mask" : "+230-###-####",
				"cc" : "MU",
				"name_en" : "Mauritius",
				"desc_en" : "",
				"name_ru" : "Маврикий",
				"desc_ru" : ""
			}, {
				"mask" : "+960-###-####",
				"cc" : "MV",
				"name_en" : "Maldives",
				"desc_en" : "",
				"name_ru" : "Мальдивские острова",
				"desc_ru" : ""
			}, {
				"mask" : "+265-1-###-###",
				"cc" : "MW",
				"name_en" : "Malawi",
				"desc_en" : "Telecom Ltd",
				"name_ru" : "Малави",
				"desc_ru" : "Telecom Ltd"
			}, {
				"mask" : "+265-#-####-####",
				"cc" : "MW",
				"name_en" : "Malawi",
				"desc_en" : "",
				"name_ru" : "Малави",
				"desc_ru" : ""
			}, {
				"mask" : "+52(###)###-####",
				"cc" : "MX",
				"name_en" : "Mexico",
				"desc_en" : "",
				"name_ru" : "Мексика",
				"desc_ru" : ""
			}, {
				"mask" : "+52-##-##-####",
				"cc" : "MX",
				"name_en" : "Mexico",
				"desc_en" : "",
				"name_ru" : "Мексика",
				"desc_ru" : ""
			}, {
				"mask" : "+60-##-###-####",
				"cc" : "MY",
				"name_en" : "Malaysia ",
				"desc_en" : "mobile",
				"name_ru" : "Малайзия ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+60(###)###-###",
				"cc" : "MY",
				"name_en" : "Malaysia",
				"desc_en" : "",
				"name_ru" : "Малайзия",
				"desc_ru" : ""
			}, {
				"mask" : "+60-##-###-###",
				"cc" : "MY",
				"name_en" : "Malaysia",
				"desc_en" : "",
				"name_ru" : "Малайзия",
				"desc_ru" : ""
			}, {
				"mask" : "+60-#-###-###",
				"cc" : "MY",
				"name_en" : "Malaysia",
				"desc_en" : "",
				"name_ru" : "Малайзия",
				"desc_ru" : ""
			}, {
				"mask" : "+258-##-###-###",
				"cc" : "MZ",
				"name_en" : "Mozambique",
				"desc_en" : "",
				"name_ru" : "Мозамбик",
				"desc_ru" : ""
			}, {
				"mask" : "+264-##-###-####",
				"cc" : "NA",
				"name_en" : "Namibia",
				"desc_en" : "",
				"name_ru" : "Намибия",
				"desc_ru" : ""
			}, {
				"mask" : "+687-##-####",
				"cc" : "NC",
				"name_en" : "New Caledonia",
				"desc_en" : "",
				"name_ru" : "Новая Каледония",
				"desc_ru" : ""
			}, {
				"mask" : "+227-##-##-####",
				"cc" : "NE",
				"name_en" : "Niger",
				"desc_en" : "",
				"name_ru" : "Нигер",
				"desc_ru" : ""
			}, {
				"mask" : "+672-3##-###",
				"cc" : "NF",
				"name_en" : "Norfolk Island",
				"desc_en" : "",
				"name_ru" : "Норфолк (остров)",
				"desc_ru" : ""
			}, {
				"mask" : "+234(###)###-####",
				"cc" : "NG",
				"name_en" : "Nigeria",
				"desc_en" : "",
				"name_ru" : "Нигерия",
				"desc_ru" : ""
			}, {
				"mask" : "+234-##-###-###",
				"cc" : "NG",
				"name_en" : "Nigeria",
				"desc_en" : "",
				"name_ru" : "Нигерия",
				"desc_ru" : ""
			}, {
				"mask" : "+234-##-###-##",
				"cc" : "NG",
				"name_en" : "Nigeria",
				"desc_en" : "",
				"name_ru" : "Нигерия",
				"desc_ru" : ""
			}, {
				"mask" : "+234(###)###-####",
				"cc" : "NG",
				"name_en" : "Nigeria ",
				"desc_en" : "mobile",
				"name_ru" : "Нигерия ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+505-####-####",
				"cc" : "NI",
				"name_en" : "Nicaragua",
				"desc_en" : "",
				"name_ru" : "Никарагуа",
				"desc_ru" : ""
			}, {
				"mask" : "+31-##-###-####",
				"cc" : "NL",
				"name_en" : "Netherlands",
				"desc_en" : "",
				"name_ru" : "Нидерланды",
				"desc_ru" : ""
			}, {
				"mask" : "+47(###)##-###",
				"cc" : "NO",
				"name_en" : "Norway",
				"desc_en" : "",
				"name_ru" : "Норвегия",
				"desc_ru" : ""
			}, {
				"mask" : "+977-##-###-###",
				"cc" : "NP",
				"name_en" : "Nepal",
				"desc_en" : "",
				"name_ru" : "Непал",
				"desc_ru" : ""
			}, {
				"mask" : "+674-###-####",
				"cc" : "NR",
				"name_en" : "Nauru",
				"desc_en" : "",
				"name_ru" : "Науру",
				"desc_ru" : ""
			}, {
				"mask" : "+683-####",
				"cc" : "NU",
				"name_en" : "Niue",
				"desc_en" : "",
				"name_ru" : "Ниуэ",
				"desc_ru" : ""
			}, {
				"mask" : "+64(###)###-###",
				"cc" : "NZ",
				"name_en" : "New Zealand",
				"desc_en" : "",
				"name_ru" : "Новая Зеландия",
				"desc_ru" : ""
			}, {
				"mask" : "+64-##-###-###",
				"cc" : "NZ",
				"name_en" : "New Zealand",
				"desc_en" : "",
				"name_ru" : "Новая Зеландия",
				"desc_ru" : ""
			}, {
				"mask" : "+64(###)###-####",
				"cc" : "NZ",
				"name_en" : "New Zealand",
				"desc_en" : "",
				"name_ru" : "Новая Зеландия",
				"desc_ru" : ""
			}, {
				"mask" : "+968-##-###-###",
				"cc" : "OM",
				"name_en" : "Oman",
				"desc_en" : "",
				"name_ru" : "Оман",
				"desc_ru" : ""
			}, {
				"mask" : "+507-###-####",
				"cc" : "PA",
				"name_en" : "Panama",
				"desc_en" : "",
				"name_ru" : "Панама",
				"desc_ru" : ""
			}, {
				"mask" : "+51(###)###-###",
				"cc" : "PE",
				"name_en" : "Peru",
				"desc_en" : "",
				"name_ru" : "Перу",
				"desc_ru" : ""
			}, {
				"mask" : "+689-##-##-##",
				"cc" : "PF",
				"name_en" : "French Polynesia",
				"desc_en" : "",
				"name_ru" : "Французская Полинезия (Таити)",
				"desc_ru" : ""
			}, {
				"mask" : "+675(###)##-###",
				"cc" : "PG",
				"name_en" : "Papua New Guinea",
				"desc_en" : "",
				"name_ru" : "Папуа-Новая Гвинея",
				"desc_ru" : ""
			}, {
				"mask" : "+63(###)###-####",
				"cc" : "PH",
				"name_en" : "Philippines",
				"desc_en" : "",
				"name_ru" : "Филиппины",
				"desc_ru" : ""
			}, {
				"mask" : "+92(###)###-####",
				"cc" : "PK",
				"name_en" : "Pakistan",
				"desc_en" : "",
				"name_ru" : "Пакистан",
				"desc_ru" : ""
			}, {
				"mask" : "+48(###)###-###",
				"cc" : "PL",
				"name_en" : "Poland",
				"desc_en" : "",
				"name_ru" : "Польша",
				"desc_ru" : ""
			}, {
				"mask" : "+970-##-###-####",
				"cc" : "PS",
				"name_en" : "Palestine",
				"desc_en" : "",
				"name_ru" : "Палестина",
				"desc_ru" : ""
			}, {
				"mask" : "+351-##-###-####",
				"cc" : "PT",
				"name_en" : "Portugal",
				"desc_en" : "",
				"name_ru" : "Португалия",
				"desc_ru" : ""
			}, {
				"mask" : "+680-###-####",
				"cc" : "PW",
				"name_en" : "Palau",
				"desc_en" : "",
				"name_ru" : "Палау",
				"desc_ru" : ""
			}, {
				"mask" : "+595(###)###-###",
				"cc" : "PY",
				"name_en" : "Paraguay",
				"desc_en" : "",
				"name_ru" : "Парагвай",
				"desc_ru" : ""
			}, {
				"mask" : "+974-####-####",
				"cc" : "QA",
				"name_en" : "Qatar",
				"desc_en" : "",
				"name_ru" : "Катар",
				"desc_ru" : ""
			}, {
				"mask" : "+262-#####-####",
				"cc" : "RE",
				"name_en" : "Reunion",
				"desc_en" : "",
				"name_ru" : "Реюньон",
				"desc_ru" : ""
			}, {
				"mask" : "+40-##-###-####",
				"cc" : "RO",
				"name_en" : "Romania",
				"desc_en" : "",
				"name_ru" : "Румыния",
				"desc_ru" : ""
			}, {
				"mask" : "+381-##-###-####",
				"cc" : "RS",
				"name_en" : "Serbia",
				"desc_en" : "",
				"name_ru" : "Сербия",
				"desc_ru" : ""
			}, {
				"mask" : "+7(###)###-##-##",
				"cc" : "RU",
				"name_en" : "Russia",
				"desc_en" : "",
				"name_ru" : "Россия",
				"desc_ru" : ""
			}, {
				"mask" : "+250(###)###-###",
				"cc" : "RW",
				"name_en" : "Rwanda",
				"desc_en" : "",
				"name_ru" : "Руанда",
				"desc_ru" : ""
			}, {
				"mask" : "+966-5-####-####",
				"cc" : "SA",
				"name_en" : "Saudi Arabia ",
				"desc_en" : "mobile",
				"name_ru" : "Саудовская Аравия ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+966-#-###-####",
				"cc" : "SA",
				"name_en" : "Saudi Arabia",
				"desc_en" : "",
				"name_ru" : "Саудовская Аравия",
				"desc_ru" : ""
			}, {
				"mask" : "+677-###-####",
				"cc" : "SB",
				"name_en" : "Solomon Islands ",
				"desc_en" : "mobile",
				"name_ru" : "Соломоновы Острова ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+677-#####",
				"cc" : "SB",
				"name_en" : "Solomon Islands",
				"desc_en" : "",
				"name_ru" : "Соломоновы Острова",
				"desc_ru" : ""
			}, {
				"mask" : "+248-#-###-###",
				"cc" : "SC",
				"name_en" : "Seychelles",
				"desc_en" : "",
				"name_ru" : "Сейшелы",
				"desc_ru" : ""
			}, {
				"mask" : "+249-##-###-####",
				"cc" : "SD",
				"name_en" : "Sudan",
				"desc_en" : "",
				"name_ru" : "Судан",
				"desc_ru" : ""
			}, {
				"mask" : "+46-##-###-####",
				"cc" : "SE",
				"name_en" : "Sweden",
				"desc_en" : "",
				"name_ru" : "Швеция",
				"desc_ru" : ""
			}, {
				"mask" : "+65-####-####",
				"cc" : "SG",
				"name_en" : "Singapore",
				"desc_en" : "",
				"name_ru" : "Сингапур",
				"desc_ru" : ""
			}, {
				"mask" : "+290-####",
				"cc" : "SH",
				"name_en" : "Saint Helena",
				"desc_en" : "",
				"name_ru" : "Остров Святой Елены",
				"desc_ru" : ""
			}, {
				"mask" : "+290-####",
				"cc" : "SH",
				"name_en" : "Tristan da Cunha",
				"desc_en" : "",
				"name_ru" : "Тристан-да-Кунья",
				"desc_ru" : ""
			}, {
				"mask" : "+386-##-###-###",
				"cc" : "SI",
				"name_en" : "Slovenia",
				"desc_en" : "",
				"name_ru" : "Словения",
				"desc_ru" : ""
			}, {
				"mask" : "+421(###)###-###",
				"cc" : "SK",
				"name_en" : "Slovakia",
				"desc_en" : "",
				"name_ru" : "Словакия",
				"desc_ru" : ""
			}, {
				"mask" : "+232-##-######",
				"cc" : "SL",
				"name_en" : "Sierra Leone",
				"desc_en" : "",
				"name_ru" : "Сьерра-Леоне",
				"desc_ru" : ""
			}, {
				"mask" : "+378-####-######",
				"cc" : "SM",
				"name_en" : "San Marino",
				"desc_en" : "",
				"name_ru" : "Сан-Марино",
				"desc_ru" : ""
			}, {
				"mask" : "+221-##-###-####",
				"cc" : "SN",
				"name_en" : "Senegal",
				"desc_en" : "",
				"name_ru" : "Сенегал",
				"desc_ru" : ""
			}, {
				"mask" : "+252-##-###-###",
				"cc" : "SO",
				"name_en" : "Somalia",
				"desc_en" : "",
				"name_ru" : "Сомали",
				"desc_ru" : ""
			}, {
				"mask" : "+252-#-###-###",
				"cc" : "SO",
				"name_en" : "Somalia",
				"desc_en" : "",
				"name_ru" : "Сомали",
				"desc_ru" : ""
			}, {
				"mask" : "+252-#-###-###",
				"cc" : "SO",
				"name_en" : "Somalia ",
				"desc_en" : "mobile",
				"name_ru" : "Сомали ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+597-###-####",
				"cc" : "SR",
				"name_en" : "Suriname ",
				"desc_en" : "mobile",
				"name_ru" : "Суринам ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+597-###-###",
				"cc" : "SR",
				"name_en" : "Suriname",
				"desc_en" : "",
				"name_ru" : "Суринам",
				"desc_ru" : ""
			}, {
				"mask" : "+211-##-###-####",
				"cc" : "SS",
				"name_en" : "South Sudan",
				"desc_en" : "",
				"name_ru" : "Южный Судан",
				"desc_ru" : ""
			}, {
				"mask" : "+239-##-#####",
				"cc" : "ST",
				"name_en" : "Sao Tome and Principe",
				"desc_en" : "",
				"name_ru" : "Сан-Томе и Принсипи",
				"desc_ru" : ""
			}, {
				"mask" : "+503-##-##-####",
				"cc" : "SV",
				"name_en" : "El Salvador",
				"desc_en" : "",
				"name_ru" : "Сальвадор",
				"desc_ru" : ""
			}, {
				"mask" : "+1(721)###-####",
				"cc" : "SX",
				"name_en" : "Sint Maarten",
				"desc_en" : "",
				"name_ru" : "Синт-Маартен",
				"desc_ru" : ""
			}, {
				"mask" : "+963-##-####-###",
				"cc" : "SY",
				"name_en" : "Syrian Arab Republic",
				"desc_en" : "",
				"name_ru" : "Сирийская арабская республика",
				"desc_ru" : ""
			}, {
				"mask" : "+268-##-##-####",
				"cc" : "SZ",
				"name_en" : "Swaziland",
				"desc_en" : "",
				"name_ru" : "Свазиленд",
				"desc_ru" : ""
			}, {
				"mask" : "+1(649)###-####",
				"cc" : "TC",
				"name_en" : "Turks & Caicos",
				"desc_en" : "",
				"name_ru" : "Тёркс и Кайкос",
				"desc_ru" : ""
			}, {
				"mask" : "+235-##-##-##-##",
				"cc" : "TD",
				"name_en" : "Chad",
				"desc_en" : "",
				"name_ru" : "Чад",
				"desc_ru" : ""
			}, {
				"mask" : "+228-##-###-###",
				"cc" : "TG",
				"name_en" : "Togo",
				"desc_en" : "",
				"name_ru" : "Того",
				"desc_ru" : ""
			}, {
				"mask" : "+66-##-###-####",
				"cc" : "TH",
				"name_en" : "Thailand ",
				"desc_en" : "mobile",
				"name_ru" : "Таиланд ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+66-##-###-###",
				"cc" : "TH",
				"name_en" : "Thailand",
				"desc_en" : "",
				"name_ru" : "Таиланд",
				"desc_ru" : ""
			}, {
				"mask" : "+992-##-###-####",
				"cc" : "TJ",
				"name_en" : "Tajikistan",
				"desc_en" : "",
				"name_ru" : "Таджикистан",
				"desc_ru" : ""
			}, {
				"mask" : "+690-####",
				"cc" : "TK",
				"name_en" : "Tokelau",
				"desc_en" : "",
				"name_ru" : "Токелау",
				"desc_ru" : ""
			}, {
				"mask" : "+670-###-####",
				"cc" : "TL",
				"name_en" : "East Timor",
				"desc_en" : "",
				"name_ru" : "Восточный Тимор",
				"desc_ru" : ""
			}, {
				"mask" : "+670-77#-#####",
				"cc" : "TL",
				"name_en" : "East Timor",
				"desc_en" : "Timor Telecom",
				"name_ru" : "Восточный Тимор",
				"desc_ru" : "Timor Telecom"
			}, {
				"mask" : "+670-78#-#####",
				"cc" : "TL",
				"name_en" : "East Timor",
				"desc_en" : "Timor Telecom",
				"name_ru" : "Восточный Тимор",
				"desc_ru" : "Timor Telecom"
			}, {
				"mask" : "+993-#-###-####",
				"cc" : "TM",
				"name_en" : "Turkmenistan",
				"desc_en" : "",
				"name_ru" : "Туркменистан",
				"desc_ru" : ""
			}, {
				"mask" : "+216-##-###-###",
				"cc" : "TN",
				"name_en" : "Tunisia",
				"desc_en" : "",
				"name_ru" : "Тунис",
				"desc_ru" : ""
			}, {
				"mask" : "+676-#####",
				"cc" : "TO",
				"name_en" : "Tonga",
				"desc_en" : "",
				"name_ru" : "Тонга",
				"desc_ru" : ""
			}, {
				"mask" : "+90(###)###-####",
				"cc" : "TR",
				"name_en" : "Turkey",
				"desc_en" : "",
				"name_ru" : "Турция",
				"desc_ru" : ""
			}, {
				"mask" : "+1(868)###-####",
				"cc" : "TT",
				"name_en" : "Trinidad & Tobago",
				"desc_en" : "",
				"name_ru" : "Тринидад и Тобаго",
				"desc_ru" : ""
			}, {
				"mask" : "+688-90####",
				"cc" : "TV",
				"name_en" : "Tuvalu ",
				"desc_en" : "mobile",
				"name_ru" : "Тувалу ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+688-2####",
				"cc" : "TV",
				"name_en" : "Tuvalu",
				"desc_en" : "",
				"name_ru" : "Тувалу",
				"desc_ru" : ""
			}, {
				"mask" : "+886-#-####-####",
				"cc" : "TW",
				"name_en" : "Taiwan",
				"desc_en" : "",
				"name_ru" : "Тайвань",
				"desc_ru" : ""
			}, {
				"mask" : "+886-####-####",
				"cc" : "TW",
				"name_en" : "Taiwan",
				"desc_en" : "",
				"name_ru" : "Тайвань",
				"desc_ru" : ""
			}, {
				"mask" : "+255-##-###-####",
				"cc" : "TZ",
				"name_en" : "Tanzania",
				"desc_en" : "",
				"name_ru" : "Танзания",
				"desc_ru" : ""
			}, {
				"mask" : "+380(##)###-##-##",
				"cc" : "UA",
				"name_en" : "Ukraine",
				"desc_en" : "",
				"name_ru" : "Украина",
				"desc_ru" : ""
			}, {
				"mask" : "+256(###)###-###",
				"cc" : "UG",
				"name_en" : "Uganda",
				"desc_en" : "",
				"name_ru" : "Уганда",
				"desc_ru" : ""
			}, {
				"mask" : "+44-##-####-####",
				"cc" : "UK",
				"name_en" : "United Kingdom",
				"desc_en" : "",
				"name_ru" : "Великобритания",
				"desc_ru" : ""
			}, {
				"mask" : "+598-#-###-##-##",
				"cc" : "UY",
				"name_en" : "Uruguay",
				"desc_en" : "",
				"name_ru" : "Уругвай",
				"desc_ru" : ""
			}, {
				"mask" : "+998-##-###-####",
				"cc" : "UZ",
				"name_en" : "Uzbekistan",
				"desc_en" : "",
				"name_ru" : "Узбекистан",
				"desc_ru" : ""
			}, {
				"mask" : "+39-6-698-#####",
				"cc" : "VA",
				"name_en" : "Vatican City",
				"desc_en" : "",
				"name_ru" : "Ватикан",
				"desc_ru" : ""
			}, {
				"mask" : "+1(784)###-####",
				"cc" : "VC",
				"name_en" : "Saint Vincent & the Grenadines",
				"desc_en" : "",
				"name_ru" : "Сент-Винсент и Гренадины",
				"desc_ru" : ""
			}, {
				"mask" : "+58(###)###-####",
				"cc" : "VE",
				"name_en" : "Venezuela",
				"desc_en" : "",
				"name_ru" : "Венесуэла",
				"desc_ru" : ""
			}, {
				"mask" : "+1(284)###-####",
				"cc" : "VG",
				"name_en" : "British Virgin Islands",
				"desc_en" : "",
				"name_ru" : "Британские Виргинские острова",
				"desc_ru" : ""
			}, {
				"mask" : "+1(340)###-####",
				"cc" : "VI",
				"name_en" : "US Virgin Islands",
				"desc_en" : "",
				"name_ru" : "Американские Виргинские острова",
				"desc_ru" : ""
			}, {
				"mask" : "+84-##-####-###",
				"cc" : "VN",
				"name_en" : "Vietnam",
				"desc_en" : "",
				"name_ru" : "Вьетнам",
				"desc_ru" : ""
			}, {
				"mask" : "+84(###)####-###",
				"cc" : "VN",
				"name_en" : "Vietnam",
				"desc_en" : "",
				"name_ru" : "Вьетнам",
				"desc_ru" : ""
			}, {
				"mask" : "+678-##-#####",
				"cc" : "VU",
				"name_en" : "Vanuatu ",
				"desc_en" : "mobile",
				"name_ru" : "Вануату ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+678-#####",
				"cc" : "VU",
				"name_en" : "Vanuatu",
				"desc_en" : "",
				"name_ru" : "Вануату",
				"desc_ru" : ""
			}, {
				"mask" : "+681-##-####",
				"cc" : "WF",
				"name_en" : "Wallis and Futuna",
				"desc_en" : "",
				"name_ru" : "Уоллис и Футуна",
				"desc_ru" : ""
			}, {
				"mask" : "+685-##-####",
				"cc" : "WS",
				"name_en" : "Samoa",
				"desc_en" : "",
				"name_ru" : "Самоа",
				"desc_ru" : ""
			}, {
				"mask" : "+967-###-###-###",
				"cc" : "YE",
				"name_en" : "Yemen ",
				"desc_en" : "mobile",
				"name_ru" : "Йемен ",
				"desc_ru" : "мобильные"
			}, {
				"mask" : "+967-#-###-###",
				"cc" : "YE",
				"name_en" : "Yemen",
				"desc_en" : "",
				"name_ru" : "Йемен",
				"desc_ru" : ""
			}, {
				"mask" : "+967-##-###-###",
				"cc" : "YE",
				"name_en" : "Yemen",
				"desc_en" : "",
				"name_ru" : "Йемен",
				"desc_ru" : ""
			}, {
				"mask" : "+27-##-###-####",
				"cc" : "ZA",
				"name_en" : "South Africa",
				"desc_en" : "",
				"name_ru" : "Южно-Африканская Респ.",
				"desc_ru" : ""
			}, {
				"mask" : "+260-##-###-####",
				"cc" : "ZM",
				"name_en" : "Zambia",
				"desc_en" : "",
				"name_ru" : "Замбия",
				"desc_ru" : ""
			}, {
				"mask" : "+263-#-######",
				"cc" : "ZW",
				"name_en" : "Zimbabwe",
				"desc_en" : "",
				"name_ru" : "Зимбабве",
				"desc_ru" : ""
			}, {
				"mask" : "+1(###)###-####",
				"cc" : [ "US", "CA" ],
				"name_en" : "USA and Canada",
				"desc_en" : "",
				"name_ru" : "США и Канада",
				"desc_ru" : ""
			} ];
		}(Tygh, Tygh.$));
	</script>


	<!-- Inline scripts -->
	<script type="text/javascript"
		src="js/product_filters.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/jquery.ui.touch-punch.min.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/exceptions.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/product_image_gallery.js?ver=4.3.1"></script>
	<script type="text/javascript" src="js/custom.js?ver=4.3.1"></script>
	<script type="text/javascript" src="js/scrolltop.min.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/tm_jquery.flexslider.min.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/jquery.parallax-1.1.3.js?ver=4.3.1"></script>
	<script type="text/javascript" src="js/waypoints.min.js?ver=4.3.1"></script>
	<script type="text/javascript" src="js/inview.js?ver=4.3.1"></script>


	<!-- Megnor Update Start -->
	<script type="text/javascript"
		src="js/custom.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/scrolltop.min.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/tm_jquery.flexslider.min.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/jquery.parallax-1.1.3.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/waypoints.min.js?ver=4.3.1"></script>
	<script type="text/javascript"
		src="js/inview.js?ver=4.3.1"></script>

	<!-- Megnor Update End -->

	<!-- Megnor Update Start -->
	<span class="grid_default_width"
		style="display: none; visibility: hidden"></span>
	<!-- Megnor Update Start -->

</body>

</html>
