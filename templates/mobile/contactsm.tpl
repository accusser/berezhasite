{extends 'file:templates/mobile/index.tpl'}
   {block 'menu'}
    {include 'file:chunks/mobile/menu.tpl'} 
    {/block}
    {block 'content'}
    <div class="page-content-wrapper container">
      <div class="contact-form mt-3 pb-3">
        {$_modx->resource.content}
      </div>
      <div class="container">
        <div class="mt-3 rtl-text-right">
          <h5 class="mb-1">Contact Us</h5>
          <p class="mb-4">Write to us. We will reply to you as soon as possible. But yes, it can take up to 24 hours.</p>
        </div>
        <!-- Contact Form-->
        <div class="contact-form mt-3 pb-3">
          <form action="#" method="">
            <input class="form-control mb-3" id="username" type="text" placeholder="Your Name">
            <input class="form-control mb-3" id="email" type="email" placeholder="Enter email">
            <select class="mb-3 w-100 border-0" id="topicSelect" name="topic">
              <option value="">Buying &amp; Support</option>
              <option value="">Authors Help</option>
              <option value="">Buyer Help</option>
              <option value="">License</option>
            </select>
            <input class="form-control mb-3" id="username" type="text" placeholder="Include a relevant URL">
            <textarea class="form-control mb-3" id="message" name="" cols="30" rows="10" placeholder="Write something..."></textarea>
            <button class="btn btn-success btn-lg w-100">Send Now</button>
          </form>
        </div>
      </div>
    </div>
    {/block}
