<form action="[[~[[*id]]]]" id="zakaz-form" method="post" class="modal-content">
    <input type="hidden" name="delivery" value="1">
    <input type="hidden" name="payment" value="1">
    <input type="hidden" name="options[]" value="">
    <input type="hidden" name="id" value="{$_modx->resource.id}">
    <div class="modal-header bg3 text-white">
        <h5 class="modal-title font-weight-bold" id="oneclick-header">{$_modx->config.fpurch}</h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="text-white">&times;</span>
        </button>
    </div>
    <div class="modal-body">

        <input type="hidden" name="properties" id="input-prop">
        <input type="hidden" name="tovar" value="{$_modx->resource.pagetitle}">
        <div class="row">
            <div class="col-sm-4 text-center">
                <img src="assets/img/logo.png" alt="" class="img-fluid" id="purchaseimg" width="228" height="80" loading="lazy">
            </div>
            <div class="col-sm-8">
                <p class="font-weight-bold clr2">{$_modx->resource.pagetitle}</p>
                <p id="text-prop"></p>
            </div>
        </div>
        <div class="form-group">
            <label>{$_modx->config.fname}</label>
            <input type="text" name="name" class="form-control" value="[[+fi.name]]">
           <small class="text-danger d-block error_name"></small>
        </div>
        <div class="form-group emaildivs" >
            <label>Ваш Email</label>
            <input type="email" name="email"  class="form-control" autocomplete="off" value="[[+fi.email]]">
            <small class="text-danger d-block error_email"></small>
        </div>
        <div class="form-group">
            <label>Телефон</label>
            <input type="tel" name="phone" class="form-control phoneinput" value="[[+fi.phone]]">
            <small class="text-danger d-block error_phone"></small>
        </div>

    </div>
    <input type="number" class="form-control" name="count" value="1" min="1" hidden>
    <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{$_modx->config.fedit}</button>
        <input name="submit" type="submit" class="btn btn-success bg3 font-weight-bold" value="{$_modx->config.fpurch}">
    </div>
    [[!rcv3_html? &action=`[[+rcv3Action:default=``]]` &error=`[[+fi.error.g-recaptcha-response]]`]]
</form>