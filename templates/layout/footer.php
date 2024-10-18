<div class="footer">
    <div class="footer-article">
        <div class="wrap-content padding-top-bottom d-flex flex-wrap justify-content-between">
            <div class="footer-news">
                <p class="footer-title">thông tin liên hệ</p>

                <p class="name-company"><?= $footer['name' . $lang] ?></p>
                <div class="footer-info"><?= $func->decodeHtmlChars($footer['content' . $lang]) ?></div>
                <ul class="social social-footer list-unstyled d-flex align-items-center ">
                    <?php foreach ($social as $k => $v) { ?>
                        <li class="d-inline-block align-top">
                            <a href="<?= $v['link'] ?>" target="_blank" class="me-2">
                                <img class="lazy" data-src="<?= THUMBS ?>/50x50x1/<?= UPLOAD_PHOTO_L . $v['photo'] ?>" alt="<?= $v['name' . $lang] ?>" title="<?= $v['name' . $lang] ?>">
                            </a>
                        </li>
                    <?php } ?>
                </ul>
            </div>
            <div class="footer-news">
                <p class="footer-title">chính sách</p>
                <ul class="footer-ul d-flex flex-wrap justify-content-between">
                    <?php foreach ($policy as $v) { ?>
                        <li><a class=" text-decoration-none " href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>"><?= $v['name' . $lang] ?></a></li>
                    <?php } ?>
                </ul>
            </div>
            <div class="footer-news">
                <p class="footer-title">Fanpage facebook</p>
                <?= $addons->set('fanpage-facebook', 'fanpage-facebook', 2); ?>
            </div>
        </div>
    </div>

    <div class="footer-powered">
        <div class="wrap-content">
            <div class="row">
                <div class="footer-copyright col-md-6">© Copyright <span><?= $copyright['name' . $lang] ?></span>. All rights reserved. Designed by <a href="https://nina.vn" class=" text-decoration-none" title="Nina.vn">Nina</a></div>
                <div class="footer-statistic col-md-6">
                    <span><?= dangonline ?>: <?= $online ?></span> |
                    <span>Ngày: <?= $counter['today'] ?></span> |
                    <span>Tháng <?= $counter['month'] ?></span> |
                    <span><?= tongtruycap ?>: <?= $counter['total'] ?></span>
                </div>
            </div>
        </div>
    </div>
    <?= $addons->set('footer-map', 'footer-map', 6); ?>
    <?= $addons->set('messages-facebook', 'messages-facebook', 2); ?>
</div>

<a class="btn-zalo btn-frame text-decoration-none" target="_blank" href="https://zalo.me/<?= preg_replace('/[^0-9]/', '', $optsetting['zalo']); ?>">
    <div class="animated infinite zoomIn kenit-alo-circle"></div>
    <div class="animated infinite pulse kenit-alo-circle-fill"></div>
    <i><?= $func->getImage(['size-error' => '35x35x2', 'upload' => 'assets/images/', 'image' => 'zl.png', 'alt' => 'Zalo']) ?></i>
</a>
<a class="btn-phone btn-frame text-decoration-none" href="tel:<?= preg_replace('/[^0-9]/', '', $optsetting['hotline']); ?>">
    <div class="animated infinite zoomIn kenit-alo-circle"></div>
    <div class="animated infinite pulse kenit-alo-circle-fill"></div>
    <i><?= $func->getImage(['size-error' => '35x35x2', 'upload' => 'assets/images/', 'image' => 'hl.png', 'alt' => 'Hotline']) ?></i>
</a>

<?php
/*
<a href="javascript:void();" class="btn-datlich" data-bs-toggle="modal" data-bs-target=".booking"><i class="far fa-calendar-alt"></i><br>Đặt lịch</a>
<?php if ($com != 'gio-hang') { ?>
    <div>
        <a class="cart-fixed text-decoration-none" href="gio-hang" title="Giỏ hàng">
            <i class="bi bi-cart3"></i>
            <span class="count-cart"><?= (!empty($_SESSION['cart'])) ? count($_SESSION['cart']) : 0 ?></span>
        </a>
    </div>
<?php } ?>
   <div class="footer-tags">
        <div class="wrap-content">
            <p class="footer-title">Tags sản phẩm:</p>
            <ul class="footer-tags-lists w-clear mb-3">
                <?php foreach ($tagsProduct as $v) { ?>
                    <li class="me-1 mb-1"><a class="btn btn-sm btn-danger rounded" href="<?= $v[$sluglang] ?>" target="_blank" title="<?= $v['name' . $lang] ?>"><?= $v['name' . $lang] ?></a></li>
                <?php } ?>
            </ul>
            <p class="footer-title">Tags tin tức:</p>
            <ul class="footer-tags-lists w-clear">
                <?php foreach ($tagsNews as $v) { ?>
                    <li class="me-1 mb-1"><a class="btn btn-sm btn-danger rounded" href="<?= $v[$sluglang] ?>" target="_blank" title="<?= $v['name' . $lang] ?>"><?= $v['name' . $lang] ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>

    
            <div class="footer-news">
                <p class="footer-title"><?= dangkynhantin ?></p>
                <p class="newsletter-slogan"><?= slogandangkynhantin ?></p>
                <form class="validation-newsletter form-newsletter" novalidate method="post" action="" enctype="multipart/form-data">
                    <div class="newsletter-input">
                        <div class="form-floating form-floating-cus">
                            <input type="email" class="form-control text-sm" id="email-newsletter" name="dataNewsletter[email]" placeholder="<?= nhapemail ?>" required />
                            <label for="email-newsletter">Email</label>
                        </div>
                        <div class="invalid-feedback"><?= vuilongnhapdiachiemail ?></div>
                    </div>
                    <div class="newsletter-button">
                        <input type="hidden" class="" name="dataNewsletter[type]" value="dangkynhantin">
                        <input type="hidden" class="" name="dataNewsletter[date_created]" value="<?= time() ?>">
                        <input type="submit" class="btn btn-sm btn-danger w-100" name="submit-newsletter" value="<?= gui ?>" disabled>
                        <input type="hidden" class="btn btn-sm btn-danger w-100" name="recaptcha_response_newsletter" id="recaptchaResponseNewsletter">
                    </div>
                </form>
                <a class="d-inline-block text-decoration-none mt-2" href="https://www.google.com/maps/search/Công+Viên+Phần+Mềm+Quang+Trung+Tô+Ký/@10.8527935,106.6265438,17z" data-fancybox>
                    <i class="bi bi-geo-alt"></i> Google Maps
                </a>
            </div>
*/
?>