<form id="zamer-form" action="[[~[[*id]]]]" method="post" class="modal-content">
    <div class="modal-header bg3 text-white">
        <h5 class="modal-title font-weight-bold" id="oneclick-header">{$_modx->config.zamers}</h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="text-white">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label>{$_modx->config.fname}</label>
            <input type="text" name="name" class="form-control" value="[[+fi.name]]">
            <span class="input-error" data-error="name">[[+fi.error.name]]</span>
            <small class="text-danger d-block error_name"></small>
        </div>
        <div class="form-group emaildiv">
            <label>Ваш Email</label>
            <input type="email" name="email" class="form-control" autocomplete="off">
        </div>
        <div class="form-group">
            <label>{$_modx->lexicon('localizator_form_yourphone')}</label>
            <input type="tel" name="phone" class="form-control phoneinput" value="[[+fi.phone]]">
            <small class="text-danger d-block error_phone"></small>
        </div>
        <div class="form-group">
            <label>{$_modx->lexicon('localizator_form_youraddress')}</label>
            <input type="address" name="address" class="form-control" value="[[+fi.address]]">
        </div>
        <div class="form-group">
            <label>{$_modx->config.fcomm}</label>
            <textarea name="message" class="form-control" rows="3">[[+fi.message]]</textarea>
            <small class="text-danger d-block error_message"></small>
        </div>

    </div>
    <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{$_modx->config.fclose}</button>
        <input name="submit" onclick='pertanyaan()' type="submit" class="btn btn-success bg3 font-weight-bold" value="{$_modx->config.fpurch}">
    </div>

    <div class="successMessage"></div>
        [[!rcv3_html? &action=`[[+rcv3Action:default=``]]` &error=`[[+fi.error.g-recaptcha-response]]`]]
</form>