<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="h" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]><html class="ie6" dir="ltr" lang="en"><![endif]-->
<!--[if IE 7]><html class="ie7" dir="ltr" lang="en"><![endif]-->
<!--[if IE 8]><html class="ie8" dir="ltr" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html  dir="ltr" lang="en"><!--<![endif]--><html lang="en">
<head>
<title>Cart contents</title>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" data-ca-mode="free" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

<meta name="description" content="" />


<meta name="keywords" content="" />

<meta name="robots" content="noindex" />





<link href="" rel="shortcut icon" type="application/octet-stream" />
<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
<link type="text/css" rel="stylesheet" href="css/standalone.5fb66ce8915f0ef09c359b10cce34ba01433851241.css?t=1465976671" />
<script>

function change(x,y,z){
	
	var amountId = document.getElementById("sp_"+x);
	var quantityId = document.getElementById("txt_"+x);
console.log(x);
console.log(y);
console.log(quantityId.value);
console.log(amountId);
	amountId.innerHTML = (parseFloat(quantityId.value)+z)*parseFloat(y);
	
}
</script>
<script>
	function removeWish(x) {
		var removeWish = document.getElementById("rowId"+x).value;
		
		
		var http_request = new XMLHttpRequest();
	
		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
                //var a=1;
				console.log(http_request.responseText);
				
				var jsonObj = JSON.parse(http_request.responseText);
				alert(jsonObj);
				
				for (var i = 0; i < jsonObj.length; i++) {
					
					var create = document.createElement("option");
				
					create.value = jsonObj[i].sid;
					
					create.text = jsonObj[i].sn;
					
					document.login.stateid.options.add(create);
				}
			}
		}
		console.log(x);
		http_request.open("get", "${pageContext.request.contextPath}/viewProductController?flag=removeWish&removeWish="+removeWish, true);
		http_request.send();
	}
</script>




</head>

<body>

<div class="ty-tygh  " id="tygh_container">

<div id="ajax_overlay" class="ty-ajax-overlay"></div>
<div id="ajax_loading_box" class="ty-ajax-loading-box"></div>

<div class="cm-notification-container notification-container">
</div>

<div class="ty-helper-container" id="tygh_main_container">
    

        
			<jsp:include page="header.jsp"></jsp:include>


<div class="tygh-content clearfix">
    <div class="container-fluid  content-grid">
    <div class="row-fluid ">                <div class="span16 main-content" >
                <div id="breadcrumbs_10">

    <div class="ty-breadcrumbs clearfix">
        <a href="index.jsp" class="ty-breadcrumbs__a">Home</a><span class="ty-breadcrumbs__slash">></span><span class="ty-breadcrumbs__current">Cart contents</span>
    </div>
<!--breadcrumbs_10--></div><div class="ty-mainbox-container clearfix">
                <div class="ty-mainbox-body"><!-- Inline script moved to the bottom of the page -->
<!-- Inline script moved to the bottom of the page -->

    
<form name="checkout_form" class="cm-check-changes" action="http://demos.templatemela.com/cscart/CST02/CST020042/" method="post" enctype="multipart/form-data">
<input type="hidden" name="redirect_mode" value="cart" />
<input type="hidden" name="result_ids" value="cart_items,checkout_totals,checkout_steps,cart_status*,checkout_cart" />

<h1 class="ty-mainbox-title">Cart contents</h1>

<div class="buttons-container ty-cart-content__top-buttons clearfix">
    <div class="ty-float-left ty-cart-content__left-buttons">
            
 

<!--      <a href="http://demos.templatemela.com/cscart/CST02/CST020042/electronics/computers/desktops/"  class="ty-btn ty-btn__secondary " >Continue shopping</a>
 
            
 
    <a  class="ty-btn ty-btn__tertiary text-button" href="http://demos.templatemela.com/cscart/CST02/CST020042/index.php?dispatch=checkout.clear">Clear cart</a>


 -->    </div>
    <div class="ty-float-right ty-cart-content__right-buttons">
            
 
<!--     <button id="button_cart" class="ty-btn__secondary  ty-btn" type="submit" name="dispatch[checkout.update]" >Recalculate</button>
 -->

                                                    
 

    <button type="reset" class="ty-btn ty-btn__primary " >Clear Cart</button>

            </div>
</div>

<div>
    <div class="ty-mainbox-cart__body" >
<div id="cart_items">

    <table class="ty-cart-content ty-table">
    <thead>
        <tr>
            <th class="ty-cart-content__title ty-left">Product</th>
            <th class="ty-cart-content__title ty-left">&nbsp;</th>
            <th class="ty-cart-content__title ty-right">Unit price</th>
            <th class="ty-cart-content__title quantity-cell">Quantity</th>
            <th class="ty-cart-content__title ty-right">Offers</th>
        </tr>
    </thead>

    <tbody>
                                    

<h:forEach items="${sessionScope.List}" var="i" varStatus="j">    
                                    <tr id="rowId${j.count}">
                        <td class="ty-cart-content__product-elem ty-cart-content__image-block">
                                                            <div class="ty-cart-content__image cm-reload-1061624811" id="product_image_update_1061624811">
                                    
       <a href="#">
       										<h:forEach items="${sessionScope.FileList}" var="k">
       										<h:if test="${k.vo.productId eq i.productvo.productId}">
                                        <img style="height: 50px;width: 50px" class="ty-pict"  id="det_img_1061624811"  src="${pageContext.request.contextPath}/doc/${k.encryptedfilename}" alt="" title=""  /></a>
											</h:if>	
											</h:forEach>
                                <!--product_image_update_1061624811--></div>
                                                    </td>

                        <td class="ty-cart-content__product-elem ty-cart-content__description" style="width: 50%;">
                            <a href="#" class="ty-cart-content__product-title">${i.productvo.productName}</a>
                            <a class=" ty-cart-content__product-delete ty-delete-big" href="javascript:removeWish(rowId${j.count})" data-ca-target-id="cart_items,checkout_totals,cart_status*,checkout_steps,checkout_cart" title="Remove">&nbsp;<i class="ty-delete-big__icon ty-icon-cancel-circle"></i></a>                            
                            <div class="ty-cart-content__sku ty-sku" id="sku_1061624811">
                                CODE: <span class="cm-reload-1061624811" id="product_code_update_1061624811">K02149B2ZX<!--product_code_update_1061624811--></span>
                            </div>
                            
                                                        
                                                    </td>

                        <td class="ty-cart-content__product-elem ty-cart-content__price cm-reload-1061624811" id="price_display_update_1061624811">
                        <span class="ty-sub-price"></span><span id="sp_${j.count}" class="ty-sub-price">${i.productvo.productPrice}</span>
                        <!--price_display_update_1061624811--></td>

                        <td class="ty-cart-content__product-elem ty-cart-content__qty ">
                            
                            <div class="quantity cm-reload-1061624811 changer" id="quantity_update_1061624811">
                            
                                <input type="hidden" name="cart_products[1061624811][product_id]" value="214" />
                                
                                <label for="amount_1061624811"></label>
                                                                                                            
                                                                                                            
                                <div class="ty-center ty-value-changer cm-value-changer">
                                        <a class="cm-increase ty-value-changer__increase" onclick="change(${j.count},${i.productvo.productPrice},1)">&#43;</a>
 <input type="text" size="3" id="txt_${j.count}" name="cart_products[1061624811][amount]" value="1" class="ty-value-changer__input cm-amount" />
                             <a class="cm-decrease ty-value-changer__decrease" onclick="change(${j.count},${i.productvo.productPrice},-1)">&minus;</a>
                                        </div>
                                                                                                                                                                <!--quantity_update_1061624811--></div>
                        </td>

                        <td class="ty-cart-content__product-elem ty-cart-content__price cm-reload-1061624811" id="price_subtotal_update_1061624811">
                            <span class="price">${i.productvo.offers}</span><span id="sec_product_subtotal_1061624811" class="price"></span>
                                                    <!--price_subtotal_update_1061624811--></td>
                    </tr>
                            

                
        
        


    </tbody>
    
    </h:forEach>
    
    </table>
<!--cart_items--></div>

</div>

</div>


</form>

                                        <!-- Inline script moved to the bottom of the page -->

                            
      <!--  <form class="cm-ajax" name="estimation_form" action="#" method="post">
             <input type="hidden" name="result_ids" value="shipping_estimation,shipping_estimation_buttons" /> -->
                <!-- <div class="ty-control-group">
                    <label class="ty-control-group__label" for="elm_country">Country</label>
                    <select id="elm_country" class="cm-country cm-location-estimation ty-input-text-medium" name="customer_location[country]">
                        <option value="">- Select country -</option>
                                                                        <option value="AF" >Afghanistan</option>
      
                                                <option value="AX" >Aland Islands</option>
                                                <option value="AL" >Albania</option>
                                                <option value="DZ" >Algeria</option>
                                                <option value="AS" >American Samoa</option>
                                                <option value="AD" >Andorra</option>
                                                <option value="AO" >Angola</option>
                                                <option value="AI" >Anguilla</option>
                                                <option value="AQ" >Antarctica</option>
                                                <option value="AG" >Antigua and Barbuda</option>
                                                <option value="AR" >Argentina</option>
                                                <option value="AM" >Armenia</option>
                                                <option value="AW" >Aruba</option>
                                                <option value="AP" >Asia-Pacific</option>
                                                <option value="AU" >Australia</option>
                                                <option value="AT" >Austria</option>
                                                <option value="AZ" >Azerbaijan</option>
                                                <option value="BS" >Bahamas</option>
                                                <option value="BH" >Bahrain</option>
                                                <option value="BD" >Bangladesh</option>
                                                <option value="BB" >Barbados</option>
                                                <option value="BY" >Belarus</option>
                                                <option value="BE" >Belgium</option>
                                                <option value="BZ" >Belize</option>
                                                <option value="BJ" >Benin</option>
                                                <option value="BM" >Bermuda</option>
                                                <option value="BT" >Bhutan</option>
                                                <option value="BO" >Bolivia</option>
                                                <option value="BA" >Bosnia and Herzegowina</option>
                                                <option value="BW" >Botswana</option>
                                                <option value="BV" >Bouvet Island</option>
                                                <option value="BR" >Brazil</option>
                                                <option value="IO" >British Indian Ocean Territory</option>
                                                <option value="VG" >British Virgin Islands</option>
                                                <option value="BN" >Brunei Darussalam</option>
                                                <option value="BG" >Bulgaria</option>
                                                <option value="BF" >Burkina Faso</option>
                                                <option value="BI" >Burundi</option>
                                                <option value="KH" >Cambodia</option>
                                                <option value="CM" >Cameroon</option>
                                                <option value="CA" >Canada</option>
                                                <option value="CV" >Cape Verde</option>
                                                <option value="KY" >Cayman Islands</option>
                                                <option value="CF" >Central African Republic</option>
                                                <option value="TD" >Chad</option>
                                                <option value="CL" >Chile</option>
                                                <option value="CN" >China</option>
                                                <option value="CX" >Christmas Island</option>
                                                <option value="CC" >Cocos (Keeling) Islands</option>
                                                <option value="CO" >Colombia</option>
                                                <option value="KM" >Comoros</option>
                                                <option value="CG" >Congo</option>
                                                <option value="CK" >Cook Islands</option>
                                                <option value="CR" >Costa Rica</option>
                                                <option value="CI" >Cote D&#039;ivoire</option>
                                                <option value="HR" >Croatia</option>
                                                <option value="CU" >Cuba</option>
                                                <option value="CW" >Curaçao</option>
                                                <option value="CY" >Cyprus</option>
                                                <option value="CZ" >Czech Republic</option>
                                                <option value="DK" >Denmark</option>
                                                <option value="DJ" >Djibouti</option>
                                                <option value="DM" >Dominica</option>
                                                <option value="DO" >Dominican Republic</option>
                                                <option value="TL" >East Timor</option>
                                                <option value="EC" >Ecuador</option>
                                                <option value="EG" >Egypt</option>
                                                <option value="SV" >El Salvador</option>
                                                <option value="GQ" >Equatorial Guinea</option>
                                                <option value="ER" >Eritrea</option>
                                                <option value="EE" >Estonia</option>
                                                <option value="ET" >Ethiopia</option>
                                                <option value="EU" >Europe</option>
                                                <option value="FK" >Falkland Islands (Malvinas)</option>
                                                <option value="FO" >Faroe Islands</option>
                                                <option value="FJ" >Fiji</option>
                                                <option value="FI" >Finland</option>
                                                <option value="FR" >France</option>
                                                <option value="FX" >France, Metropolitan</option>
                                                <option value="GF" >French Guiana</option>
                                                <option value="PF" >French Polynesia</option>
                                                <option value="TF" >French Southern Territories</option>
                                                <option value="GA" >Gabon</option>
                                                <option value="GM" >Gambia</option>
                                                <option value="GE" >Georgia</option>
                                                <option value="DE" >Germany</option>
                                                <option value="GH" >Ghana</option>
                                                <option value="GI" >Gibraltar</option>
                                                <option value="GR" >Greece</option>
                                                <option value="GL" >Greenland</option>
                                                <option value="GD" >Grenada</option>
                                                <option value="GP" >Guadeloupe</option>
                                                <option value="GU" >Guam</option>
                                                <option value="GT" >Guatemala</option>
                                                <option value="GG" >Guernsey</option>
                                                <option value="GN" >Guinea</option>
                                                <option value="GW" >Guinea-Bissau</option>
                                                <option value="GY" >Guyana</option>
                                                <option value="HT" >Haiti</option>
                                                <option value="HM" >Heard and McDonald Islands</option>
                                                <option value="HN" >Honduras</option>
                                                <option value="HK" >Hong Kong</option>
                                                <option value="HU" >Hungary</option>
                                                <option value="IS" >Iceland</option>
                                                <option value="IN" >India</option>
                                                <option value="ID" >Indonesia</option>
                                                <option value="IQ" >Iraq</option>
                                                <option value="IE" >Ireland</option>
                                                <option value="IR" >Islamic Republic of Iran</option>
                                                <option value="IM" >Isle of Man</option>
                                                <option value="IL" >Israel</option>
                                                <option value="IT" >Italy</option>
                                                <option value="JM" >Jamaica</option>
                                                <option value="JP" >Japan</option>
                                                <option value="JE" >Jersey</option>
                                                <option value="JO" >Jordan</option>
                                                <option value="KZ" >Kazakhstan</option>
                                                <option value="KE" >Kenya</option>
                                                <option value="KI" >Kiribati</option>
                                                <option value="KP" >Korea</option>
                                                <option value="KR" >Korea, Republic of</option>
                                                <option value="KW" >Kuwait</option>
                                                <option value="KG" >Kyrgyzstan</option>
                                                <option value="LA" >Laos</option>
                                                <option value="LV" >Latvia</option>
                                                <option value="LB" >Lebanon</option>
                                                <option value="LS" >Lesotho</option>
                                                <option value="LR" >Liberia</option>
                                                <option value="LY" >Libyan Arab Jamahiriya</option>
                                                <option value="LI" >Liechtenstein</option>
                                                <option value="LT" >Lithuania</option>
                                                <option value="LU" >Luxembourg</option>
                                                <option value="MO" >Macau</option>
                                                <option value="MK" >Macedonia</option>
                                                <option value="MG" >Madagascar</option>
                                                <option value="MW" >Malawi</option>
                                                <option value="MY" >Malaysia</option>
                                                <option value="MV" >Maldives</option>
                                                <option value="ML" >Mali</option>
                                                <option value="MT" >Malta</option>
                                                <option value="MH" >Marshall Islands</option>
                                                <option value="MQ" >Martinique</option>
                                                <option value="MR" >Mauritania</option>
                                                <option value="MU" >Mauritius</option>
                                                <option value="YT" >Mayotte</option>
                                                <option value="MX" >Mexico</option>
                                                <option value="FM" >Micronesia</option>
                                                <option value="MD" >Moldova, Republic of</option>
                                                <option value="MC" >Monaco</option>
                                                <option value="MN" >Mongolia</option>
                                                <option value="ME" >Montenegro</option>
                                                <option value="MS" >Montserrat</option>
                                                <option value="MA" >Morocco</option>
                                                <option value="MZ" >Mozambique</option>
                                                <option value="MM" >Myanmar</option>
                                                <option value="NA" >Namibia</option>
                                                <option value="NR" >Nauru</option>
                                                <option value="NP" >Nepal</option>
                                                <option value="NL" >Netherlands</option>
                                                <option value="NC" >New Caledonia</option>
                                                <option value="NZ" >New Zealand</option>
                                                <option value="NI" >Nicaragua</option>
                                                <option value="NE" >Niger</option>
                                                <option value="NG" >Nigeria</option>
                                                <option value="NU" >Niue</option>
                                                <option value="NF" >Norfolk Island</option>
                                                <option value="MP" >Northern Mariana Islands</option>
                                                <option value="NO" >Norway</option>
                                                <option value="OM" >Oman</option>
                                                <option value="PK" >Pakistan</option>
                                                <option value="PW" >Palau</option>
                                                <option value="PS" >Palestine Authority</option>
                                                <option value="PA" >Panama</option>
                                                <option value="PG" >Papua New Guinea</option>
                                                <option value="PY" >Paraguay</option>
                                                <option value="PE" >Peru</option>
                                                <option value="PH" >Philippines</option>
                                                <option value="PN" >Pitcairn</option>
                                                <option value="PL" >Poland</option>
                                                <option value="PT" >Portugal</option>
                                                <option value="PR" >Puerto Rico</option>
                                                <option value="QA" >Qatar</option>
                                                <option value="RS" >Republic of Serbia</option>
                                                <option value="RE" >Reunion</option>
                                                <option value="RO" >Romania</option>
                                                <option value="RU" >Russian Federation</option>
                                                <option value="RW" >Rwanda</option>
                                                <option value="LC" >Saint Lucia</option>
                                                <option value="WS" >Samoa</option>
                                                <option value="SM" >San Marino</option>
                                                <option value="ST" >Sao Tome and Principe</option>
                                                <option value="SA" >Saudi Arabia</option>
                                                <option value="SN" >Senegal</option>
                                                <option value="CS" >Serbia</option>
                                                <option value="SC" >Seychelles</option>
                                                <option value="SL" >Sierra Leone</option>
                                                <option value="SG" >Singapore</option>
                                                <option value="SX" >Sint Maarten</option>
                                                <option value="SK" >Slovakia</option>
                                                <option value="SI" >Slovenia</option>
                                                <option value="SB" >Solomon Islands</option>
                                                <option value="SO" >Somalia</option>
                                                <option value="ZA" >South Africa</option>
                                                <option value="ES" >Spain</option>
                                                <option value="LK" >Sri Lanka</option>
                                                <option value="SH" >St. Helena</option>
                                                <option value="KN" >St. Kitts and Nevis</option>
                                                <option value="PM" >St. Pierre and Miquelon</option>
                                                <option value="VC" >St. Vincent and the Grenadines</option>
                                                <option value="SD" >Sudan</option>
                                                <option value="SR" >Suriname</option>
                                                <option value="SJ" >Svalbard and Jan Mayen Islands</option>
                                                <option value="SZ" >Swaziland</option>
                                                <option value="SE" >Sweden</option>
                                                <option value="CH" >Switzerland</option>
                                                <option value="SY" >Syrian Arab Republic</option>
                                                <option value="TW" >Taiwan</option>
                                                <option value="TJ" >Tajikistan</option>
                                                <option value="TZ" >Tanzania, United Republic of</option>
                                                <option value="TH" >Thailand</option>
                                                <option value="TG" >Togo</option>
                                                <option value="TK" >Tokelau</option>
                                                <option value="TO" >Tonga</option>
                                                <option value="TT" >Trinidad and Tobago</option>
                                                <option value="TN" >Tunisia</option>
                                                <option value="TR" >Turkey</option>
                                                <option value="TM" >Turkmenistan</option>
                                                <option value="TC" >Turks and Caicos Islands</option>
                                                <option value="TV" >Tuvalu</option>
                                                <option value="UG" >Uganda</option>
                                                <option value="UA" >Ukraine</option>
                                                <option value="AE" >United Arab Emirates</option>
                                                <option value="GB" >United Kingdom (Great Britain)</option>
                                                <option value="US" selected="selected">United States</option>
                                                <option value="VI" >United States Virgin Islands</option>
                                                <option value="UY" >Uruguay</option>
                                                <option value="UZ" >Uzbekistan</option>
                                                <option value="VU" >Vanuatu</option>
                                                <option value="VA" >Vatican City State</option>
                                                <option value="VE" >Venezuela</option>
                                                <option value="VN" >Viet Nam</option>
                                                <option value="WF" >Wallis And Futuna Islands</option>
                                                <option value="EH" >Western Sahara</option>
                                                <option value="YE" >Yemen</option>
                                                <option value="ZR" >Zaire</option>
                                                <option value="ZM" >Zambia</option>
                                                <option value="ZW" >Zimbabwe</option>
                                            </select>
                </div>

                
                                                    
                <div class="ty-control-group">
                    <label class="ty-control-group__label" for="elm_state">State/Province</label>
                    <select class="cm-state cm-location-estimation hidden ty-input-text-medium" id="elm_state" name="customer_location[state]">
                        <option value="">- Select state -</option>
                                                    <option label="" value="">- Select state -</option>
                                            </select>
                    <input type="text" class="cm-state cm-location-estimation ty-input-text-medium " id="elm_state_d" name="customer_location[state]" size="20" maxlength="64" value="MA"  />
                </div>

                <div class="ty-control-group">
                    <label class="ty-control-group__label" for="elm_zipcode">Zip/postal code</label>
                    <input type="text" class="ty-input-text-medium" id="elm_zipcode" name="customer_location[zipcode]" size="20" value="" />
                </div>

                <div class="hidden">
                        
 
    <a  class="ty-btn cm-submit text-button" id="but_get_rates" data-ca-dispatch="dispatch[checkout.shipping_estimation]">Get rates</a>


                </div>

            </form>
 -->
                    <!--shipping_estimation--></div>


<!-- <div class="ty-estimation-buttons buttons-container" id="shipping_estimation_buttons">
                
 

    <a   class="ty-btn ty-btn__secondary cm-external-click "  data-ca-external-click-id="but_get_rates">Get rates</a>

    shipping_estimation_buttons</div>

        </div>
    </div>
<div class="ty-cart-total">
    <div class="ty-cart-total__wrapper clearfix" id="checkout_totals">
                    <div class="ty-coupons__container">
                                    
                
                

                </div>
                
        
        

        
        <ul class="ty-cart-statistic ty-statistic-list">
    <li class="ty-cart-statistic__item ty-statistic-list-subtotal">
        <span class="ty-cart-statistic__title">Subtotal</span>
        <span class="ty-cart-statistic__value">$<span>1,944.00</span></span>
    </li>
    
    
                <li class="ty-cart-statistic__item ty-statistic-list-shipping-method">
                    <span class="ty-cart-statistic__title">Shipping cost</span>
            <span class="ty-cart-statistic__value">        <i class="ty-cart-total__icon-estimation ty-icon-flight"></i><a id="opener_shipping_estimation_block" class="cm-dialog-opener cm-dialog-auto-size ty-cart-total__a-estimation" data-ca-target-id="shipping_estimation_block" href="http://demos.templatemela.com/cscart/CST02/CST020042/cart/" rel="nofollow">Calculate</a>
    </span>
                </li>
            

    
    
    
    
    </ul>
        <div class="clearfix"></div>
        <ul class="ty-cart-statistic__total-list">
            <li class="ty-cart-statistic__item ty-cart-statistic__total">
                <span class="ty-cart-statistic__total-title">Total cost</span>
                <span class="ty-cart-statistic__total-value"><span class="ty-price">$</span><span id="sec_cart_total" class="ty-price">1,944.00</span></span>
            </li>
        </ul>
    checkout_totals</div>
</div>-->


<div class="buttons-container ty-cart-content__bottom-buttons clearfix">
    <div class="ty-float-left ty-cart-content__left-buttons">
            
 

    <a href="index.jsp"  class="ty-btn ty-btn__secondary " >Continue shopping</a>

    </div>
     <div class="ty-float-right ty-cart-content__right-buttons">
            
 

    <a   class="ty-btn ty-btn__secondary cm-external-click "  data-ca-external-click-id="button_cart">Recalculate</a>

                                                    
 

    <a href="http://demos.templatemela.com/cscart/CST02/CST020042/checkout/"  class="ty-btn ty-btn__primary " >Proceed to checkout</a>

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
    <div class="row-fluid ">                <div class="span16 ty-footer-grid__full-width ty-footer-menu" >
                <div class="row-fluid ">                <div class="span4 demo-store-grid" >
                <div class="ty-footer footer-no-wysiwyg hb-animate-element left-to-right ty-float-left">
        <h2 class="ty-footer-general__header  cm-combination" id="sw_footer-general_15">
            
                            <span>Demo Store</span>
                        

        <i class="ty-footer-menu__icon-open ty-icon-down-open"></i>
        <i class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
        </h2>
        <div class="ty-footer-general__body" id="footer-general_15"><div class="ty-wysiwyg-content" ><ul id="demo_store_links">
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/about-our-company/">About us</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/contact-us/">Contact us</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/gift-certificates/">Gift certificates</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/index.php?dispatch=product_features.view_all&amp;filter_id=10">Our brands</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/sitemap/">Sitemap</a></li>

</ul></div></div>
    </div>
        </div><div class="span4 customer-service-grid" >
                <div class="ty-footer footer-no-wysiwyg hb-animate-element top-to-bottom ty-float-left">
        <h2 class="ty-footer-general__header  cm-combination" id="sw_footer-general_16">
            
                            <span>Customer Service</span>
                        

        <i class="ty-footer-menu__icon-open ty-icon-down-open"></i>
        <i class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
        </h2>
        <div class="ty-footer-general__body" id="footer-general_16"><div class="ty-wysiwyg-content" >                                                       <ul id="customer_service_links">
                            <li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/orders/" rel="nofollow">About your order</a></li>
                            <li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/wishlist/" rel="nofollow">Wishlist</a></li>
                            <li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/compare/" rel="nofollow">Compare list</a></li>
                             <li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/blog/">Blog</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/sitemap/">Sitemap</a></li>
                            </ul></div></div>
    </div>
        </div><div class="span4 about-grid" >
                <div class="ty-footer footer-no-wysiwyg hb-animate-element bottom-to-top ty-float-left">
        <h2 class="ty-footer-general__header  cm-combination" id="sw_footer-general_42">
            
                            <span>About CS-Cart</span>
                        

        <i class="ty-footer-menu__icon-open ty-icon-down-open"></i>
        <i class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
        </h2>
        <div class="ty-footer-general__body" id="footer-general_42"><div class="ty-wysiwyg-content" >                            <ul id="about_cs_cart_links">
                            <li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/our-team/">What is CS-Cart?</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/privacy-policy/">Privacy policy</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/index.php?dispatch=product_features.view_all&amp;filter_id=10">Our brands</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/sitemap/">Sitemap</a></li>
<li class="ty-footer-menu__item"><a href="http://demos.templatemela.com/cscart/CST02/CST020042/index.php?dispatch=news.list">News</a></li>
                            </ul></div></div>
    </div>
        </div><div class="span4 contact-grid" >
                <div class="ty-footer footer-no-wysiwyg hb-animate-element right-to-left ty-float-left">
        <h2 class="ty-footer-general__header  cm-combination" id="sw_footer-general_43">
            
                            <span>Contact Us</span>
                        

        <i class="ty-footer-menu__icon-open ty-icon-down-open"></i>
        <i class="ty-footer-menu__icon-hide ty-icon-up-open"></i>
        </h2>
        <div class="ty-footer-general__body" id="footer-general_43"><div class="ty-wysiwyg-content" ><ul id="contact_us_links">
<li class="address">My Company 42 avenue des,</li>
<li>Champs Elysees 75000, Paris, France</li>
<li class="ph-no">0123-456-789</li>
<li class="email"><a href="#">sales@yourcompany.com</a></li>
</ul></div></div>
    </div>
        </div>
    </div>
        </div>
    </div><div class="row-fluid ">                <div class="span16 ty-footer-grid__full-width footer-copyright" >
                <div class="row-fluid ">                <div class="span8 newsletter-grid" >
                <div class=" subscribe-block    ty-float-left">
        <div class="ty-footer-form-block">
    <form action="http://demos.templatemela.com/cscart/CST02/CST020042/" method="post" name="subscribe_form">
        <input type="hidden" name="redirect_url" value="index.php?dispatch=checkout.cart" />
        <input type="hidden" name="newsletter_format" value="2" />
        <h3 class="ty-footer-form-block__title">Stay Connected</h3>
        <div class="ty-footer-form-block__form ty-control-group ty-input-append">
            <label class="cm-required cm-email hidden" for="subscr_email12">Email</label>
            <input type="text" name="subscribe_email" id="subscr_email12" size="20" value="Enter e-mail address" class="cm-hint ty-input-text" />
            <button title="Go" class="ty-btn-go" type="submit"><i class="ty-btn-go__icon ty-icon-right-dir"></i></button>
<input type="hidden" name="dispatch" value="newsletters.add_subscriber" />
        </div>
    </form>
</div>

    </div>
        </div><div class="span8 social-block-grid" >
                <div class=" social-block ty-float-right">
        <div class="ty-wysiwyg-content" ><div class="ty-social-link-block">
<!--<h3 class="ty-social-link__title">Get social</h3>-->


    <a class="ty-social-link facebook" href="http://www.facebook.com"><span class="followus-title"> Facebook </span></a>


    <a class="ty-social-link twitter" href="https://twitter.com"><span class="followus-title"> Twitter </span></a>


    <a class="ty-social-link linkedln" href="http://www.facebook.com"><span class="followus-title"> linkedln </span></a>


    <a class="ty-social-link rss" href="https://twitter.com"><span class="followus-title"> rss </span></a>


    <a class="ty-social-link youtube" href="http://www.facebook.com"><span class="followus-title"> youtube </span></a>


    <a class="ty-social-link pinterest" href="https://twitter.com"><span class="followus-title"> pinterest </span></a>


    <a class="ty-social-link skype" href="http://www.facebook.com"><span class="followus-title"> skype </span></a>


    <a class="ty-social-link google" href="https://twitter.com"></i><span class="followus-title"> google </span></a>


</div></div>
    </div>
        </div>
    </div><div class="row-fluid ">                <div class="span16 footer-bottom" >
                <div class=" copyright-inner">
        <p class="bottom-copyright">&copy; 2004-2017 Simtech. &nbsp;Powered by <a class="bottom-copyright" href="http://www.cs-cart.com" target="_blank">CS-Cart - Shopping Cart Software</a>
</p>
    </div><div class="ty-payment-icons">
    
    <span class="ty-payment-icons__item twocheckout">&nbsp;</span>
    <span class="ty-payment-icons__item paypal">&nbsp;</span>
    <span class="ty-payment-icons__item mastercard">&nbsp;</span>
    <span class="ty-payment-icons__item visa">&nbsp;</span>
    

</div>
        </div>
    </div>
        </div>
    </div>
</div>
</div>

<!--tygh_main_container--></div>

<!--tygh_container--></div>

<script src="js/jquery.min.js" data-no-defer></script>
<script data-no-defer>
    if (!window.jQuery) {
        document.write('<script type="text/javascript" src="js/jquery.min.js?ver=4.3.1" ><\/script>');
    }
</script>

<script src="js/jquery-ui.min.js" data-no-defer></script>
<script data-no-defer>
    if (!window.jQuery.ui) {
        document.write('<script type="text/javascript" src="js/jquery-ui.custom.min.js?ver=4.3.1" ><\/script>');
    }
</script>

<script type="text/javascript" src="js/scripts-cf5e6d77decbbf90c0c1bec58ac613841433851241.js?t=1465976681?ver=4.3.1"></script>
<script type="text/javascript">
(function(_, $) {

    _.tr({
        cannot_buy: 'You cannot buy the product with these option variants',
        no_products_selected: 'No products selected',
        error_no_items_selected: 'No items selected! At least one check box must be selected to perform this action.',
        delete_confirmation: 'Are you sure you want to delete the selected items?',
        text_out_of_stock: 'Out of stock',
        items: 'item(s)',
        text_required_group_product: 'Please select a product for the required group [group_name]',
        save: 'Save',
        close: 'Close',
        notice: 'Notice',
        warning: 'Warning',
        error: 'Error',
        empty: 'Empty',
        text_are_you_sure_to_proceed: 'Are you sure you want to proceed?',
        text_invalid_url: 'You have entered an invalid URL',
        error_validator_email: 'The email address in the <b>[field]<\/b> field is invalid.',
        error_validator_phone: 'The phone number in the <b>[field]<\/b> field is invalid. The correct format is (555) 555-55-55 or 55 55 555 5555.',
        error_validator_integer: 'The value of the <b>[field]<\/b> field is invalid. It should be integer.',
        error_validator_multiple: 'The <b>[field]<\/b> field does not contain the selected options.',
        error_validator_password: 'The passwords in the <b>[field2]<\/b> and <b>[field]<\/b> fields do not match.',
        error_validator_required: 'The <b>[field]<\/b> field is mandatory.',
        error_validator_zipcode: 'The ZIP / Postal code in the <b>[field]<\/b> field is incorrect. The correct format is [extra].',
        error_validator_message: 'The value of the <b>[field]<\/b> field is invalid.',
        text_page_loading: 'Loading... Your request is being processed, please wait.',
        error_ajax: 'Oops, something went wrong ([error]). Please try again.',
        text_changes_not_saved: 'Your changes have not been saved.',
        text_data_changed: 'Your changes have not been saved.Press OK to continue, or Cancel to stay on the current page.',
        placing_order: 'Placing the order',
        file_browser: 'File browser',
        browse: 'Browse...',
        more: 'More',
        text_no_products_found: 'No products found'
    });

    $.extend(_, {
        index_script: 'index.php',
        changes_warning: /*'Y'*/'N',
        currencies: {
            'primary': {
                'decimals_separator': '.',
                'thousands_separator': ',',
                'decimals': '2'
            },
            'secondary': {
                'decimals_separator': '.',
                'thousands_separator': ',',
                'decimals': '2',
                'coefficient': '1.00000'
            }
        },
        default_editor: 'redactor',
        default_previewer: 'magnific',
        current_path: '/cscart/CST02/CST020042',
        current_location: 'http://demos.templatemela.com/cscart/CST02/CST020042',
        images_dir: 'http://demos.templatemela.com/cscart/CST02/CST020042/design/themes/CST020042/media/images',
        notice_displaying_time: 5,
        cart_language: 'en',
        default_language: 'en',
        cart_prices_w_taxes: false,
        theme_name: 'CST020042',
        regexp: [],
        current_url: 'http://demos.templatemela.com/cscart/CST02/CST020042/cart/',
        current_host: 'demos.templatemela.com',
        init_context: ''
    });

    
    
        $(document).ready(function(){
            $.runCart('C');
        });

    
            // CSRF form protection key
        _.security_hash = '89d9107bc36bbb91a8c6c94038c294a2';
    
}(Tygh, Tygh.$));
</script>
<script type="text/javascript">
    (function(_, $) {
        _.call_requests_phone_masks_list = [
	{ "mask": "+247-####", "cc": "AC", "name_en": "Ascension", "desc_en": "", "name_ru": "Остров Вознесения", "desc_ru": "" },
	{ "mask": "+376-###-###", "cc": "AD", "name_en": "Andorra", "desc_en": "", "name_ru": "Андорра", "desc_ru": "" },
	{ "mask": "+971-5#-###-####", "cc": "AE", "name_en": "United Arab Emirates", "desc_en": "mobile", "name_ru": "Объединенные Арабские Эмираты", "desc_ru": "мобильные" },
	{ "mask": "+971-#-###-####", "cc": "AE", "name_en": "United Arab Emirates", "desc_en": "", "name_ru": "Объединенные Арабские Эмираты", "desc_ru": "" },
	{ "mask": "+93-##-###-####", "cc": "AF", "name_en": "Afghanistan", "desc_en": "", "name_ru": "Афганистан", "desc_ru": "" },
	{ "mask": "+1(268)###-####", "cc": "AG", "name_en": "Antigua & Barbuda", "desc_en": "", "name_ru": "Антигуа и Барбуда", "desc_ru": "" },
	{ "mask": "+1(264)###-####", "cc": "AI", "name_en": "Anguilla", "desc_en": "", "name_ru": "Ангилья", "desc_ru": "" },
	{ "mask": "+355(###)###-###", "cc": "AL", "name_en": "Albania", "desc_en": "", "name_ru": "Албания", "desc_ru": "" },
	{ "mask": "+374-##-###-###", "cc": "AM", "name_en": "Armenia", "desc_en": "", "name_ru": "Армения", "desc_ru": "" },
	{ "mask": "+599-###-####", "cc": "AN", "name_en": "Caribbean Netherlands", "desc_en": "", "name_ru": "Карибские Нидерланды", "desc_ru": "" },
	{ "mask": "+599-###-####", "cc": "AN", "name_en": "Netherlands Antilles", "desc_en": "", "name_ru": "Нидерландские Антильские острова", "desc_ru": "" },
	{ "mask": "+599-9###-####", "cc": "AN", "name_en": "Netherlands Antilles", "desc_en": "Curacao", "name_ru": "Нидерландские Антильские острова", "desc_ru": "Кюрасао" },
	{ "mask": "+244(###)###-###", "cc": "AO", "name_en": "Angola", "desc_en": "", "name_ru": "Ангола", "desc_ru": "" },
	{ "mask": "+672-1##-###", "cc": "AQ", "name_en": "Australian bases in Antarctica", "desc_en": "", "name_ru": "Австралийская антарктическая база", "desc_ru": "" },
	{ "mask": "+54(###)###-####", "cc": "AR", "name_en": "Argentina", "desc_en": "", "name_ru": "Аргентина", "desc_ru": "" },
	{ "mask": "+1(684)###-####", "cc": "AS", "name_en": "American Samoa", "desc_en": "", "name_ru": "Американское Самоа", "desc_ru": "" },
	{ "mask": "+43(###)###-####", "cc": "AT", "name_en": "Austria", "desc_en": "", "name_ru": "Австрия", "desc_ru": "" },
	{ "mask": "+61-#-####-####", "cc": "AU", "name_en": "Australia", "desc_en": "", "name_ru": "Австралия", "desc_ru": "" },
	{ "mask": "+297-###-####", "cc": "AW", "name_en": "Aruba", "desc_en": "", "name_ru": "Аруба", "desc_ru": "" },
	{ "mask": "+994-##-###-##-##", "cc": "AZ", "name_en": "Azerbaijan", "desc_en": "", "name_ru": "Азербайджан", "desc_ru": "" },
	{ "mask": "+387-##-#####", "cc": "BA", "name_en": "Bosnia and Herzegovina", "desc_en": "", "name_ru": "Босния и Герцеговина", "desc_ru": "" },
	{ "mask": "+387-##-####", "cc": "BA", "name_en": "Bosnia and Herzegovina", "desc_en": "", "name_ru": "Босния и Герцеговина", "desc_ru": "" },
	{ "mask": "+1(246)###-####", "cc": "BB", "name_en": "Barbados", "desc_en": "", "name_ru": "Барбадос", "desc_ru": "" },
	{ "mask": "+880-##-###-###", "cc": "BD", "name_en": "Bangladesh", "desc_en": "", "name_ru": "Бангладеш", "desc_ru": "" },
	{ "mask": "+32(###)###-###", "cc": "BE", "name_en": "Belgium", "desc_en": "", "name_ru": "Бельгия", "desc_ru": "" },
	{ "mask": "+226-##-##-####", "cc": "BF", "name_en": "Burkina Faso", "desc_en": "", "name_ru": "Буркина Фасо", "desc_ru": "" },
	{ "mask": "+359(###)###-###", "cc": "BG", "name_en": "Bulgaria", "desc_en": "", "name_ru": "Болгария", "desc_ru": "" },
	{ "mask": "+973-####-####", "cc": "BH", "name_en": "Bahrain", "desc_en": "", "name_ru": "Бахрейн", "desc_ru": "" },
	{ "mask": "+257-##-##-####", "cc": "BI", "name_en": "Burundi", "desc_en": "", "name_ru": "Бурунди", "desc_ru": "" },
	{ "mask": "+229-##-##-####", "cc": "BJ", "name_en": "Benin", "desc_en": "", "name_ru": "Бенин", "desc_ru": "" },
	{ "mask": "+1(441)###-####", "cc": "BM", "name_en": "Bermuda", "desc_en": "", "name_ru": "Бермудские острова", "desc_ru": "" },
	{ "mask": "+673-###-####", "cc": "BN", "name_en": "Brunei Darussalam", "desc_en": "", "name_ru": "Бруней-Даруссалам", "desc_ru": "" },
	{ "mask": "+591-#-###-####", "cc": "BO", "name_en": "Bolivia", "desc_en": "", "name_ru": "Боливия", "desc_ru": "" },
	{ "mask": "+55-##-####-####", "cc": "BR", "name_en": "Brazil", "desc_en": "", "name_ru": "Бразилия", "desc_ru": "" },
	{ "mask": "+1(242)###-####", "cc": "BS", "name_en": "Bahamas", "desc_en": "", "name_ru": "Багамские Острова", "desc_ru": "" },
	{ "mask": "+975-17-###-###", "cc": "BT", "name_en": "Bhutan", "desc_en": "", "name_ru": "Бутан", "desc_ru": "" },
	{ "mask": "+975-#-###-###", "cc": "BT", "name_en": "Bhutan", "desc_en": "", "name_ru": "Бутан", "desc_ru": "" },
	{ "mask": "+267-##-###-###", "cc": "BW", "name_en": "Botswana", "desc_en": "", "name_ru": "Ботсвана", "desc_ru": "" },
	{ "mask": "+375(##)###-##-##", "cc": "BY", "name_en": "Belarus", "desc_en": "", "name_ru": "Беларусь (Белоруссия)", "desc_ru": "" },
	{ "mask": "+501-###-####", "cc": "BZ", "name_en": "Belize", "desc_en": "", "name_ru": "Белиз", "desc_ru": "" },
	{ "mask": "+243(###)###-###", "cc": "CD", "name_en": "Dem. Rep. Congo", "desc_en": "", "name_ru": "Дем. Респ. Конго (Киншаса)", "desc_ru": "" },
	{ "mask": "+236-##-##-####", "cc": "CF", "name_en": "Central African Republic", "desc_en": "", "name_ru": "Центральноафриканская Республика", "desc_ru": "" },
	{ "mask": "+242-##-###-####", "cc": "CG", "name_en": "Congo (Brazzaville)", "desc_en": "", "name_ru": "Конго (Браззавиль)", "desc_ru": "" },
	{ "mask": "+41-##-###-####", "cc": "CH", "name_en": "Switzerland", "desc_en": "", "name_ru": "Швейцария", "desc_ru": "" },
	{ "mask": "+225-##-###-###", "cc": "CI", "name_en": "Cote d’Ivoire (Ivory Coast)", "desc_en": "", "name_ru": "Кот-д’Ивуар", "desc_ru": "" },
	{ "mask": "+682-##-###", "cc": "CK", "name_en": "Cook Islands", "desc_en": "", "name_ru": "Острова Кука", "desc_ru": "" },
	{ "mask": "+56-#-####-####", "cc": "CL", "name_en": "Chile", "desc_en": "", "name_ru": "Чили", "desc_ru": "" },
	{ "mask": "+237-####-####", "cc": "CM", "name_en": "Cameroon", "desc_en": "", "name_ru": "Камерун", "desc_ru": "" },
	{ "mask": "+86(###)####-####", "cc": "CN", "name_en": "China (PRC)", "desc_en": "", "name_ru": "Китайская Н.Р.", "desc_ru": "" },
	{ "mask": "+86(###)####-###", "cc": "CN", "name_en": "China (PRC)", "desc_en": "", "name_ru": "Китайская Н.Р.", "desc_ru": "" },
	{ "mask": "+86-##-#####-#####", "cc": "CN", "name_en": "China (PRC)", "desc_en": "", "name_ru": "Китайская Н.Р.", "desc_ru": "" },
	{ "mask": "+57(###)###-####", "cc": "CO", "name_en": "Colombia", "desc_en": "", "name_ru": "Колумбия", "desc_ru": "" },
	{ "mask": "+506-####-####", "cc": "CR", "name_en": "Costa Rica", "desc_en": "", "name_ru": "Коста-Рика", "desc_ru": "" },
	{ "mask": "+53-#-###-####", "cc": "CU", "name_en": "Cuba", "desc_en": "", "name_ru": "Куба", "desc_ru": "" },
	{ "mask": "+238(###)##-##", "cc": "CV", "name_en": "Cape Verde", "desc_en": "", "name_ru": "Кабо-Верде", "desc_ru": "" },
	{ "mask": "+599-###-####", "cc": "CW", "name_en": "Curacao", "desc_en": "", "name_ru": "Кюрасао", "desc_ru": "" },
	{ "mask": "+357-##-###-###", "cc": "CY", "name_en": "Cyprus", "desc_en": "", "name_ru": "Кипр", "desc_ru": "" },
	{ "mask": "+420(###)###-###", "cc": "CZ", "name_en": "Czech Republic", "desc_en": "", "name_ru": "Чехия", "desc_ru": "" },
	{ "mask": "+49(####)###-####", "cc": "DE", "name_en": "Germany", "desc_en": "", "name_ru": "Германия", "desc_ru": "" },
	{ "mask": "+49(###)###-####", "cc": "DE", "name_en": "Germany", "desc_en": "", "name_ru": "Германия", "desc_ru": "" },
	{ "mask": "+49(###)##-####", "cc": "DE", "name_en": "Germany", "desc_en": "", "name_ru": "Германия", "desc_ru": "" },
	{ "mask": "+49(###)##-###", "cc": "DE", "name_en": "Germany", "desc_en": "", "name_ru": "Германия", "desc_ru": "" },
	{ "mask": "+49(###)##-##", "cc": "DE", "name_en": "Germany", "desc_en": "", "name_ru": "Германия", "desc_ru": "" },
	{ "mask": "+49-###-###", "cc": "DE", "name_en": "Germany", "desc_en": "", "name_ru": "Германия", "desc_ru": "" },
	{ "mask": "+253-##-##-##-##", "cc": "DJ", "name_en": "Djibouti", "desc_en": "", "name_ru": "Джибути", "desc_ru": "" },
	{ "mask": "+45-##-##-##-##", "cc": "DK", "name_en": "Denmark", "desc_en": "", "name_ru": "Дания", "desc_ru": "" },
	{ "mask": "+1(767)###-####", "cc": "DM", "name_en": "Dominica", "desc_en": "", "name_ru": "Доминика", "desc_ru": "" },
	{ "mask": "+1(809)###-####", "cc": "DO", "name_en": "Dominican Republic", "desc_en": "", "name_ru": "Доминиканская Республика", "desc_ru": "" },
	{ "mask": "+1(829)###-####", "cc": "DO", "name_en": "Dominican Republic", "desc_en": "", "name_ru": "Доминиканская Республика", "desc_ru": "" },
	{ "mask": "+1(849)###-####", "cc": "DO", "name_en": "Dominican Republic", "desc_en": "", "name_ru": "Доминиканская Республика", "desc_ru": "" },
	{ "mask": "+213-##-###-####", "cc": "DZ", "name_en": "Algeria", "desc_en": "", "name_ru": "Алжир", "desc_ru": "" },
	{ "mask": "+593-##-###-####", "cc": "EC", "name_en": "Ecuador ", "desc_en": "mobile", "name_ru": "Эквадор ", "desc_ru": "мобильные" },
	{ "mask": "+593-#-###-####", "cc": "EC", "name_en": "Ecuador", "desc_en": "", "name_ru": "Эквадор", "desc_ru": "" },
	{ "mask": "+372-####-####", "cc": "EE", "name_en": "Estonia ", "desc_en": "mobile", "name_ru": "Эстония ", "desc_ru": "мобильные" },
	{ "mask": "+372-###-####", "cc": "EE", "name_en": "Estonia", "desc_en": "", "name_ru": "Эстония", "desc_ru": "" },
	{ "mask": "+20(###)###-####", "cc": "EG", "name_en": "Egypt", "desc_en": "", "name_ru": "Египет", "desc_ru": "" },
	{ "mask": "+291-#-###-###", "cc": "ER", "name_en": "Eritrea", "desc_en": "", "name_ru": "Эритрея", "desc_ru": "" },
	{ "mask": "+34(###)###-###", "cc": "ES", "name_en": "Spain", "desc_en": "", "name_ru": "Испания", "desc_ru": "" },
	{ "mask": "+251-##-###-####", "cc": "ET", "name_en": "Ethiopia", "desc_en": "", "name_ru": "Эфиопия", "desc_ru": "" },
	{ "mask": "+358(###)###-##-##", "cc": "FI", "name_en": "Finland", "desc_en": "", "name_ru": "Финляндия", "desc_ru": "" },
	{ "mask": "+679-##-#####", "cc": "FJ", "name_en": "Fiji", "desc_en": "", "name_ru": "Фиджи", "desc_ru": "" },
	{ "mask": "+500-#####", "cc": "FK", "name_en": "Falkland Islands", "desc_en": "", "name_ru": "Фолклендские острова", "desc_ru": "" },
	{ "mask": "+691-###-####", "cc": "FM", "name_en": "F.S. Micronesia", "desc_en": "", "name_ru": "Ф.Ш. Микронезии", "desc_ru": "" },
	{ "mask": "+298-###-###", "cc": "FO", "name_en": "Faroe Islands", "desc_en": "", "name_ru": "Фарерские острова", "desc_ru": "" },
	{ "mask": "+262-#####-####", "cc": "FR", "name_en": "Mayotte", "desc_en": "", "name_ru": "Майотта", "desc_ru": "" },
	{ "mask": "+33(###)###-###", "cc": "FR", "name_en": "France", "desc_en": "", "name_ru": "Франция", "desc_ru": "" },
	{ "mask": "+508-##-####", "cc": "FR", "name_en": "St Pierre & Miquelon", "desc_en": "", "name_ru": "Сен-Пьер и Микелон", "desc_ru": "" },
	{ "mask": "+590(###)###-###", "cc": "FR", "name_en": "Guadeloupe", "desc_en": "", "name_ru": "Гваделупа", "desc_ru": "" },
	{ "mask": "+241-#-##-##-##", "cc": "GA", "name_en": "Gabon", "desc_en": "", "name_ru": "Габон", "desc_ru": "" },
	{ "mask": "+1(473)###-####", "cc": "GD", "name_en": "Grenada", "desc_en": "", "name_ru": "Гренада", "desc_ru": "" },
	{ "mask": "+995(###)###-###", "cc": "GE", "name_en": "Rep. of Georgia", "desc_en": "", "name_ru": "Грузия", "desc_ru": "" },
	{ "mask": "+594-#####-####", "cc": "GF", "name_en": "Guiana (French)", "desc_en": "", "name_ru": "Фр. Гвиана", "desc_ru": "" },
	{ "mask": "+233(###)###-###", "cc": "GH", "name_en": "Ghana", "desc_en": "", "name_ru": "Гана", "desc_ru": "" },
	{ "mask": "+350-###-#####", "cc": "GI", "name_en": "Gibraltar", "desc_en": "", "name_ru": "Гибралтар", "desc_ru": "" },
	{ "mask": "+299-##-##-##", "cc": "GL", "name_en": "Greenland", "desc_en": "", "name_ru": "Гренландия", "desc_ru": "" },
	{ "mask": "+220(###)##-##", "cc": "GM", "name_en": "Gambia", "desc_en": "", "name_ru": "Гамбия", "desc_ru": "" },
	{ "mask": "+224-##-###-###", "cc": "GN", "name_en": "Guinea", "desc_en": "", "name_ru": "Гвинея", "desc_ru": "" },
	{ "mask": "+240-##-###-####", "cc": "GQ", "name_en": "Equatorial Guinea", "desc_en": "", "name_ru": "Экваториальная Гвинея", "desc_ru": "" },
	{ "mask": "+30(###)###-####", "cc": "GR", "name_en": "Greece", "desc_en": "", "name_ru": "Греция", "desc_ru": "" },
	{ "mask": "+502-#-###-####", "cc": "GT", "name_en": "Guatemala", "desc_en": "", "name_ru": "Гватемала", "desc_ru": "" },
	{ "mask": "+1(671)###-####", "cc": "GU", "name_en": "Guam", "desc_en": "", "name_ru": "Гуам", "desc_ru": "" },
	{ "mask": "+245-#-######", "cc": "GW", "name_en": "Guinea-Bissau", "desc_en": "", "name_ru": "Гвинея-Бисау", "desc_ru": "" },
	{ "mask": "+592-###-####", "cc": "GY", "name_en": "Guyana", "desc_en": "", "name_ru": "Гайана", "desc_ru": "" },
	{ "mask": "+852-####-####", "cc": "HK", "name_en": "Hong Kong", "desc_en": "", "name_ru": "Гонконг", "desc_ru": "" },
	{ "mask": "+504-####-####", "cc": "HN", "name_en": "Honduras", "desc_en": "", "name_ru": "Гондурас", "desc_ru": "" },
	{ "mask": "+385-##-###-###", "cc": "HR", "name_en": "Croatia", "desc_en": "", "name_ru": "Хорватия", "desc_ru": "" },
	{ "mask": "+509-##-##-####", "cc": "HT", "name_en": "Haiti", "desc_en": "", "name_ru": "Гаити", "desc_ru": "" },
	{ "mask": "+36(###)###-###", "cc": "HU", "name_en": "Hungary", "desc_en": "", "name_ru": "Венгрия", "desc_ru": "" },
	{ "mask": "+62(8##)###-####", "cc": "ID", "name_en": "Indonesia ", "desc_en": "mobile", "name_ru": "Индонезия ", "desc_ru": "мобильные" },
	{ "mask": "+62-##-###-##", "cc": "ID", "name_en": "Indonesia", "desc_en": "", "name_ru": "Индонезия", "desc_ru": "" },
	{ "mask": "+62-##-###-###", "cc": "ID", "name_en": "Indonesia", "desc_en": "", "name_ru": "Индонезия", "desc_ru": "" },
	{ "mask": "+62-##-###-####", "cc": "ID", "name_en": "Indonesia", "desc_en": "", "name_ru": "Индонезия", "desc_ru": "" },
	{ "mask": "+62(8##)###-###", "cc": "ID", "name_en": "Indonesia ", "desc_en": "mobile", "name_ru": "Индонезия ", "desc_ru": "мобильные" },
	{ "mask": "+62(8##)###-##-###", "cc": "ID", "name_en": "Indonesia ", "desc_en": "mobile", "name_ru": "Индонезия ", "desc_ru": "мобильные" },
	{ "mask": "+353(###)###-###", "cc": "IE", "name_en": "Ireland", "desc_en": "", "name_ru": "Ирландия", "desc_ru": "" },
	{ "mask": "+972-5#-###-####", "cc": "IL", "name_en": "Israel ", "desc_en": "mobile", "name_ru": "Израиль ", "desc_ru": "мобильные" },
	{ "mask": "+972-#-###-####", "cc": "IL", "name_en": "Israel", "desc_en": "", "name_ru": "Израиль", "desc_ru": "" },
	{ "mask": "+91(####)###-###", "cc": "IN", "name_en": "India", "desc_en": "", "name_ru": "Индия", "desc_ru": "" },
	{ "mask": "+246-###-####", "cc": "IO", "name_en": "Diego Garcia", "desc_en": "", "name_ru": "Диего-Гарсия", "desc_ru": "" },
	{ "mask": "+964(###)###-####", "cc": "IQ", "name_en": "Iraq", "desc_en": "", "name_ru": "Ирак", "desc_ru": "" },
	{ "mask": "+98(###)###-####", "cc": "IR", "name_en": "Iran", "desc_en": "", "name_ru": "Иран", "desc_ru": "" },
	{ "mask": "+354-###-####", "cc": "IS", "name_en": "Iceland", "desc_en": "", "name_ru": "Исландия", "desc_ru": "" },
	{ "mask": "+39(###)####-###", "cc": "IT", "name_en": "Italy", "desc_en": "", "name_ru": "Италия", "desc_ru": "" },
	{ "mask": "+1(876)###-####", "cc": "JM", "name_en": "Jamaica", "desc_en": "", "name_ru": "Ямайка", "desc_ru": "" },
	{ "mask": "+962-#-####-####", "cc": "JO", "name_en": "Jordan", "desc_en": "", "name_ru": "Иордания", "desc_ru": "" },
	{ "mask": "+81-##-####-####", "cc": "JP", "name_en": "Japan ", "desc_en": "mobile", "name_ru": "Япония ", "desc_ru": "мобильные" },
	{ "mask": "+81(###)###-###", "cc": "JP", "name_en": "Japan", "desc_en": "", "name_ru": "Япония", "desc_ru": "" },
	{ "mask": "+254-###-######", "cc": "KE", "name_en": "Kenya", "desc_en": "", "name_ru": "Кения", "desc_ru": "" },
	{ "mask": "+996(###)###-###", "cc": "KG", "name_en": "Kyrgyzstan", "desc_en": "", "name_ru": "Киргизия", "desc_ru": "" },
	{ "mask": "+855-##-###-###", "cc": "KH", "name_en": "Cambodia", "desc_en": "", "name_ru": "Камбоджа", "desc_ru": "" },
	{ "mask": "+686-##-###", "cc": "KI", "name_en": "Kiribati", "desc_en": "", "name_ru": "Кирибати", "desc_ru": "" },
	{ "mask": "+269-##-#####", "cc": "KM", "name_en": "Comoros", "desc_en": "", "name_ru": "Коморы", "desc_ru": "" },
	{ "mask": "+1(869)###-####", "cc": "KN", "name_en": "Saint Kitts & Nevis", "desc_en": "", "name_ru": "Сент-Китс и Невис", "desc_ru": "" },
	{ "mask": "+850-191-###-####", "cc": "KP", "name_en": "DPR Korea (North) ", "desc_en": "mobile", "name_ru": "Корейская НДР ", "desc_ru": "мобильные" },
	{ "mask": "+850-##-###-###", "cc": "KP", "name_en": "DPR Korea (North)", "desc_en": "", "name_ru": "Корейская НДР", "desc_ru": "" },
	{ "mask": "+850-###-####-###", "cc": "KP", "name_en": "DPR Korea (North)", "desc_en": "", "name_ru": "Корейская НДР", "desc_ru": "" },
	{ "mask": "+850-###-###", "cc": "KP", "name_en": "DPR Korea (North)", "desc_en": "", "name_ru": "Корейская НДР", "desc_ru": "" },
	{ "mask": "+850-####-####", "cc": "KP", "name_en": "DPR Korea (North)", "desc_en": "", "name_ru": "Корейская НДР", "desc_ru": "" },
	{ "mask": "+850-####-#############", "cc": "KP", "name_en": "DPR Korea (North)", "desc_en": "", "name_ru": "Корейская НДР", "desc_ru": "" },
	{ "mask": "+82-##-###-####", "cc": "KR", "name_en": "Korea (South)", "desc_en": "", "name_ru": "Респ. Корея", "desc_ru": "" },
	{ "mask": "+965-####-####", "cc": "KW", "name_en": "Kuwait", "desc_en": "", "name_ru": "Кувейт", "desc_ru": "" },
	{ "mask": "+1(345)###-####", "cc": "KY", "name_en": "Cayman Islands", "desc_en": "", "name_ru": "Каймановы острова", "desc_ru": "" },
	{ "mask": "+7(6##)###-##-##", "cc": "KZ", "name_en": "Kazakhstan", "desc_en": "", "name_ru": "Казахстан", "desc_ru": "" },
	{ "mask": "+7(7##)###-##-##", "cc": "KZ", "name_en": "Kazakhstan", "desc_en": "", "name_ru": "Казахстан", "desc_ru": "" },
	{ "mask": "+856(20##)###-###", "cc": "LA", "name_en": "Laos ", "desc_en": "mobile", "name_ru": "Лаос ", "desc_ru": "мобильные" },
	{ "mask": "+856-##-###-###", "cc": "LA", "name_en": "Laos", "desc_en": "", "name_ru": "Лаос", "desc_ru": "" },
	{ "mask": "+961-##-###-###", "cc": "LB", "name_en": "Lebanon ", "desc_en": "mobile", "name_ru": "Ливан ", "desc_ru": "мобильные" },
	{ "mask": "+961-#-###-###", "cc": "LB", "name_en": "Lebanon", "desc_en": "", "name_ru": "Ливан", "desc_ru": "" },
	{ "mask": "+1(758)###-####", "cc": "LC", "name_en": "Saint Lucia", "desc_en": "", "name_ru": "Сент-Люсия", "desc_ru": "" },
	{ "mask": "+423(###)###-####", "cc": "LI", "name_en": "Liechtenstein", "desc_en": "", "name_ru": "Лихтенштейн", "desc_ru": "" },
	{ "mask": "+94-##-###-####", "cc": "LK", "name_en": "Sri Lanka", "desc_en": "", "name_ru": "Шри-Ланка", "desc_ru": "" },
	{ "mask": "+231-##-###-###", "cc": "LR", "name_en": "Liberia", "desc_en": "", "name_ru": "Либерия", "desc_ru": "" },
	{ "mask": "+266-#-###-####", "cc": "LS", "name_en": "Lesotho", "desc_en": "", "name_ru": "Лесото", "desc_ru": "" },
	{ "mask": "+370(###)##-###", "cc": "LT", "name_en": "Lithuania", "desc_en": "", "name_ru": "Литва", "desc_ru": "" },
	{ "mask": "+352(###)###-###", "cc": "LU", "name_en": "Luxembourg", "desc_en": "", "name_ru": "Люксембург", "desc_ru": "" },
	{ "mask": "+371-##-###-###", "cc": "LV", "name_en": "Latvia", "desc_en": "", "name_ru": "Латвия", "desc_ru": "" },
	{ "mask": "+218-##-###-###", "cc": "LY", "name_en": "Libya", "desc_en": "", "name_ru": "Ливия", "desc_ru": "" },
	{ "mask": "+218-21-###-####", "cc": "LY", "name_en": "Libya", "desc_en": "Tripoli", "name_ru": "Ливия", "desc_ru": "Триполи" },
	{ "mask": "+212-##-####-###", "cc": "MA", "name_en": "Morocco", "desc_en": "", "name_ru": "Марокко", "desc_ru": "" },
	{ "mask": "+377(###)###-###", "cc": "MC", "name_en": "Monaco", "desc_en": "", "name_ru": "Монако", "desc_ru": "" },
	{ "mask": "+377-##-###-###", "cc": "MC", "name_en": "Monaco", "desc_en": "", "name_ru": "Монако", "desc_ru": "" },
	{ "mask": "+373-####-####", "cc": "MD", "name_en": "Moldova", "desc_en": "", "name_ru": "Молдова", "desc_ru": "" },
	{ "mask": "+382-##-###-###", "cc": "ME", "name_en": "Montenegro", "desc_en": "", "name_ru": "Черногория", "desc_ru": "" },
	{ "mask": "+261-##-##-#####", "cc": "MG", "name_en": "Madagascar", "desc_en": "", "name_ru": "Мадагаскар", "desc_ru": "" },
	{ "mask": "+692-###-####", "cc": "MH", "name_en": "Marshall Islands", "desc_en": "", "name_ru": "Маршалловы Острова", "desc_ru": "" },
	{ "mask": "+389-##-###-###", "cc": "MK", "name_en": "Republic of Macedonia", "desc_en": "", "name_ru": "Респ. Македония", "desc_ru": "" },
	{ "mask": "+223-##-##-####", "cc": "ML", "name_en": "Mali", "desc_en": "", "name_ru": "Мали", "desc_ru": "" },
	{ "mask": "+95-##-###-###", "cc": "MM", "name_en": "Burma (Myanmar)", "desc_en": "", "name_ru": "Бирма (Мьянма)", "desc_ru": "" },
	{ "mask": "+95-#-###-###", "cc": "MM", "name_en": "Burma (Myanmar)", "desc_en": "", "name_ru": "Бирма (Мьянма)", "desc_ru": "" },
	{ "mask": "+95-###-###", "cc": "MM", "name_en": "Burma (Myanmar)", "desc_en": "", "name_ru": "Бирма (Мьянма)", "desc_ru": "" },
	{ "mask": "+976-##-##-####", "cc": "MN", "name_en": "Mongolia", "desc_en": "", "name_ru": "Монголия", "desc_ru": "" },
	{ "mask": "+853-####-####", "cc": "MO", "name_en": "Macau", "desc_en": "", "name_ru": "Макао", "desc_ru": "" },
	{ "mask": "+1(670)###-####", "cc": "MP", "name_en": "Northern Mariana Islands", "desc_en": "", "name_ru": "Северные Марианские острова Сайпан", "desc_ru": "" },
	{ "mask": "+596(###)##-##-##", "cc": "MQ", "name_en": "Martinique", "desc_en": "", "name_ru": "Мартиника", "desc_ru": "" },
	{ "mask": "+222-##-##-####", "cc": "MR", "name_en": "Mauritania", "desc_en": "", "name_ru": "Мавритания", "desc_ru": "" },
	{ "mask": "+1(664)###-####", "cc": "MS", "name_en": "Montserrat", "desc_en": "", "name_ru": "Монтсеррат", "desc_ru": "" },
	{ "mask": "+356-####-####", "cc": "MT", "name_en": "Malta", "desc_en": "", "name_ru": "Мальта", "desc_ru": "" },
	{ "mask": "+230-###-####", "cc": "MU", "name_en": "Mauritius", "desc_en": "", "name_ru": "Маврикий", "desc_ru": "" },
	{ "mask": "+960-###-####", "cc": "MV", "name_en": "Maldives", "desc_en": "", "name_ru": "Мальдивские острова", "desc_ru": "" },
	{ "mask": "+265-1-###-###", "cc": "MW", "name_en": "Malawi", "desc_en": "Telecom Ltd", "name_ru": "Малави", "desc_ru": "Telecom Ltd" },
	{ "mask": "+265-#-####-####", "cc": "MW", "name_en": "Malawi", "desc_en": "", "name_ru": "Малави", "desc_ru": "" },
	{ "mask": "+52(###)###-####", "cc": "MX", "name_en": "Mexico", "desc_en": "", "name_ru": "Мексика", "desc_ru": "" },
	{ "mask": "+52-##-##-####", "cc": "MX", "name_en": "Mexico", "desc_en": "", "name_ru": "Мексика", "desc_ru": "" },
	{ "mask": "+60-##-###-####", "cc": "MY", "name_en": "Malaysia ", "desc_en": "mobile", "name_ru": "Малайзия ", "desc_ru": "мобильные" },
	{ "mask": "+60(###)###-###", "cc": "MY", "name_en": "Malaysia", "desc_en": "", "name_ru": "Малайзия", "desc_ru": "" },
	{ "mask": "+60-##-###-###", "cc": "MY", "name_en": "Malaysia", "desc_en": "", "name_ru": "Малайзия", "desc_ru": "" },
	{ "mask": "+60-#-###-###", "cc": "MY", "name_en": "Malaysia", "desc_en": "", "name_ru": "Малайзия", "desc_ru": "" },
	{ "mask": "+258-##-###-###", "cc": "MZ", "name_en": "Mozambique", "desc_en": "", "name_ru": "Мозамбик", "desc_ru": "" },
	{ "mask": "+264-##-###-####", "cc": "NA", "name_en": "Namibia", "desc_en": "", "name_ru": "Намибия", "desc_ru": "" },
	{ "mask": "+687-##-####", "cc": "NC", "name_en": "New Caledonia", "desc_en": "", "name_ru": "Новая Каледония", "desc_ru": "" },
	{ "mask": "+227-##-##-####", "cc": "NE", "name_en": "Niger", "desc_en": "", "name_ru": "Нигер", "desc_ru": "" },
	{ "mask": "+672-3##-###", "cc": "NF", "name_en": "Norfolk Island", "desc_en": "", "name_ru": "Норфолк (остров)", "desc_ru": "" },
	{ "mask": "+234(###)###-####", "cc": "NG", "name_en": "Nigeria", "desc_en": "", "name_ru": "Нигерия", "desc_ru": "" },
	{ "mask": "+234-##-###-###", "cc": "NG", "name_en": "Nigeria", "desc_en": "", "name_ru": "Нигерия", "desc_ru": "" },
	{ "mask": "+234-##-###-##", "cc": "NG", "name_en": "Nigeria", "desc_en": "", "name_ru": "Нигерия", "desc_ru": "" },
	{ "mask": "+234(###)###-####", "cc": "NG", "name_en": "Nigeria ", "desc_en": "mobile", "name_ru": "Нигерия ", "desc_ru": "мобильные" },
	{ "mask": "+505-####-####", "cc": "NI", "name_en": "Nicaragua", "desc_en": "", "name_ru": "Никарагуа", "desc_ru": "" },
	{ "mask": "+31-##-###-####", "cc": "NL", "name_en": "Netherlands", "desc_en": "", "name_ru": "Нидерланды", "desc_ru": "" },
	{ "mask": "+47(###)##-###", "cc": "NO", "name_en": "Norway", "desc_en": "", "name_ru": "Норвегия", "desc_ru": "" },
	{ "mask": "+977-##-###-###", "cc": "NP", "name_en": "Nepal", "desc_en": "", "name_ru": "Непал", "desc_ru": "" },
	{ "mask": "+674-###-####", "cc": "NR", "name_en": "Nauru", "desc_en": "", "name_ru": "Науру", "desc_ru": "" },
	{ "mask": "+683-####", "cc": "NU", "name_en": "Niue", "desc_en": "", "name_ru": "Ниуэ", "desc_ru": "" },
	{ "mask": "+64(###)###-###", "cc": "NZ", "name_en": "New Zealand", "desc_en": "", "name_ru": "Новая Зеландия", "desc_ru": "" },
	{ "mask": "+64-##-###-###", "cc": "NZ", "name_en": "New Zealand", "desc_en": "", "name_ru": "Новая Зеландия", "desc_ru": "" },
	{ "mask": "+64(###)###-####", "cc": "NZ", "name_en": "New Zealand", "desc_en": "", "name_ru": "Новая Зеландия", "desc_ru": "" },
	{ "mask": "+968-##-###-###", "cc": "OM", "name_en": "Oman", "desc_en": "", "name_ru": "Оман", "desc_ru": "" },
	{ "mask": "+507-###-####", "cc": "PA", "name_en": "Panama", "desc_en": "", "name_ru": "Панама", "desc_ru": "" },
	{ "mask": "+51(###)###-###", "cc": "PE", "name_en": "Peru", "desc_en": "", "name_ru": "Перу", "desc_ru": "" },
	{ "mask": "+689-##-##-##", "cc": "PF", "name_en": "French Polynesia", "desc_en": "", "name_ru": "Французская Полинезия (Таити)", "desc_ru": "" },
	{ "mask": "+675(###)##-###", "cc": "PG", "name_en": "Papua New Guinea", "desc_en": "", "name_ru": "Папуа-Новая Гвинея", "desc_ru": "" },
	{ "mask": "+63(###)###-####", "cc": "PH", "name_en": "Philippines", "desc_en": "", "name_ru": "Филиппины", "desc_ru": "" },
	{ "mask": "+92(###)###-####", "cc": "PK", "name_en": "Pakistan", "desc_en": "", "name_ru": "Пакистан", "desc_ru": "" },
	{ "mask": "+48(###)###-###", "cc": "PL", "name_en": "Poland", "desc_en": "", "name_ru": "Польша", "desc_ru": "" },
	{ "mask": "+970-##-###-####", "cc": "PS", "name_en": "Palestine", "desc_en": "", "name_ru": "Палестина", "desc_ru": "" },
	{ "mask": "+351-##-###-####", "cc": "PT", "name_en": "Portugal", "desc_en": "", "name_ru": "Португалия", "desc_ru": "" },
	{ "mask": "+680-###-####", "cc": "PW", "name_en": "Palau", "desc_en": "", "name_ru": "Палау", "desc_ru": "" },
	{ "mask": "+595(###)###-###", "cc": "PY", "name_en": "Paraguay", "desc_en": "", "name_ru": "Парагвай", "desc_ru": "" },
	{ "mask": "+974-####-####", "cc": "QA", "name_en": "Qatar", "desc_en": "", "name_ru": "Катар", "desc_ru": "" },
	{ "mask": "+262-#####-####", "cc": "RE", "name_en": "Reunion", "desc_en": "", "name_ru": "Реюньон", "desc_ru": "" },
	{ "mask": "+40-##-###-####", "cc": "RO", "name_en": "Romania", "desc_en": "", "name_ru": "Румыния", "desc_ru": "" },
	{ "mask": "+381-##-###-####", "cc": "RS", "name_en": "Serbia", "desc_en": "", "name_ru": "Сербия", "desc_ru": "" },
	{ "mask": "+7(###)###-##-##", "cc": "RU", "name_en": "Russia", "desc_en": "", "name_ru": "Россия", "desc_ru": "" },
	{ "mask": "+250(###)###-###", "cc": "RW", "name_en": "Rwanda", "desc_en": "", "name_ru": "Руанда", "desc_ru": "" },
	{ "mask": "+966-5-####-####", "cc": "SA", "name_en": "Saudi Arabia ", "desc_en": "mobile", "name_ru": "Саудовская Аравия ", "desc_ru": "мобильные" },
	{ "mask": "+966-#-###-####", "cc": "SA", "name_en": "Saudi Arabia", "desc_en": "", "name_ru": "Саудовская Аравия", "desc_ru": "" },
	{ "mask": "+677-###-####", "cc": "SB", "name_en": "Solomon Islands ", "desc_en": "mobile", "name_ru": "Соломоновы Острова ", "desc_ru": "мобильные" },
	{ "mask": "+677-#####", "cc": "SB", "name_en": "Solomon Islands", "desc_en": "", "name_ru": "Соломоновы Острова", "desc_ru": "" },
	{ "mask": "+248-#-###-###", "cc": "SC", "name_en": "Seychelles", "desc_en": "", "name_ru": "Сейшелы", "desc_ru": "" },
	{ "mask": "+249-##-###-####", "cc": "SD", "name_en": "Sudan", "desc_en": "", "name_ru": "Судан", "desc_ru": "" },
	{ "mask": "+46-##-###-####", "cc": "SE", "name_en": "Sweden", "desc_en": "", "name_ru": "Швеция", "desc_ru": "" },
	{ "mask": "+65-####-####", "cc": "SG", "name_en": "Singapore", "desc_en": "", "name_ru": "Сингапур", "desc_ru": "" },
	{ "mask": "+290-####", "cc": "SH", "name_en": "Saint Helena", "desc_en": "", "name_ru": "Остров Святой Елены", "desc_ru": "" },
	{ "mask": "+290-####", "cc": "SH", "name_en": "Tristan da Cunha", "desc_en": "", "name_ru": "Тристан-да-Кунья", "desc_ru": "" },
	{ "mask": "+386-##-###-###", "cc": "SI", "name_en": "Slovenia", "desc_en": "", "name_ru": "Словения", "desc_ru": "" },
	{ "mask": "+421(###)###-###", "cc": "SK", "name_en": "Slovakia", "desc_en": "", "name_ru": "Словакия", "desc_ru": "" },
	{ "mask": "+232-##-######", "cc": "SL", "name_en": "Sierra Leone", "desc_en": "", "name_ru": "Сьерра-Леоне", "desc_ru": "" },
	{ "mask": "+378-####-######", "cc": "SM", "name_en": "San Marino", "desc_en": "", "name_ru": "Сан-Марино", "desc_ru": "" },
	{ "mask": "+221-##-###-####", "cc": "SN", "name_en": "Senegal", "desc_en": "", "name_ru": "Сенегал", "desc_ru": "" },
	{ "mask": "+252-##-###-###", "cc": "SO", "name_en": "Somalia", "desc_en": "", "name_ru": "Сомали", "desc_ru": "" },
	{ "mask": "+252-#-###-###", "cc": "SO", "name_en": "Somalia", "desc_en": "", "name_ru": "Сомали", "desc_ru": "" },
	{ "mask": "+252-#-###-###", "cc": "SO", "name_en": "Somalia ", "desc_en": "mobile", "name_ru": "Сомали ", "desc_ru": "мобильные" },
	{ "mask": "+597-###-####", "cc": "SR", "name_en": "Suriname ", "desc_en": "mobile", "name_ru": "Суринам ", "desc_ru": "мобильные" },
	{ "mask": "+597-###-###", "cc": "SR", "name_en": "Suriname", "desc_en": "", "name_ru": "Суринам", "desc_ru": "" },
	{ "mask": "+211-##-###-####", "cc": "SS", "name_en": "South Sudan", "desc_en": "", "name_ru": "Южный Судан", "desc_ru": "" },
	{ "mask": "+239-##-#####", "cc": "ST", "name_en": "Sao Tome and Principe", "desc_en": "", "name_ru": "Сан-Томе и Принсипи", "desc_ru": "" },
	{ "mask": "+503-##-##-####", "cc": "SV", "name_en": "El Salvador", "desc_en": "", "name_ru": "Сальвадор", "desc_ru": "" },
	{ "mask": "+1(721)###-####", "cc": "SX", "name_en": "Sint Maarten", "desc_en": "", "name_ru": "Синт-Маартен", "desc_ru": "" },
	{ "mask": "+963-##-####-###", "cc": "SY", "name_en": "Syrian Arab Republic", "desc_en": "", "name_ru": "Сирийская арабская республика", "desc_ru": "" },
	{ "mask": "+268-##-##-####", "cc": "SZ", "name_en": "Swaziland", "desc_en": "", "name_ru": "Свазиленд", "desc_ru": "" },
	{ "mask": "+1(649)###-####", "cc": "TC", "name_en": "Turks & Caicos", "desc_en": "", "name_ru": "Тёркс и Кайкос", "desc_ru": "" },
	{ "mask": "+235-##-##-##-##", "cc": "TD", "name_en": "Chad", "desc_en": "", "name_ru": "Чад", "desc_ru": "" },
	{ "mask": "+228-##-###-###", "cc": "TG", "name_en": "Togo", "desc_en": "", "name_ru": "Того", "desc_ru": "" },
	{ "mask": "+66-##-###-####", "cc": "TH", "name_en": "Thailand ", "desc_en": "mobile", "name_ru": "Таиланд ", "desc_ru": "мобильные" },
	{ "mask": "+66-##-###-###", "cc": "TH", "name_en": "Thailand", "desc_en": "", "name_ru": "Таиланд", "desc_ru": "" },
	{ "mask": "+992-##-###-####", "cc": "TJ", "name_en": "Tajikistan", "desc_en": "", "name_ru": "Таджикистан", "desc_ru": "" },
	{ "mask": "+690-####", "cc": "TK", "name_en": "Tokelau", "desc_en": "", "name_ru": "Токелау", "desc_ru": "" },
	{ "mask": "+670-###-####", "cc": "TL", "name_en": "East Timor", "desc_en": "", "name_ru": "Восточный Тимор", "desc_ru": "" },
	{ "mask": "+670-77#-#####", "cc": "TL", "name_en": "East Timor", "desc_en": "Timor Telecom", "name_ru": "Восточный Тимор", "desc_ru": "Timor Telecom" },
	{ "mask": "+670-78#-#####", "cc": "TL", "name_en": "East Timor", "desc_en": "Timor Telecom", "name_ru": "Восточный Тимор", "desc_ru": "Timor Telecom" },
	{ "mask": "+993-#-###-####", "cc": "TM", "name_en": "Turkmenistan", "desc_en": "", "name_ru": "Туркменистан", "desc_ru": "" },
	{ "mask": "+216-##-###-###", "cc": "TN", "name_en": "Tunisia", "desc_en": "", "name_ru": "Тунис", "desc_ru": "" },
	{ "mask": "+676-#####", "cc": "TO", "name_en": "Tonga", "desc_en": "", "name_ru": "Тонга", "desc_ru": "" },
	{ "mask": "+90(###)###-####", "cc": "TR", "name_en": "Turkey", "desc_en": "", "name_ru": "Турция", "desc_ru": "" },
	{ "mask": "+1(868)###-####", "cc": "TT", "name_en": "Trinidad & Tobago", "desc_en": "", "name_ru": "Тринидад и Тобаго", "desc_ru": "" },
	{ "mask": "+688-90####", "cc": "TV", "name_en": "Tuvalu ", "desc_en": "mobile", "name_ru": "Тувалу ", "desc_ru": "мобильные" },
	{ "mask": "+688-2####", "cc": "TV", "name_en": "Tuvalu", "desc_en": "", "name_ru": "Тувалу", "desc_ru": "" },
	{ "mask": "+886-#-####-####", "cc": "TW", "name_en": "Taiwan", "desc_en": "", "name_ru": "Тайвань", "desc_ru": "" },
	{ "mask": "+886-####-####", "cc": "TW", "name_en": "Taiwan", "desc_en": "", "name_ru": "Тайвань", "desc_ru": "" },
	{ "mask": "+255-##-###-####", "cc": "TZ", "name_en": "Tanzania", "desc_en": "", "name_ru": "Танзания", "desc_ru": "" },
	{ "mask": "+380(##)###-##-##", "cc": "UA", "name_en": "Ukraine", "desc_en": "", "name_ru": "Украина", "desc_ru": "" },
	{ "mask": "+256(###)###-###", "cc": "UG", "name_en": "Uganda", "desc_en": "", "name_ru": "Уганда", "desc_ru": "" },
	{ "mask": "+44-##-####-####", "cc": "UK", "name_en": "United Kingdom", "desc_en": "", "name_ru": "Великобритания", "desc_ru": "" },
	{ "mask": "+598-#-###-##-##", "cc": "UY", "name_en": "Uruguay", "desc_en": "", "name_ru": "Уругвай", "desc_ru": "" },
	{ "mask": "+998-##-###-####", "cc": "UZ", "name_en": "Uzbekistan", "desc_en": "", "name_ru": "Узбекистан", "desc_ru": "" },
	{ "mask": "+39-6-698-#####", "cc": "VA", "name_en": "Vatican City", "desc_en": "", "name_ru": "Ватикан", "desc_ru": "" },
	{ "mask": "+1(784)###-####", "cc": "VC", "name_en": "Saint Vincent & the Grenadines", "desc_en": "", "name_ru": "Сент-Винсент и Гренадины", "desc_ru": "" },
	{ "mask": "+58(###)###-####", "cc": "VE", "name_en": "Venezuela", "desc_en": "", "name_ru": "Венесуэла", "desc_ru": "" },
	{ "mask": "+1(284)###-####", "cc": "VG", "name_en": "British Virgin Islands", "desc_en": "", "name_ru": "Британские Виргинские острова", "desc_ru": "" },
	{ "mask": "+1(340)###-####", "cc": "VI", "name_en": "US Virgin Islands", "desc_en": "", "name_ru": "Американские Виргинские острова", "desc_ru": "" },
	{ "mask": "+84-##-####-###", "cc": "VN", "name_en": "Vietnam", "desc_en": "", "name_ru": "Вьетнам", "desc_ru": "" },
	{ "mask": "+84(###)####-###", "cc": "VN", "name_en": "Vietnam", "desc_en": "", "name_ru": "Вьетнам", "desc_ru": "" },
	{ "mask": "+678-##-#####", "cc": "VU", "name_en": "Vanuatu ", "desc_en": "mobile", "name_ru": "Вануату ", "desc_ru": "мобильные" },
	{ "mask": "+678-#####", "cc": "VU", "name_en": "Vanuatu", "desc_en": "", "name_ru": "Вануату", "desc_ru": "" },
	{ "mask": "+681-##-####", "cc": "WF", "name_en": "Wallis and Futuna", "desc_en": "", "name_ru": "Уоллис и Футуна", "desc_ru": "" },
	{ "mask": "+685-##-####", "cc": "WS", "name_en": "Samoa", "desc_en": "", "name_ru": "Самоа", "desc_ru": "" },
	{ "mask": "+967-###-###-###", "cc": "YE", "name_en": "Yemen ", "desc_en": "mobile", "name_ru": "Йемен ", "desc_ru": "мобильные" },
	{ "mask": "+967-#-###-###", "cc": "YE", "name_en": "Yemen", "desc_en": "", "name_ru": "Йемен", "desc_ru": "" },
	{ "mask": "+967-##-###-###", "cc": "YE", "name_en": "Yemen", "desc_en": "", "name_ru": "Йемен", "desc_ru": "" },
	{ "mask": "+27-##-###-####", "cc": "ZA", "name_en": "South Africa", "desc_en": "", "name_ru": "Южно-Африканская Респ.", "desc_ru": "" },
	{ "mask": "+260-##-###-####", "cc": "ZM", "name_en": "Zambia", "desc_en": "", "name_ru": "Замбия", "desc_ru": "" },
	{ "mask": "+263-#-######", "cc": "ZW", "name_en": "Zimbabwe", "desc_en": "", "name_ru": "Зимбабве", "desc_ru": "" },
	{ "mask": "+1(###)###-####", "cc": ["US", "CA"], "name_en": "USA and Canada", "desc_en": "", "name_ru": "США и Канада", "desc_ru": "" }
]
;
            }(Tygh, Tygh.$));
</script>


<!-- Inline scripts -->
<script type="text/javascript" src="js/exceptions.js?ver=4.3.1" ></script>
<script type="text/javascript" src="js/checkout.js?ver=4.3.1" ></script>
<script type="text/javascript">
(function(_, $) {

    /* Do not put this code to document.ready, because it should be
       initialized first
    */
    $.ceRebuildStates('init', {
        default_country: 'US',
        states: {"AU":[{"country_code":"AU","code":"ACT","state":"Australian Capital Territory"},{"country_code":"AU","code":"NSW","state":"New South Wales"},{"country_code":"AU","code":"NT","state":"Northern Territory"},{"country_code":"AU","code":"QLD","state":"Queensland"},{"country_code":"AU","code":"SA","state":"South Australia"},{"country_code":"AU","code":"TAS","state":"Tasmania"},{"country_code":"AU","code":"VIC","state":"Victoria"},{"country_code":"AU","code":"WA","state":"Western Australia"}],"BG":[{"country_code":"BG","code":"SF","state":"Sofia"}],"CA":[{"country_code":"CA","code":"AB","state":"Alberta"},{"country_code":"CA","code":"BC","state":"British Columbia"},{"country_code":"CA","code":"MB","state":"Manitoba"},{"country_code":"CA","code":"NB","state":"New Brunswick"},{"country_code":"CA","code":"NL","state":"Newfoundland and Labrador"},{"country_code":"CA","code":"NT","state":"Northwest Territories"},{"country_code":"CA","code":"NS","state":"Nova Scotia"},{"country_code":"CA","code":"NU","state":"Nunavut"},{"country_code":"CA","code":"ON","state":"Ontario"},{"country_code":"CA","code":"PE","state":"Prince Edward Island"},{"country_code":"CA","code":"QC","state":"Quebec"},{"country_code":"CA","code":"SK","state":"Saskatchewan"},{"country_code":"CA","code":"YT","state":"Yukon"}],"CH":[{"country_code":"CH","code":"AR","state":"Appenzell Rhodes-Ext\u00e9rieures"},{"country_code":"CH","code":"AI","state":"Appenzell Rhodes-Int\u00e9rieures"},{"country_code":"CH","code":"AG","state":"Argovie"},{"country_code":"CH","code":"BL","state":"B\u00e2le-Campagne"},{"country_code":"CH","code":"BS","state":"B\u00e2le-Ville"},{"country_code":"CH","code":"BE","state":"Berne"},{"country_code":"CH","code":"FR","state":"Fribourg"},{"country_code":"CH","code":"GE","state":"Gen\u00e8ve"},{"country_code":"CH","code":"GL","state":"Glaris"},{"country_code":"CH","code":"GR","state":"Grisons"},{"country_code":"CH","code":"JU","state":"Jura"},{"country_code":"CH","code":"LU","state":"Lucerne"},{"country_code":"CH","code":"NE","state":"Neuch\u00e2tel"},{"country_code":"CH","code":"NW","state":"Nidwald"},{"country_code":"CH","code":"OW","state":"Obwald"},{"country_code":"CH","code":"SG","state":"Saint-Gall"},{"country_code":"CH","code":"SH","state":"Schaffhouse"},{"country_code":"CH","code":"SZ","state":"Schwytz"},{"country_code":"CH","code":"SO","state":"Soleure"},{"country_code":"CH","code":"TI","state":"Tessin"},{"country_code":"CH","code":"TG","state":"Thurgovie"},{"country_code":"CH","code":"UR","state":"Uri"},{"country_code":"CH","code":"VS","state":"Valais"},{"country_code":"CH","code":"VD","state":"Vaud"},{"country_code":"CH","code":"ZG","state":"Zoug"},{"country_code":"CH","code":"ZH","state":"Zurich"}],"DE":[{"country_code":"DE","code":"BAW","state":"Baden-W\u00fcrttemberg"},{"country_code":"DE","code":"BAY","state":"Bayern"},{"country_code":"DE","code":"BER","state":"Berlin"},{"country_code":"DE","code":"BRG","state":"Branderburg"},{"country_code":"DE","code":"BRE","state":"Bremen"},{"country_code":"DE","code":"HAM","state":"Hamburg"},{"country_code":"DE","code":"HES","state":"Hessen"},{"country_code":"DE","code":"MEC","state":"Mecklenburg-Vorpommern"},{"country_code":"DE","code":"NDS","state":"Niedersachsen"},{"country_code":"DE","code":"NRW","state":"Nordrhein-Westfalen"},{"country_code":"DE","code":"RHE","state":"Rheinland-Pfalz"},{"country_code":"DE","code":"SAR","state":"Saarland"},{"country_code":"DE","code":"SAS","state":"Sachsen"},{"country_code":"DE","code":"SAC","state":"Sachsen-Anhalt"},{"country_code":"DE","code":"SCN","state":"Schleswig-Holstein"},{"country_code":"DE","code":"THE","state":"Th\u00fcringen"}],"ES":[{"country_code":"ES","code":"C","state":"A Coru\u00f1a"},{"country_code":"ES","code":"VI","state":"\u00c1lava"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"AB","state":"Albacete"},{"country_code":"ES","code":"A","state":"Alicante"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"AL","state":"Almer\u00eda"},{"country_code":"ES","code":"O","state":"Asturias"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"AV","state":"\u00c1vila"},{"country_code":"ES","code":"BA","state":"Badajoz"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"PM","state":"Baleares"},{"country_code":"ES","code":"B","state":"Barcelona"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"BU","state":"Burgos"},{"country_code":"ES","code":"CC","state":"C\u00e1ceres"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"CA","state":"C\u00e1diz"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"S","state":"Cantabria"},{"country_code":"ES","code":"CS","state":"Castell\u00f3n"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"CE","state":"Ceuta"},{"country_code":"ES","code":"CR","state":"Ciudad Real"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {"country_code":"ES","code":"CO","state":"C\u00f3rdoba"},{"country_code":"ES","code":"CU","state":"Cuenca"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {"country_code":"ES","code":"GI","state":"Girona"},{"country_code":"ES","code":"GR","state":"Granada"},
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {"country_code":"ES","code":"GU","state":"Guadalajara"},{"country_code":"ES","code":"SS","state":"Guip\u00fazcoa"},{"country_code":"ES","code":"H","state":"Huelva"},{"country_code":"ES","code":"HU","state":"Huesca"},{"country_code":"ES","code":"J","state":"Ja\u00e9n"},{"country_code":"ES","code":"LO","state":"La Rioja"},{"country_code":"ES","code":"GC","state":"Las Palmas"},{"country_code":"ES","code":"LE","state":"Le\u00f3n"},{"country_code":"ES","code":"L","state":"Lleida"},{"country_code":"ES","code":"LU","state":"Lugo"},{"country_code":"ES","code":"M","state":"Madrid"},{"country_code":"ES","code":"MA","state":"M\u00e1laga"},{"country_code":"ES","code":"ML","state":"Melilla"},{"country_code":"ES","code":"MU","state":"Murcia"},{"country_code":"ES","code":"NA","state":"Navarra"},{"country_code":"ES","code":"OR","state":"Ourense"},{"country_code":"ES","code":"P","state":"Palencia"},{"country_code":"ES","code":"PO","state":"Pontevedra"},{"country_code":"ES","code":"SA","state":"Salamanca"},{"country_code":"ES","code":"TF","state":"Santa Cruz de Tenerife"},{"country_code":"ES","code":"SG","state":"Segovia"},{"country_code":"ES","code":"SE","state":"Sevilla"},{"country_code":"ES","code":"SO","state":"Soria"},{"country_code":"ES","code":"T","state":"Tarragona"},{"country_code":"ES","code":"TE","state":"Teruel"},{"country_code":"ES","code":"TO","state":"Toledo"},{"country_code":"ES","code":"V","state":"Valencia"},{"country_code":"ES","code":"VA","state":"Valladolid"},{"country_code":"ES","code":"BI","state":"Vizcaya"},{"country_code":"ES","code":"ZA","state":"Zamora"},{"country_code":"ES","code":"Z","state":"Zaragoza"}],"FR":[{"country_code":"FR","code":"01","state":"Ain"},{"country_code":"FR","code":"02","state":"Aisne"},{"country_code":"FR","code":"03","state":"Allier"},{"country_code":"FR","code":"04","state":"Alpes-de-Haute-Provence"},{"country_code":"FR","code":"06","state":"Alpes-Maritimes"},{"country_code":"FR","code":"07","state":"Ard\u00e8che"},{"country_code":"FR","code":"08","state":"Ardennes"},{"country_code":"FR","code":"09","state":"Ari\u00e8ge"},{"country_code":"FR","code":"10","state":"Aube"},{"country_code":"FR","code":"11","state":"Aude"},{"country_code":"FR","code":"12","state":"Aveyron"},{"country_code":"FR","code":"67","state":"Bas-Rhin"},{"country_code":"FR","code":"13","state":"Bouches-du-Rh\u00f4ne"},{"country_code":"FR","code":"14","state":"Calvados"},{"country_code":"FR","code":"15","state":"Cantal"},{"country_code":"FR","code":"16","state":"Charente"},{"country_code":"FR","code":"17","state":"Charente-Maritime"},{"country_code":"FR","code":"18","state":"Cher"},{"country_code":"FR","code":"19","state":"Corr\u00e8ze"},{"country_code":"FR","code":"2A","state":"Corse-du-Sud"},{"country_code":"FR","code":"21","state":"C\u00f4te-d'Or"},{"country_code":"FR","code":"22","state":"C\u00f4tes-d'Armor"},{"country_code":"FR","code":"23","state":"Creuse"},{"country_code":"FR","code":"79","state":"Deux-S\u00e8vres"},{"country_code":"FR","code":"24","state":"Dordogne"},{"country_code":"FR","code":"25","state":"Doubs"},{"country_code":"FR","code":"26","state":"Dr\u00f4me"},{"country_code":"FR","code":"91","state":"Essonne"},{"country_code":"FR","code":"27","state":"Eure"},{"country_code":"FR","code":"28","state":"Eure-et-Loir"},{"country_code":"FR","code":"29","state":"Finist\u00e8re"},{"country_code":"FR","code":"30","state":"Gard"},{"country_code":"FR","code":"32","state":"Gers"},{"country_code":"FR","code":"33","state":"Gironde"},{"country_code":"FR","code":"68","state":"Haut-Rhin"},{"country_code":"FR","code":"2B","state":"Haute-Corse"},{"country_code":"FR","code":"31","state":"Haute-Garonne"},{"country_code":"FR","code":"43","state":"Haute-Loire"},{"country_code":"FR","code":"52","state":"Haute-Marne"},{"country_code":"FR","code":"70","state":"Haute-Sa\u00f4ne"},{"country_code":"FR","code":"74","state":"Haute-Savoie"},{"country_code":"FR","code":"87","state":"Haute-Vienne"},{"country_code":"FR","code":"05","state":"Hautes-Alpes"},{"country_code":"FR","code":"65","state":"Hautes-Pyr\u00e9n\u00e9es"},{"country_code":"FR","code":"92","state":"Hauts-de-Seine"},{"country_code":"FR","code":"34","state":"H\u00e9rault"},{"country_code":"FR","code":"35","state":"Ille-et-Vilaine"},{"country_code":"FR","code":"36","state":"Indre"},{"country_code":"FR","code":"37","state":"Indre-et-Loire"},{"country_code":"FR","code":"38","state":"Is\u00e8re"},{"country_code":"FR","code":"39","state":"Jura"},{"country_code":"FR","code":"40","state":"Landes"},{"country_code":"FR","code":"41","state":"Loir-et-Cher"},{"country_code":"FR","code":"42","state":"Loire"},{"country_code":"FR","code":"44","state":"Loire-Atlantique"},{"country_code":"FR","code":"45","state":"Loiret"},{"country_code":"FR","code":"46","state":"Lot"},{"country_code":"FR","code":"47","state":"Lot-et-Garonne"},{"country_code":"FR","code":"48","state":"Loz\u00e8re"},{"country_code":"FR","code":"49","state":"Maine-et-Loire"},{"country_code":"FR","code":"50","state":"Manche"},{"country_code":"FR","code":"51","state":"Marne"},{"country_code":"FR","code":"53","state":"Mayenne"},{"country_code":"FR","code":"54","state":"Meurthe-et-Moselle"},{"country_code":"FR","code":"55","state":"Meuse"},{"country_code":"FR","code":"56","state":"Morbihan"},{"country_code":"FR","code":"57","state":"Moselle"},{"country_code":"FR","code":"58","state":"Ni\u00e8vre"},{"country_code":"FR","code":"59","state":"Nord"},{"country_code":"FR","code":"60","state":"Oise"},{"country_code":"FR","code":"61","state":"Orne"},{"country_code":"FR","code":"75","state":"Paris"},{"country_code":"FR","code":"62","state":"Pas-de-Calais"},{"country_code":"FR","code":"63","state":"Puy-de-D\u00f4me"},{"country_code":"FR","code":"64","state":"Pyr\u00e9n\u00e9es-Atlantiques"},{"country_code":"FR","code":"66","state":"Pyr\u00e9n\u00e9es-Orientales"},{"country_code":"FR","code":"69","state":"Rh\u00f4ne"},{"country_code":"FR","code":"71","state":"Sa\u00f4ne-et-Loire"},{"country_code":"FR","code":"72","state":"Sarthe"},{"country_code":"FR","code":"73","state":"Savoie"},{"country_code":"FR","code":"77","state":"Seine-et-Marne"},{"country_code":"FR","code":"76","state":"Seine-Maritime"},{"country_code":"FR","code":"93","state":"Seine-Saint-Denis"},{"country_code":"FR","code":"80","state":"Somme"},{"country_code":"FR","code":"81","state":"Tarn"},{"country_code":"FR","code":"82","state":"Tarn-et-Garonne"},{"country_code":"FR","code":"90","state":"Territoire de Belfort"},{"country_code":"FR","code":"95","state":"Val-d'Oise"},{"country_code":"FR","code":"94","state":"Val-de-Marne"},{"country_code":"FR","code":"83","state":"Var"},{"country_code":"FR","code":"84","state":"Vaucluse"},{"country_code":"FR","code":"85","state":"Vend\u00e9e"},{"country_code":"FR","code":"86","state":"Vienne"},{"country_code":"FR","code":"88","state":"Vosges"},{"country_code":"FR","code":"89","state":"Yonne"},{"country_code":"FR","code":"78","state":"Yvelines"}],"GB":[{"country_code":"GB","code":"ABN","state":"Aberdeen"},{"country_code":"GB","code":"ABNS","state":"Aberdeenshire"},{"country_code":"GB","code":"ANG","state":"Anglesey"},{"country_code":"GB","code":"AGS","state":"Angus"},{"country_code":"GB","code":"ARY","state":"Argyll and Bute"},{"country_code":"GB","code":"AVN","state":"Avon"},{"country_code":"GB","code":"BAN","state":"Banffshire"},{"country_code":"GB","code":"BEDS","state":"Bedfordshire"},{"country_code":"GB","code":"BERKS","state":"Berkshire"},{"country_code":"GB","code":"BEW","state":"Berwickshire"},{"country_code":"GB","code":"BLA","state":"Blaenau Gwent"},{"country_code":"GB","code":"BRI","state":"Bridgend"},{"country_code":"GB","code":"BSTL","state":"Bristol"},{"country_code":"GB","code":"BUCKS","state":"Buckinghamshire"},{"country_code":"GB","code":"CAE","state":"Caerphilly"},{"country_code":"GB","code":"CAI","state":"Caithness"},{"country_code":"GB","code":"CAMBS","state":"Cambridgeshire"},{"country_code":"GB","code":"CDF","state":"Cardiff"},{"country_code":"GB","code":"CARM","state":"Carmarthenshire"},{"country_code":"GB","code":"CDGN","state":"Ceredigion"},{"country_code":"GB","code":"CHES","state":"Cheshire"},{"country_code":"GB","code":"CLACK","state":"Clackmannanshire"},{"country_code":"GB","code":"CLV","state":"Cleveland"},{"country_code":"GB","code":"CWD","state":"Clwyd"},{"country_code":"GB","code":"CON","state":"Conwy"},{"country_code":"GB","code":"CORN","state":"Cornwall"},{"country_code":"GB","code":"ANT","state":"County Antrim"},{"country_code":"GB","code":"ARM","state":"County Armagh"},{"country_code":"GB","code":"DOW","state":"County Down"},{"country_code":"GB","code":"FER","state":"County Fermanagh"},{"country_code":"GB","code":"LDY","state":"County Londonderry"},{"country_code":"GB","code":"TYR","state":"County Tyrone"},{"country_code":"GB","code":"CMA","state":"Cumbria"},{"country_code":"GB","code":"DNBG","state":"Denbighshire"},{"country_code":"GB","code":"DERBY","state":"Derbyshire"},{"country_code":"GB","code":"DVN","state":"Devon"},{"country_code":"GB","code":"DOR","state":"Dorset"},{"country_code":"GB","code":"DGL","state":"Dumfries and Galloway"},{"country_code":"GB","code":"DFS","state":"Dumfries-shire"},{"country_code":"GB","code":"DUND","state":"Dundee"},{"country_code":"GB","code":"DHM","state":"Durham"},{"country_code":"GB","code":"DFD","state":"Dyfed"},{"country_code":"GB","code":"ARYE","state":"East Ayrshire"},{"country_code":"GB","code":"DUNBE","state":"East Dunbartonshire"},{"country_code":"GB","code":"LOTE","state":"East Lothian"},{"country_code":"GB","code":"RENE","state":"East Renfrewshire"},{"country_code":"GB","code":"ERYS","state":"East Riding of Yorkshire"},{"country_code":"GB","code":"SXE","state":"East Sussex"},{"country_code":"GB","code":"EDIN","state":"Edinburgh"},{"country_code":"GB","code":"ESX","state":"Essex"},{"country_code":"GB","code":"FALK","state":"Falkirk"},{"country_code":"GB","code":"FFE","state":"Fife"},{"country_code":"GB","code":"FLINT","state":"Flintshire"},{"country_code":"GB","code":"GLAS","state":"Glasgow"},{"country_code":"GB","code":"GLOS","state":"Gloucestershire"},{"country_code":"GB","code":"LDN","state":"Greater London"},{"country_code":"GB","code":"MCH","state":"Greater Manchester"},{"country_code":"GB","code":"GDD","state":"Gwynedd"},{"country_code":"GB","code":"HANTS","state":"Hampshire"},{"country_code":"GB","code":"HWR","state":"Herefordshire"},{"country_code":"GB","code":"HERTS","state":"Hertfordshire"},{"country_code":"GB","code":"HLD","state":"Highlands"},{"country_code":"GB","code":"HUM","state":"Humberside"},{"country_code":"GB","code":"IVER","state":"Inverclyde"},{"country_code":"GB","code":"INV","state":"Inverness-shire"},{"country_code":"GB","code":"IOW","state":"Isle of Wight"},{"country_code":"GB","code":"IOS","state":"Isles of Scilly"},{"country_code":"GB","code":"KNT","state":"Kent"},{"country_code":"GB","code":"KCD","state":"Kincardineshire"},{"country_code":"GB","code":"LANCS","state":"Lancashire"},{"country_code":"GB","code":"LEICS","state":"Leicestershire"},{"country_code":"GB","code":"LINCS","state":"Lincolnshire"},{"country_code":"GB","code":"MER","state":"Merionethshire"},{"country_code":"GB","code":"MSY","state":"Merseyside"},{"country_code":"GB","code":"MERT","state":"Merthyr Tydfil"},{"country_code":"GB","code":"MDX","state":"Middlesex"},{"country_code":"GB","code":"MLOT","state":"Midlothian"},{"country_code":"GB","code":"MMOUTH","state":"Monmouthshire"},{"country_code":"GB","code":"MORAY","state":"Moray"},{"country_code":"GB","code":"NAI","state":"Nairnshire"},{"country_code":"GB","code":"NPRTAL","state":"Neath Port Talbot"},{"country_code":"GB","code":"NEWPT","state":"Newport"},{"country_code":"GB","code":"NOR","state":"Norfolk"},{"country_code":"GB","code":"ARYN","state":"North Ayrshire"},{"country_code":"GB","code":"LANN","state":"North Lanarkshire"},{"country_code":"GB","code":"YSN","state":"North Yorkshire"},{"country_code":"GB","code":"NHM","state":"Northamptonshire"},{"country_code":"GB","code":"NLD","state":"Northumberland"},{"country_code":"GB","code":"NOT","state":"Nottinghamshire"},{"country_code":"GB","code":"ORK","state":"Orkney Islands"},{"country_code":"GB","code":"OFE","state":"Oxfordshire"},{"country_code":"GB","code":"PEE","state":"Peebles-shire"},{"country_code":"GB","code":"PEM","state":"Pembrokeshire"},{"country_code":"GB","code":"PERTH","state":"Perth and Kinross"},{"country_code":"GB","code":"PWS","state":"Powys"},{"country_code":"GB","code":"REN","state":"Renfrewshire"},{"country_code":"GB","code":"RHON","state":"Rhondda Cynon Taff"},{"country_code":"GB","code":"ROX","state":"Roxburghshire"},{"country_code":"GB","code":"RUT","state":"Rutland"},{"country_code":"GB","code":"BOR","state":"Scottish Borders"},{"country_code":"GB","code":"SEL","state":"Selkirkshire"},{"country_code":"GB","code":"SHET","state":"Shetland Islands"},{"country_code":"GB","code":"SPE","state":"Shropshire"},{"country_code":"GB","code":"SOM","state":"Somerset"},{"country_code":"GB","code":"ARYS","state":"South Ayrshire"},{"country_code":"GB","code":"LANS","state":"South Lanarkshire"},{"country_code":"GB","code":"SYK","state":"South Yorkshire"},{"country_code":"GB","code":"SFD","state":"Staffordshire"},{"country_code":"GB","code":"STIR","state":"Stirling"},{"country_code":"GB","code":"STI","state":"Stirlingshire"},{"country_code":"GB","code":"SFK","state":"Suffolk"},{"country_code":"GB","code":"SRY","state":"Surrey"},{"country_code":"GB","code":"SUT","state":"Sutherland"},{"country_code":"GB","code":"SWAN","state":"Swansea"},{"country_code":"GB","code":"TORF","state":"Torfaen"},{"country_code":"GB","code":"TWR","state":"Tyne and Wear"},{"country_code":"GB","code":"VGLAM","state":"Vale of Glamorgan"},{"country_code":"GB","code":"WARKS","state":"Warwickshire"},{"country_code":"GB","code":"WDUN","state":"West Dunbartonshire"},{"country_code":"GB","code":"WLOT","state":"West Lothian"},{"country_code":"GB","code":"WMD","state":"West Midlands"},{"country_code":"GB","code":"SXW","state":"West Sussex"},{"country_code":"GB","code":"YSW","state":"West Yorkshire"},{"country_code":"GB","code":"WIL","state":"Western Isles"},{"country_code":"GB","code":"WIG","state":"Wigtownshire"},{"country_code":"GB","code":"WLT","state":"Wiltshire"},{"country_code":"GB","code":"WORCS","state":"Worcestershire"},{"country_code":"GB","code":"WRX","state":"Wrexham"},{"country_code":"GB","code":"YKS","state":"Yorkshire"}],"IT":[{"country_code":"IT","code":"AG","state":"Agrigento"},{"country_code":"IT","code":"AL","state":"Alessandria"},{"country_code":"IT","code":"AN","state":"Ancona"},{"country_code":"IT","code":"AO","state":"Aosta"},{"country_code":"IT","code":"AR","state":"Arezzo"},{"country_code":"IT","code":"AP","state":"Ascoli Piceno"},{"country_code":"IT","code":"AT","state":"Asti"},{"country_code":"IT","code":"AV","state":"Avellino"},{"country_code":"IT","code":"BA","state":"Bari"},{"country_code":"IT","code":"BL","state":"Belluno"},{"country_code":"IT","code":"BN","state":"Benevento"},{"country_code":"IT","code":"BG","state":"Bergamo"},{"country_code":"IT","code":"BI","state":"Biella"},{"country_code":"IT","code":"BO","state":"Bologna"},{"country_code":"IT","code":"BZ","state":"Bolzano"},{"country_code":"IT","code":"BS","state":"Brescia"},{"country_code":"IT","code":"BR","state":"Brindisi"},{"country_code":"IT","code":"CA","state":"Cagliari"},{"country_code":"IT","code":"CL","state":"Caltanissetta"},{"country_code":"IT","code":"CB","state":"Campobasso"},{"country_code":"IT","code":"CI","state":"Carbonia-Iglesias"},{"country_code":"IT","code":"CE","state":"Caserta"},{"country_code":"IT","code":"CT","state":"Catania"},{"country_code":"IT","code":"CZ","state":"Catanzaro"},{"country_code":"IT","code":"CH","state":"Chieti"},{"country_code":"IT","code":"CO","state":"Como"},{"country_code":"IT","code":"CS","state":"Cosenza"},{"country_code":"IT","code":"CR","state":"Cremona"},{"country_code":"IT","code":"KR","state":"Crotone"},{"country_code":"IT","code":"CN","state":"Cuneo"},{"country_code":"IT","code":"EN","state":"Enna"},{"country_code":"IT","code":"FE","state":"Ferrara"},{"country_code":"IT","code":"FI","state":"Firenze"},{"country_code":"IT","code":"FG","state":"Foggia"},{"country_code":"IT","code":"FC","state":"Forli-Cesena"},{"country_code":"IT","code":"FR","state":"Frosinone"},{"country_code":"IT","code":"GE","state":"Genova"},{"country_code":"IT","code":"GO","state":"Gorizia"},{"country_code":"IT","code":"GR","state":"Grosseto"},{"country_code":"IT","code":"IM","state":"Imperia"},{"country_code":"IT","code":"IS","state":"Isernia"},{"country_code":"IT","code":"AQ","state":"L'Aquila"},{"country_code":"IT","code":"SP","state":"La Spezia"},{"country_code":"IT","code":"LT","state":"Latina"},{"country_code":"IT","code":"LE","state":"Lecce"},{"country_code":"IT","code":"LC","state":"Lecco"},{"country_code":"IT","code":"LI","state":"Livorno"},{"country_code":"IT","code":"LO","state":"Lodi"},{"country_code":"IT","code":"LU","state":"Lucca"},{"country_code":"IT","code":"MC","state":"Macerata"},{"country_code":"IT","code":"MN","state":"Mantova"},{"country_code":"IT","code":"MS","state":"Massa-Carrara"},{"country_code":"IT","code":"MT","state":"Matera"},{"country_code":"IT","code":"VS","state":"Medio Campidano"},{"country_code":"IT","code":"ME","state":"Messina"},{"country_code":"IT","code":"MI","state":"Milano"},{"country_code":"IT","code":"MO","state":"Modena"},{"country_code":"IT","code":"NA","state":"Napoli"},{"country_code":"IT","code":"NO","state":"Novara"},{"country_code":"IT","code":"NU","state":"Nuoro"},{"country_code":"IT","code":"OG","state":"Ogliastra"},{"country_code":"IT","code":"OT","state":"Olbia-Tempio"},{"country_code":"IT","code":"OR","state":"Oristano"},{"country_code":"IT","code":"PD","state":"Padova"},{"country_code":"IT","code":"PA","state":"Palermo"},{"country_code":"IT","code":"PR","state":"Parma"},{"country_code":"IT","code":"PV","state":"Pavia"},{"country_code":"IT","code":"PG","state":"Perugia"},{"country_code":"IT","code":"PU","state":"Pesaro e Urbino"},{"country_code":"IT","code":"PE","state":"Pescara"},{"country_code":"IT","code":"PC","state":"Piacenza"},{"country_code":"IT","code":"PI","state":"Pisa"},{"country_code":"IT","code":"PT","state":"Pistoia"},{"country_code":"IT","code":"PN","state":"Pordenone"},{"country_code":"IT","code":"PZ","state":"Potenza"},{"country_code":"IT","code":"PO","state":"Prato"},{"country_code":"IT","code":"RG","state":"Ragusa"},{"country_code":"IT","code":"RA","state":"Ravenna"},{"country_code":"IT","code":"RC","state":"Reggio Calabria"},{"country_code":"IT","code":"RE","state":"Reggio Emilia"},{"country_code":"IT","code":"RI","state":"Rieti"},{"country_code":"IT","code":"RN","state":"Rimini"},{"country_code":"IT","code":"RM","state":"Roma"},{"country_code":"IT","code":"RO","state":"Rovigo"},{"country_code":"IT","code":"SA","state":"Salerno"},{"country_code":"IT","code":"SS","state":"Sassari"},{"country_code":"IT","code":"SV","state":"Savona"},{"country_code":"IT","code":"SI","state":"Siena"},{"country_code":"IT","code":"SR","state":"Siracusa"},{"country_code":"IT","code":"SO","state":"Sondrio"},{"country_code":"IT","code":"TA","state":"Taranto"},{"country_code":"IT","code":"TE","state":"Teramo"},{"country_code":"IT","code":"TR","state":"Terni"},{"country_code":"IT","code":"TO","state":"Torino"},{"country_code":"IT","code":"TP","state":"Trapani"},{"country_code":"IT","code":"TN","state":"Trento"},{"country_code":"IT","code":"TV","state":"Treviso"},{"country_code":"IT","code":"TS","state":"Trieste"},{"country_code":"IT","code":"UD","state":"Udine"},{"country_code":"IT","code":"VA","state":"Varese"},{"country_code":"IT","code":"VE","state":"Venezia"},{"country_code":"IT","code":"VB","state":"Verbano-Cusio-Ossola"},{"country_code":"IT","code":"VC","state":"Vercelli"},{"country_code":"IT","code":"VR","state":"Verona"},{"country_code":"IT","code":"VV","state":"Vibo Valentia"},{"country_code":"IT","code":"VI","state":"Vicenza"},{"country_code":"IT","code":"VT","state":"Viterbo"}],"NL":[{"country_code":"NL","code":"DR","state":"Drenthe"},{"country_code":"NL","code":"FL","state":"Flevoland"},{"country_code":"NL","code":"FR","state":"Friesland"},{"country_code":"NL","code":"GE","state":"Gelderland"},{"country_code":"NL","code":"GR","state":"Groningen"},{"country_code":"NL","code":"LI","state":"Limburg"},{"country_code":"NL","code":"NB","state":"Noord Brabant"},{"country_code":"NL","code":"NH","state":"Noord Holland"},{"country_code":"NL","code":"OV","state":"Overijssel"},{"country_code":"NL","code":"UT","state":"Utrecht"},{"country_code":"NL","code":"ZE","state":"Zeeland"},{"country_code":"NL","code":"ZH","state":"Zuid Holland"}],"RU":[{"country_code":"RU","code":"ALT","state":"Altajskij kraj"},{"country_code":"RU","code":"AMU","state":"Amurskaja oblast'"},{"country_code":"RU","code":"ARK","state":"Arhangel'skaja oblast'"},{"country_code":"RU","code":"AST","state":"Astrahanskaja oblast'"},{"country_code":"RU","code":"BEL","state":"Belgorodskaja oblast'"},{"country_code":"RU","code":"BRY","state":"Brjanskaja oblast'"},{"country_code":"RU","code":"CE","state":"Chechenskaja respublika"},{"country_code":"RU","code":"CHE","state":"Cheljabinskaja oblast'"},{"country_code":"RU","code":"CHU","state":"Chukotskij avtonomnyj okrug"},{"country_code":"RU","code":"CU","state":"Chuvashskaja Respublika"},{"country_code":"RU","code":"YEV","state":"Evrejskaja avtonomnaja oblast'"},{"country_code":"RU","code":"KHA","state":"Habarovskij kraj"},{"country_code":"RU","code":"KHM","state":"Hanty-Mansijskij avtonomnyj okrug - Jugra"},{"country_code":"RU","code":"IRK","state":"Irkutskaja oblast'"},{"country_code":"RU","code":"IVA","state":"Ivanovskaja oblast'"},{"country_code":"RU","code":"YAN","state":"Jamalo-Neneckij avtonomnyj okrug"},{"country_code":"RU","code":"YAR","state":"Jaroslavskaja oblast'"},{"country_code":"RU","code":"KB","state":"Kabardino-Balkarskaja Respublika"},{"country_code":"RU","code":"KGD","state":"Kaliningradskaja oblast'"},{"country_code":"RU","code":"KLU","state":"Kaluzhskaja oblast'"},{"country_code":"RU","code":"KAM","state":"Kamchatskiy kraj"},{"country_code":"RU","code":"KC","state":"Karachaevo-Cherkesskaja respublika"},{"country_code":"RU","code":"KEM","state":"Kemerovskaja oblast'"},{"country_code":"RU","code":"KIR","state":"Kirovskaja oblast'"},{"country_code":"RU","code":"KOS","state":"Kostromskaja oblast'"},{"country_code":"RU","code":"KDA","state":"Krasnodarskij kraj"},{"country_code":"RU","code":"KIA","state":"Krasnojarskij kraj"},{"country_code":"RU","code":"KGN","state":"Kurganskaja oblast'"},{"country_code":"RU","code":"KRS","state":"Kurskaja oblast'"},{"country_code":"RU","code":"LEN","state":"Leningradskaja oblast'"},{"country_code":"RU","code":"LIP","state":"Lipeckaja oblast'"},{"country_code":"RU","code":"MAG","state":"Magadanskaja oblast'"},{"country_code":"RU","code":"MOS","state":"Moskovskaja oblast'"},{"country_code":"RU","code":"MOW","state":"Moskva"},{"country_code":"RU","code":"MUR","state":"Murmanskaja oblast'"},{"country_code":"RU","code":"NEN","state":"Neneckij avtonomnyj okrug"},{"country_code":"RU","code":"NIZ","state":"Nizhegorodskaja oblast'"},{"country_code":"RU","code":"NGR","state":"Novgorodskaja oblast'"},{"country_code":"RU","code":"NVS","state":"Novosibirskaja oblast'"},{"country_code":"RU","code":"OMS","state":"Omskaja oblast'"},{"country_code":"RU","code":"ORE","state":"Orenburgskaja oblast'"},{"country_code":"RU","code":"ORL","state":"Orlovskaja oblast'"},{"country_code":"RU","code":"PNZ","state":"Penzenskaja oblast'"},{"country_code":"RU","code":"PER","state":"Permskij kraj"},{"country_code":"RU","code":"PRI","state":"Primorskij kraj"},{"country_code":"RU","code":"PSK","state":"Pskovskaja oblast'"},{"country_code":"RU","code":"AD","state":"Respublika Adygeja"},{"country_code":"RU","code":"AL","state":"Respublika Altaj"},{"country_code":"RU","code":"BA","state":"Respublika Bashkortostan"},{"country_code":"RU","code":"BU","state":"Respublika Burjatija"},{"country_code":"RU","code":"DA","state":"Respublika Dagestan"},{"country_code":"RU","code":"KK","state":"Respublika Hakasija"},{"country_code":"RU","code":"IN","state":"Respublika Ingushetija"},{"country_code":"RU","code":"KL","state":"Respublika Kalmykija"},{"country_code":"RU","code":"KR","state":"Respublika Karelija"},{"country_code":"RU","code":"KO","state":"Respublika Komi"},{"country_code":"RU","code":"ME","state":"Respublika Marij Jel"},{"country_code":"RU","code":"MO","state":"Respublika Mordovija"},{"country_code":"RU","code":"SA","state":"Respublika Saha (Jakutija)"},{"country_code":"RU","code":"SE","state":"Respublika Severnaja Osetija-Alanija"},{"country_code":"RU","code":"TA","state":"Respublika Tatarstan"},{"country_code":"RU","code":"TY","state":"Respublika Tyva"},{"country_code":"RU","code":"RYA","state":"Rjazanskaja oblast'"},{"country_code":"RU","code":"ROS","state":"Rostovskaja oblast'"},{"country_code":"RU","code":"SAK","state":"Sahalinskaja oblast'"},{"country_code":"RU","code":"SAM","state":"Samarskaja oblast'"},{"country_code":"RU","code":"SPE","state":"Sankt-Peterburg"},{"country_code":"RU","code":"SAR","state":"Saratovskaja oblast'"},{"country_code":"RU","code":"SMO","state":"Smolenskaja oblast'"},{"country_code":"RU","code":"STA","state":"Stavropol'skij kraj"},{"country_code":"RU","code":"SVE","state":"Sverdlovskaja oblast'"},{"country_code":"RU","code":"TAM","state":"Tambovskaja oblast'"},{"country_code":"RU","code":"TYU","state":"Tjumenskaja oblast'"},{"country_code":"RU","code":"TOM","state":"Tomskaja oblast'"},{"country_code":"RU","code":"TUL","state":"Tul'skaja oblast'"},{"country_code":"RU","code":"TVE","state":"Tverskaja oblast'"},{"country_code":"RU","code":"UD","state":"Udmurtskaja Respublika"},{"country_code":"RU","code":"ULY","state":"Ul'janovskaja oblast'"},{"country_code":"RU","code":"VLA","state":"Vladimirskaja oblast'"},{"country_code":"RU","code":"VGG","state":"Volgogradskaja oblast'"},{"country_code":"RU","code":"VLG","state":"Vologodskaja oblast'"},{"country_code":"RU","code":"VOR","state":"Voronezhskaja oblast'"},{"country_code":"RU","code":"ZAB","state":"Zabaykal'skiy kraj"}],"US":[{"country_code":"US","code":"AL","state":"Alabama"},{"country_code":"US","code":"AK","state":"Alaska"},{"country_code":"US","code":"AZ","state":"Arizona"},{"country_code":"US","code":"AR","state":"Arkansas"},{"country_code":"US","code":"CA","state":"California"},{"country_code":"US","code":"CO","state":"Colorado"},{"country_code":"US","code":"CT","state":"Connecticut"},{"country_code":"US","code":"DE","state":"Delaware"},{"country_code":"US","code":"DC","state":"District of Columbia"},{"country_code":"US","code":"FL","state":"Florida"},{"country_code":"US","code":"GA","state":"Georgia"},{"country_code":"US","code":"GU","state":"Guam"},{"country_code":"US","code":"HI","state":"Hawaii"},{"country_code":"US","code":"ID","state":"Idaho"},{"country_code":"US","code":"IL","state":"Illinois"},{"country_code":"US","code":"IN","state":"Indiana"},{"country_code":"US","code":"IA","state":"Iowa"},{"country_code":"US","code":"KS","state":"Kansas"},{"country_code":"US","code":"KY","state":"Kentucky"},{"country_code":"US","code":"LA","state":"Louisiana"},{"country_code":"US","code":"ME","state":"Maine"},{"country_code":"US","code":"MD","state":"Maryland"},{"country_code":"US","code":"MA","state":"Massachusetts"},{"country_code":"US","code":"MI","state":"Michigan"},{"country_code":"US","code":"MN","state":"Minnesota"},{"country_code":"US","code":"MS","state":"Mississippi"},{"country_code":"US","code":"MO","state":"Missouri"},{"country_code":"US","code":"MT","state":"Montana"},{"country_code":"US","code":"NE","state":"Nebraska"},{"country_code":"US","code":"NV","state":"Nevada"},{"country_code":"US","code":"NH","state":"New Hampshire"},{"country_code":"US","code":"NJ","state":"New Jersey"},{"country_code":"US","code":"NM","state":"New Mexico"},{"country_code":"US","code":"NY","state":"New York"},{"country_code":"US","code":"NC","state":"North Carolina"},{"country_code":"US","code":"ND","state":"North Dakota"},{"country_code":"US","code":"MP","state":"Northern Mariana Islands"},{"country_code":"US","code":"OH","state":"Ohio"},{"country_code":"US","code":"OK","state":"Oklahoma"},{"country_code":"US","code":"OR","state":"Oregon"},{"country_code":"US","code":"PA","state":"Pennsylvania"},{"country_code":"US","code":"PR","state":"Puerto Rico"},{"country_code":"US","code":"RI","state":"Rhode Island"},{"country_code":"US","code":"SC","state":"South Carolina"},{"country_code":"US","code":"SD","state":"South Dakota"},{"country_code":"US","code":"TN","state":"Tennessee"},{"country_code":"US","code":"TX","state":"Texas"},{"country_code":"US","code":"UT","state":"Utah"},{"country_code":"US","code":"VT","state":"Vermont"},{"country_code":"US","code":"VI","state":"Virgin Islands"},{"country_code":"US","code":"VA","state":"Virginia"},{"country_code":"US","code":"WA","state":"Washington"},{"country_code":"US","code":"WV","state":"West Virginia"},{"country_code":"US","code":"WI","state":"Wisconsin"},{"country_code":"US","code":"WY","state":"Wyoming"}]}
    });


    
    $.ceFormValidator('setZipcode', {
        US: {
            regexp: /^(\d{5})(-\d{4})?$/,
            format: '01342 (01342-5678)'
        },
        CA: {
            regexp: /^(\w{3} ?\w{3})$/,
            format: 'K1A OB1 (K1AOB1)'
        },
        RU: {
            regexp: /^(\d{6})?$/,
            format: '123456'
        }
    });
    

}(Tygh, Tygh.$));
</script>


<!-- Megnor Update Start -->
<script type="text/javascript" src="js/custom.js?ver=4.3.1" ></script>
<script type="text/javascript" src="js/scrolltop.min.js?ver=4.3.1" ></script>
<script type="text/javascript" src="js/tm_jquery.flexslider.min.js?ver=4.3.1" ></script>
<script type="text/javascript" src="js/jquery.parallax-1.1.3.js?ver=4.3.1" ></script>
<script type="text/javascript" src="js/waypoints.min.js?ver=4.3.1" ></script>
<script type="text/javascript" src="js/inview.js?ver=4.3.1" ></script>

<!-- Megnor Update End -->

<!-- Megnor Update Start -->
<span class="grid_default_width" style="display:none; visibility:hidden"></span><!-- Megnor Update Start -->

</body>

</html>
