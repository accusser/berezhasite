    <div class="consult-forms container py-4">
      <div class="row pt-1 pb-3">
        <h3 class="col-12 text-center text-uppercase font-weight-bold section-header">
{if $_modx->context.key == 'web'}
Получите бесплатную консультацию просто сейчас
{else}
Отримайте безкоштовну консультацію просто зараз
{/if}
        </h3>
      </div>
      <div class="row justify-content-center pb-4">
     
{if $_modx->context.key == 'web'}
 <form class="col-lg-5 col-md-6 consult-form mx-0 mx-md-4 pl-md-0 mb-5 mb-lg-0" data-si-form="oneStepFormru" data-si-preset="onestepformru">
 <input type="hidden" name="id" value="{$_modx->resource.id}">
  <div class="row">
    <div class="col-md-5 px-md-0 my-auto">
      <picture class="d-block text-center mb-4 mb-md-0">
        <source media="(min-width: 650px)" srcset="assets/img/dev/girl.jpg">
        <img src="assets/img/dev/girl.jpg" class="staff-photo-rounded img-fluid" alt="girl" title=""  width="200" height="200" loading="lazy">
      </picture>
    </div>
    <div class="col-md-7 d-flex justify-space-between flex-column h-100 text-center text-md-left">
      <p class="lh-12"><span class="text-uppercase font-weight-bold text-nowrap">Татьяна</span> <br><span class="fs-09 text-nowrap">менеджер-консультант</span></p>
      <div class="form-group">
        <input type="text" class="staff-input-rounded" name="name" placeholder="Имя">
         <p data-si-error="name"></p> 
      </div>
      <div class="form-group">
        <input type="tel" class="staff-input-rounded phoneinput" name="phone" placeholder="+38 (0__) ___-____">
        <p data-si-error="phone"></p>
      </div>
      <div class="form-submit">
          <div class="btn-wrapper position-relative d-inline-block">
            <label for="consultSubmit1" class="pseudoforinput text-center text-white font-weight-bold ic-ask"></label>
            <input type="submit"  class="submit-input-rounded text-white font-weight-bold text-uppercase text-nowrap border-0" id="consultSubmit1" value="Получить консультацию">
        </div>
      </div>
    </div>
  </div>
</form>   
{else}
 <form class="col-lg-5 col-md-6 consult-form mx-0 mx-md-4 pl-md-0 mb-5 mb-lg-0" data-si-form="oneStepFormuk" data-si-preset="onestepformuk">
 <input type="hidden" name="id" value="{$_modx->resource.id}">
  <div class="row">
    <div class="col-md-5 px-md-0 my-auto">
      <picture class="d-block text-center mb-4 mb-md-0">
        <source media="(min-width: 650px)" srcset="assets/img/dev/girl.jpg">
        <img src="assets/img/dev/girl.jpg" class="staff-photo-rounded img-fluid" alt="girl" title=""  width="200" height="200" loading="lazy">
      </picture>
    </div>
    <div class="col-md-7 d-flex justify-space-between flex-column h-100 text-center text-md-left">
      <p class="lh-12"><span class="text-uppercase font-weight-bold text-nowrap">Тетяна</span> <br><span class="fs-09 text-nowrap">менеджер-консультант</span></p>
      <div class="form-group">
        <input type="text" class="staff-input-rounded" name="name" placeholder="Ім'я">
         <p data-si-error="name"></p> 
      </div>
      <div class="form-group">
        <input type="tel" class="staff-input-rounded phoneinput" name="phone" placeholder="+38 (0__) ___-____">
        <p data-si-error="phone"></p>
      </div>
      <div class="form-submit">
          <div class="btn-wrapper position-relative d-inline-block">
            <label for="consultSubmit1" class="pseudoforinput text-center text-white font-weight-bold ic-ask"></label>
            <input type="submit"  class="submit-input-rounded text-white font-weight-bold text-uppercase text-nowrap border-0" id="consultSubmit1" value="Отримати консультацію ">
        </div>
      </div>
    </div>
  </div>
</form>  
 {/if}

{*       
{'!FetchIt' | snippet: [
'snippet' => 'FormIt',
'hooks' => 'rcv3,FormItSaveForm,email,sendMessageTelegram', 
'form' => '@FILE chunks/forms/footerformgirl.tpl',
'emailTo' => 'accusser@gmail.com,[[++brzh_emailto]]',
'emailFrom' => '[[++brzh_emailfrom]]',
'emailSubject' => 'Запрос на консультацию МЕНЕДЖЕРА-КОНСУЛЬТАНТА',
'emailTpl' => '@FILE chunks/forms/aflExampleEmail.tpl',
'validate' => 'name:required:minLength=^3^,phone:required'
'validationErrorMessage' => $_modx->lexicon('localizator_zakaz_error'),
'successMessage' => $_modx->lexicon('localizator_zayavku_success'),
]}     
*}


{if $_modx->context.key == 'web'}
 <form class="col-lg-5 col-md-6 consult-form mx-0 mx-md-4 pl-md-0 mb-5 mb-lg-0" data-si-form="oneStepFormru" data-si-preset="onestepformru">
  <input type="hidden" name="id" value="{$_modx->resource.id}">
  <div class="row">
    <div class="col-md-5 px-md-0 my-auto">
      <picture class="d-block text-center mb-4 mb-md-0">
        <source media="(min-width: 650px)" srcset="assets/img/dev/boy.jpg">
        <img src="assets/img/dev/boy.jpg" class="staff-photo-rounded img-fluid" alt="boy" title=""  width="200" height="200" loading="lazy">
      </picture>
    </div>
    <div class="col-md-7 d-flex justify-space-between flex-column h-100 text-center text-md-left">
      <p class="lh-12"><span class="text-uppercase font-weight-bold text-nowrap">Алексей</span> <br><span class="fs-09 text-nowrap">менеджер-консультант</span></p>
      <div class="form-group">
        <input type="text" class="staff-input-rounded" name="name" placeholder="Имя">
         <p data-si-error="name"></p> 
      </div>
      <div class="form-group">
        <input type="tel" class="staff-input-rounded phoneinput" name="phone" placeholder="+38 (0__) ___-____">
        <p data-si-error="phone"></p>
      </div>
      <div class="form-submit">
          <div class="btn-wrapper position-relative d-inline-block">
            <label for="consultSubmit1" class="pseudoforinput text-center text-white font-weight-bold ic-ask"></label>
            <input type="submit"  class="submit-input-rounded text-white font-weight-bold text-uppercase text-nowrap border-0" id="consultSubmit1" value="Получить консультацию">
        </div>
      </div>
    </div>
  </div>
</form>   
{else}
 <form class="col-lg-5 col-md-6 consult-form mx-0 mx-md-4 pl-md-0 mb-5 mb-lg-0" data-si-form="oneStepFormuk" data-si-preset="onestepformuk">
  <input type="hidden" name="id" value="{$_modx->resource.id}">
  <div class="row">
    <div class="col-md-5 px-md-0 my-auto">
      <picture class="d-block text-center mb-4 mb-md-0">
        <source media="(min-width: 650px)" srcset="assets/img/dev/boy.jpg">
        <img src="assets/img/dev/boy.jpg" class="staff-photo-rounded img-fluid" alt="boy" title=""  width="200" height="200" loading="lazy">
      </picture>
    </div>
    <div class="col-md-7 d-flex justify-space-between flex-column h-100 text-center text-md-left">
      <p class="lh-12"><span class="text-uppercase font-weight-bold text-nowrap">Олексій</span> <br><span class="fs-09 text-nowrap">менеджер-консультант</span></p>
      <div class="form-group">
        <input type="text" class="staff-input-rounded" name="name" placeholder="Ім'я">
         <p data-si-error="name"></p> 
      </div>
      <div class="form-group">
        <input type="tel" class="staff-input-rounded phoneinput" name="phone" placeholder="+38 (0__) ___-____">
        <p data-si-error="phone"></p>
      </div>
      <div class="form-submit">
          <div class="btn-wrapper position-relative d-inline-block">
            <label for="consultSubmit1" class="pseudoforinput text-center text-white font-weight-bold ic-ask"></label>
            <input type="submit"  class="submit-input-rounded text-white font-weight-bold text-uppercase text-nowrap border-0" id="consultSubmit1" value="Отримати консультацію ">
        </div>
      </div>
    </div>
  </div>
</form>  
 {/if}

 
 {*
{'!FetchIt' | snippet: [
'snippet' => 'FormIt',
'hooks' => 'rcv3,FormItSaveForm,email,sendMessageTelegram', 
'form' => '@FILE chunks/forms/footerformboy.tpl',
'emailTo' => 'accusser@gmail.com,[[++brzh_emailto]]',
'emailFrom' => '[[++brzh_emailfrom]]',
'emailSubject' => 'Запрос на консультацию МЕНЕДЖЕРА-КОНСУЛЬТАНТА',
'emailTpl' => '@FILE chunks/forms/aflExampleEmail.tpl',
'validate' => 'name:required:minLength=^3^,phone:required'
'validationErrorMessage' => $_modx->lexicon('localizator_zakaz_error'),
'successMessage' => $_modx->lexicon('localizator_zayavku_success'),
]}   
*}
        
      </div>
    </div>