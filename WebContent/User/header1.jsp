<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="h"%>
<div class="tygh-header clearfix">
				<div class="container-fluid  header-grid">
					<div class="row-fluid ">
					
						<div class="span16 header-bottom">
								<div class="row-fluid ">
							<h:forEach items="${sessionScope.catList}" var="i">
							
								<div class="span12 top-menu-grid">
								
									<span class="ty-menu__item ty-menu__menu-btn visible-phone">
										<a class="ty-menu__item-link"> <i
											class="ty-icon-short-list"></i> <span>Menu</span>
									</a>
									</span>
									
									
									<div class="wrap-dropdown-multicolumns">
										<ul
											class="ty-menu__items cm-responsive-menu dropdown-multicolumns">


										</ul>



										<li class="ty-menu__item fullwidth ">
										<a
											class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
												<i class="ty-menu__icon-open ty-icon-down-open"></i> <i
												class="ty-menu__icon-hide ty-icon-up-open"></i>
										</a> <a href="<%=request.getContextPath()%>/viewProductController?flag=viewProduct&id=${i.categoryId}&cname=${i.categoryName}"
											class="ty-menu__item-link"> ${i.categoryName} </a> <span class="up-arrow"></span>
<!-- 										<li class="ty-menu__item fullwidth ">
 -->										<a class="ty-menu__item-toggle visible-phone cm-responsive-menu-toggle">
												<i class="ty-menu__icon-open ty-icon-down-open"></i>
												<i
												class="ty-menu__icon-hide ty-icon-up-open"></i></a>
												</li>
	</div>
	</h:forEach>
</div>



								</div>
								<!-- <div class=" top-search">
									<div class="ty-search-block">
										<div class="search_toggle"></div>
										<form
											action="http://demos.templatemela.com/cscart/CST02/CST020042/"
											name="search_form" method="get" id="searchform">
											<input type="hidden" name="subcats" value="Y" /> <input
												type="hidden" name="pcode_from_q" value="Y" /> <input
												type="hidden" name="pshort" value="Y" /> <input
												type="hidden" name="pfull" value="Y" /> <input
												type="hidden" name="pname" value="Y" /> <input
												type="hidden" name="pkeywords" value="Y" /> <input
												type="hidden" name="search_performed" value="Y" /> <input
												type="text" name="q" value="" id="search_input"
												title="Search products"
												class="ty-search-block__input cm-hint" />
											<button title="Search" class="ty-search-magnifier"
												type="submit">
												<i class="ty-icon-search"></i>
											</button>
											<input type="hidden" name="dispatch" value="products.search" />

										</form>
									</div>
 -->

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

												