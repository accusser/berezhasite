<form class="col-lg-5 col-md-6 consult-form mx-0 mx-md-4 pr-md-0 mb-4 mb-md-0" id="footerformboy" action="[[~[[*id]]]]" method="post">
  <div class="row">
    <div class="col-md-5 px-md-0 my-auto">
      <picture class="d-block text-center mb-4 mb-md-0">
        <source media="(min-width: 650px)" srcset="assets/img/dev/boy.jpg">
        <img src="assets/img/dev/boy.jpg" class="staff-photo-rounded img-fluid" alt="boy" title="" width="200" height="200" loading="lazy">
      </picture>
    </div>
    <div class="col-md-7 d-flex justify-space-between flex-column h-100 text-center text-md-left">
      <p class="lh1"><span class="text-uppercase font-weight-bold text-nowrap">[[%localizator_form_alex? &topic=`translate` &namespace=`babel`]]</span> <br><span class="fs-09 text-nowrap">[[%localizator_form_techconsult? &topic=`translate` &namespace=`babel`]]</span></p>
      <div class="form-group">
        <label for="consultName2" class="sr-only">[[%localizator_form_name? &topic=`translate` &namespace=`babel`]]</label>
        <input type="text" name="name" class="staff-input-rounded" id="consultName2" value="[[+fi.name]]" placeholder="[[%localizator_form_name? &topic=`translate` &namespace=`babel`]]" value="">
            <small class="text-danger d-block error_name"></small>
      </div>
      <div class="form-group">
        <label for="consultPhone2" class="sr-only">Телефон</label>
        <input type="tel" name="phone" class="staff-input-rounded phoneinput" value="[[+fi.phone]]" id="consultPhone2" placeholder="Телефон" value="">
        <small class="text-danger d-block error_phone"></small>
      </div>
      <div class="form-group emaildiv">
        <label for="consultEmail2" class="sr-only">E-mail</label>
        <input type="email" name="email" class="staff-input-rounded" id="consultEmail2" placeholder="E-mail" value="" autocomplete="off">
      </div>
      <div class="form-submit">
          <div class="btn-wrapper position-relative d-inline-block">
                <label for="consultSubmit2" class="pseudoforinput text-center text-white font-weight-bold ic-ask"></label>
                <input type="submit" name="submit" class="submit-input-rounded text-white font-weight-bold text-uppercase text-nowrap border-0" id="consultSubmit2" value="[[%localizator_form_submitconsult? &topic=`translate` &namespace=`babel`]]">
          </div>
        
      </div>
    </div>
  </div>
      [[!rcv3_html? &action=`[[+rcv3Action:default=``]]` &error=`[[+fi.error.g-recaptcha-response]]`]]
</form>