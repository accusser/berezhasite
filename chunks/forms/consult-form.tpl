<form class="col-lg-4 col-md-5 col-sm-7 col-10 consult-form py-5 px-5" action="[[~[[*id]]]]" method="post">
    <p class="lh-12"><span class="text-uppercase font-weight-bold">ЗАКАЗАТЬ ЗАЯВКУ ДЛЯ РАСЧЕТА СТОИМОСТИ</span></p>
    <div class="form-group">
      <label for="requestName1" class="sr-only">[[%localizator_form_name? &topic=`translate` &namespace=`babel`]]</label>
      <input type="text" name="name" class="staff-input-rounded" id="requestName1" value="[[+fi.name]]" placeholder="[[%localizator_form_name? &topic=`translate` &namespace=`babel`]]" value="" >
          <small class="text-danger d-block error_name" data-error="name">[[+fi.error.name]]</small>
    </div>
    <div class="form-group">
      <label for="requestPhone1" class="sr-only">Телефон</label>
      <input type="tel" name="phone" class="staff-input-rounded" id="requestPhone1" value="[[+fi.phone]]" placeholder="Телефон" value="" >
      <small class="text-danger d-block error_phone" data-error="name">[[+fi.error.phone]]</small>
    </div>
    <div class="form-group emaildiv">
      <label for="requestEmail1" class="sr-only">E-mail</label>
      <input type="email" class="staff-input-rounded" id="requestEmail1" placeholder="E-mail" value="">
    </div>
    <div class="form-group">
      <label for="requestPhone1" class="sr-only">Удобное время звонка</label>
      <input type="text" name="time" class="staff-input-rounded" id="requestPhone1" value="[[+fi.time]]" placeholder="[[!++cultureKey:is=`ru`:then=`Удобное время звонка`:else=`Зручний час для дзвінка`]]" value="">
    </div>
    <div class="form-submit">
      <label for="consultSubmit1" class="pseudoforinput text-center text-white font-weight-bold">?</label>
      <input type="submit" class="submit-input-rounded text-white font-weight-bold text-uppercase text-nowrap border-0" id="consultSubmit1" value="[[!++cultureKey:is=`ru`:then=`Узнать стоимость`:else=`Дізнатись вартість`]]">
    </div>
       [[!rcv3_html? &action=`[[+rcv3Action:default=``]]` &error=`[[+fi.error.g-recaptcha-response]]`]]
  </form>