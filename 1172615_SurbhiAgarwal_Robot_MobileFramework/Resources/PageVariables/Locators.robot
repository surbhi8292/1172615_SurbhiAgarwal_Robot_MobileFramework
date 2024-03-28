*** Settings ***
Documentation   Keywords given for all the locators of all pages
Resource    ../GenericLibrary/GlobalSettings.robot

*** Variables ***

${Evendorlabel}  //*[contains(@text,'Evendor')]
${Carticon} 	 com.multi_vendor.adyas.multivendor:id/cart_image_view
${Searchbar}    com.multi_vendor.adyas.multivendor:id/home_fk_like_search_bar
${HamburgerMenu}   //android.widget.ImageButton[@content-desc="Open"]
${Computers}    //*[contains(@text,'Computers')]
${Phones}       //*[contains(@text,'Phones & PDAs')]
${Mobiles}      //*[contains(@text,'Mobile')]
${Softwares}    //*[contains(@text,'Software')]
${Camera}      //*[contains(@text,'Cameras')]
${Tablet}      //*[contains(@text,'Tablets')]
${Infant}       //*[contains(@text,'Infant toys')]
${Women}        //*[contains(@text,'women')]
${Men}          //*[contains(@text,'Men')]
${Cosmetic}     //*[contains(@text,'Cosmetics')]
${Fashion}      //*[contains(@text,'Fashion')]
${Electronics}  //*[contains(@text,'Electronics')]
${Food}         //*[contains(@text,'Food')]
${Home}          //*[contains(@text,'Homeware')]
${CloseMenu}    //android.widget.ImageButton[@content-desc="close"]
${Searchbar}               com.multi_vendor.adyas.multivendor:id/home_fk_like_search_bar
${SearchField}             android:id/search_src_text
${iPhone}                  category_special_price_sp
${Write review}            com.multi_vendor.adyas.multivendor:id/product_detail_write_rating
${Review}                  com.multi_vendor.adyas.multivendor:id/review_name_comment_value
${Rating}                  com.multi_vendor.adyas.multivendor:id/product_detail_rating
${Post}                    //android.widget.Button[@text='POST']
${Quantity}                product_detail_quantity
${QuantityNo}              com.multi_vendor.adyas.multivendor:id/product_detail_quantity_valueT
${SpecificationLink}       com.multi_vendor.adyas.multivendor:id/product_detail_details
${SpecHeading}             com.multi_vendor.adyas.multivendor:id/product_detail_and_description_title
${SpecManufactureTitle}    com.multi_vendor.adyas.multivendor:id/product_detail_and_description_manufacture_title
${SpecManufactureValue}    com.multi_vendor.adyas.multivendor:id/product_detail_and_description_manufacture
${SpecStocktitle}          com.multi_vendor.adyas.multivendor:id/product_detail_and_description_stock_detail_title
${SpecStockValue}          com.multi_vendor.adyas.multivendor:id/product_detail_and_description_stock_detail
${navigateback}            //android.widget.ImageButton[@content-desc="Navigate up"]
${DescriptionContent}      //android.widget.TextView[contains(@text,'iPhone 6s Plus')]
${AddToWishList}           com.multi_vendor.adyas.multivendor:id/product_detail_add_to_fav
${Cartbutton}              com.multi_vendor.adyas.multivendor:id/product_detail_add_to_cart
${WishlistDropdown}        //android.widget.TextView[contains(@text,'Wish List')]
${ItemTitle}               com.multi_vendor.adyas.multivendor:id/wish_list_product_title
${Product title}     com.multi_vendor.adyas.multivendor:id/cart_product_title
${Product price}     com.multi_vendor.adyas.multivendor:id/cart_product_price
${Total value}       //android.widget.TextView[@text='Total']
${Total amt}         //android.widget.TextView[@text='$365.00']
${Checkout}          com.multi_vendor.adyas.multivendor:id/cart_check_out
${Login} 	      //android.widget.TextView[@text='Login']
${MailField}      //android.widget.EditText[@text='Please enter your email id']
${PasswrdField}   //android.widget.EditText[@text='Password']
${ShowPasswrd}  `  c_box_tick_login
${LoginButton}     btn_login_pg_login
${Menu}           //android.widget.ImageView[@content-desc="More options"]
${Checkout}                com.multi_vendor.adyas.multivendor:id/cart_check_out
${Shipment}                //*[contains(@text,'Shipment Info')]
${Fname}                   com.multi_vendor.adyas.multivendor:id/shipment_first_name
${Lname}                   com.multi_vendor.adyas.multivendor:id/shipment_last_name
${Sstate}                  com.multi_vendor.adyas.multivendor:id/shipment_state
${Scountry}                com.multi_vendor.adyas.multivendor:id/shipment_country
${Continue}                com.multi_vendor.adyas.multivendor:id/delivery_continue_btn
${Shipment title}          com.multi_vendor.adyas.multivendor:id/shipping_type_title
${FreeShipping}             //*[contains(@text,'Free Shipping($0.00)')]
${Continue shipping type}   com.multi_vendor.adyas.multivendor:id/shipping_type_continue
${Payment}                  com.multi_vendor.adyas.multivendor:id/payment_title
${Payment mode}             //*[contains(@text,'Cash On Delivery')]
${Continue Payment}         //*[contains(@text, 'CONTINUE')]
${Confirm Shipping title}      com.multi_vendor.adyas.multivendor:id/confirmation_shipping_address_title
${Confirm shipping address}    com.multi_vendor.adyas.multivendor:id/confirmation_shipping_address
${Prod_Title}                 com.multi_vendor.adyas.multivendor:id/checkout_product_title
${Change order}              com.multi_vendor.adyas.multivendor:id/confirmation_shipping_product_modification
${Place order}              com.multi_vendor.adyas.multivendor:id/confirmation_shipping_place_order
${Success msg1}             order_continue_success_text_1
${Success msg2}             com.multi_vendor.adyas.multivendor:id/order_continue_success_text_3
${Continue order}          com.multi_vendor.adyas.multivendor:id/order_continue
${Register}             //*[contains(@text,'Register')]
${FirstNameField}        et_subtitle_1_first_name
${LastNameField}         et_subtitle_1_last_name
${emailField}            et_subtitle_1_email
${telephoneField}        et_subtitle_1_telephone
${faxField}              et_subtitle_1_fax
${companyField}          et_subtitle_2_company
${address1Field}         et_subtitle_2_address1
${address2Field}         //android.widget.EditText[@text='Address 2']
${cityField}             et_subtitle_2_city
${postcodeField}         et_subtitle_2_postcode
${countryyField}          com.multi_vendor.adyas.multivendor:id/country_spinner
${countryDropdown}       //android.widget.TextView[@resource-id="com.multi_vendor.adyas.multivendor:id/spinner_country_value" and @text="Argentina"]
${stateeField}           //*[contains(@text,'---Please select---')]
${stateDropdown}         //*[contains(@text,'Chaco')]
${passwordField}         et_subtitle_3_password
${con_passwordField}     et_subtitle_3_confirm_password
${subscribe_yess}        com.multi_vendor.adyas.multivendor:id/radio_btn_yes
${subscribe_noo}         radio_btn_no
${privacyy}              c_box_tick
${Submitt}               btn_sign_up_page_submit
${Confirm_Msg}             //android.widget.TextView[contains(@text,'Registration Successful')]
${Confirm_Continue}        //android.widget.Button[contains(@text,'CONTINUE')]
${Orders}               //*[contains(@text,'My Order')]
${Order title}          com.multi_vendor.adyas.multivendor:id/tv_my_order_main_order_his_title
${Order id}              tv_my_order_recycle_order_id_data