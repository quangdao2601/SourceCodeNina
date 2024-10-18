<?php if (count($proListHot)) { ?>
    <div class="wrap-brand padding-top-bottom">
        <div class="wrap-content">
            <div class="owl-page owl-carousel owl-theme" data-items="screen:0|items:1|margin:10,screen:425|items:1|margin:10,screen:575|items:2|margin:10,screen:767|items:2|margin:10,screen:991|items:3|margin:20,screen:1199|items:3|margin:30" data-rewind="1" data-autoplay="1" data-loop="0" data-lazyload="0" data-mousedrag="1" data-touchdrag="1" data-smartspeed="500" data-autoplayspeed="3500" data-dots="0" data-nav="1" data-navcontainer=".control-brand">
                <?php foreach ($proListHot as $v) { ?>
                    <div class="box-productlist">
                        <div class="pic-productlist">
                            <a class="text-decoration-none scale-img" href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>">
                                <img onerror="this.src='<?= THUMBS ?>/123x94x1/assets/images/noimage.png';" src="<?= THUMBS ?>/123x94x2/<?= UPLOAD_PRODUCT_L . $v['photo'] ?>" alt="<?= $v['name' . $lang] ?>" />
                            </a>
                        </div>
                        <div class="info-prolist">
                            <h3 class="mb-0"><a class="text-decoration-none text-split name-productlist" href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>"><?= $v['name' . $lang] ?></a></h3>
                            <div class="view-prolist">
                                <a href="<?= $v[$sluglang] ?>">
                                    <div class="see-more">
                                        Xem thêm <img src="assets/images/Vector.png" alt="">
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
<?php } ?>

<?php if (count($gioithieu)) { ?>
    <div class="gioithieu-index">
        <div class="wrap-content padding-top-bottom">

            <div class="gioithieu-content">
                <div class="gioithieu-top">
                    <div class="title-gioithieu">
                        <p class="nhap">đôi nét về</p>
                        <p class="name-gioithieu"><?= htmlspecialchars_decode($gioithieu['name' . $lang]) ?></p>
                    </div>
                    <div class="gioithieu-info">
                        <?= htmlspecialchars_decode($gioithieu['desc' . $lang]) ?>
                    </div>
                    <div class="gioithieu-xemthem">
                        <a href="gioi-thieu">
                            <p class="xemthemm-info">XEM THÊM</p>
                        </a>
                    </div>
                </div>
                <div class="gioithieu-bottom">
                    <div class="gioithieu-pic-top">
                        <a class="img scale-img" href="gioi-thieu" title="<?= $gioithieu['name' . $lang] ?>">
                            <img onerror="this.src='<?= THUMBS ?>/580x386x1/assets/images/noimage.png';" src="<?= THUMBS ?>/580x386x1/<?= UPLOAD_NEWS_L . $gioithieu['photo'] ?>" alt="<?= $gioithieu['name' . $lang] ?>" title="<?= $gioithieu['name' . $lang] ?>" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>

<?php if (count($tieuchi)) { ?>
    <div class="wrap-tieuchi padding-top-bottom">
        <div class="wrap-content">
            <div class="title-main">
                <span>tại sao khách hàng chọn shinki</span>
                <div class="line2">
                    <img src="assets/images/Union.png" alt="">
                </div>
            </div>
            <div class="tieuchi-box">
                <div class="pic-tieuchi">
                    <img onerror="this.src='<?= THUMBS ?>/400x400x1/assets/images/noimage.png';" src="<?= THUMBS ?>/400x400x1/<?= UPLOAD_PHOTO_L . $anhtieuchi['photo'] ?>" />
                </div>
                <div class="tieuchi-index">
                    <?php foreach ($tieuchi as $k => $v) { ?>
                        <div class="why-outside">
                            <div class="item-why">
                                <div class="info-why">
                                    <h3 class="name-why text-split">
                                        <?= $v['name' . $lang] ?>
                                    </h3>
                                    <div class="desc-why text-split"><?= $v['desc' . $lang] ?></div>
                                </div>
                                <div class="pic-why">
                                    <img onerror="this.src='<?= THUMBS ?>/100x100x1/assets/images/noimage.png';" src="<?= THUMBS ?>/100x100x1/<?= UPLOAD_NEWS_L . $v['photo'] ?>" alt="<?= $v['name' . $lang] ?>" title="<?= $v['name' . $lang] ?>" />
                                </div>
                            </div>
                        </div>
                    <?php } ?>

                </div>
            </div>
        </div>
    </div>

<?php } ?>

<?php if (count($proListHot2)) { ?>
    <?php foreach ($proListHot2 as $vlist) { ?>
        <div class="wrap-product padding-top-bottom">
            <div class="wrap-content">
                <div class="title-main">
                    <span><?= $vlist['name' . $lang] ?></span>
                    <div class="line2">
                        <img src="assets/images/Union.png" alt="">
                    </div>
                </div>
                <div class="paging-product-category paging-product-category-<?= $vlist['id'] ?>" data-list="<?= $vlist['id'] ?>">
                </div>
            </div>
        </div>
    <?php } ?>
<?php } ?>

<div class="wrap-dangki padding-top-bottom">
    <div class="wrap-content">
        <div class="dangki-index">
            <div class="dk-left">
                <div class="dkl-box">
                    <div class="tencongty">
                        <?= $setting['name' . $lang] ?>
                    </div>
                    <div class="slogan"><?= $slogan['name' . $lang] ?></div>
                    <div class="chuyensx">Chuyên sản xuất và cung cấp</div>
                    <div class="prolist-w">
                        <div class="owl-page owl-carousel owl-theme" data-items="screen:0|items:2|margin:10,screen:425|items:3|margin:10,screen:575|items:2|margin:10,screen:767|items:2|margin:10,screen:991|items:3|margin:20,screen:1199|items:3|margin:20" data-rewind="1" data-autoplay="1" data-loop="0" data-lazyload="0" data-mousedrag="1" data-touchdrag="1" data-smartspeed="500" data-autoplayspeed="3500" data-dots="0" data-nav="1" data-navcontainer=".control-brand">
                            <?php foreach ($proListHot3 as $v) { ?>
                                <div class="box-productlist2">
                                    <h3 class="mb-0"><a class="text-decoration-none text-split name-productlist2" href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>"><?= $v['name' . $lang] ?></a></h3>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="khauhieu"><?= $khauhieu['name' . $lang] ?></div>
                </div>
            </div>
            <div class="dk-right">
                <div class="dangki">
                    <div class="title-dangki">
                        <span> Đăng ký nhận tin</span>
                        <div class="slogandk">
                            Gửi thông tin chúng tôi sẽ liên hệ lại trong thời gian nhanh nhất
                        </div>
                    </div>
                    <form class="validation-newsletter form-newsletter" novalidate method="post" action="" enctype="multipart/form-data">
                        <div class="row">
                            <div class="hoten">
                                <div class="newsletter-input">
                                    <div class="form-floating form-floating-cus">
                                        <input type="fullname" class="form-control text-sm" id="fullname-newsletter" name="dataNewsletter[fullname]" placeholder="Họ tên" required />
                                        <label for="fullname-newsletter">Họ tên</label>
                                    </div>
                                </div>
                            </div>
                            <div class="news-dk">
                                <div class="email">
                                    <div class="newsletter-input">
                                        <div class="form-floating form-floating-cus">
                                            <input type="email" class="form-control text-sm" id="email-newsletter" name="dataNewsletter[email]" placeholder="<?= nhapemail ?>" required />
                                            <label for="email-newsletter">Email</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="sodienthoai">
                                    <div class="newsletter-input">
                                        <div class="form-floating form-floating-cus">
                                            <input type="phone" class="form-control text-sm" id="phone-newsletter" name="dataNewsletter[phone]" placeholder="Số điện thoại" required />
                                            <label for="phone-newsletter">Số điện thoại</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="diachi">
                                <div class="newsletter-input">
                                    <div class="form-floating form-floating-cus">
                                        <input type="text" class="form-control text-sm" id="address-newsletter" name="dataNewsletter[address]" placeholder="Địa chỉ" required />
                                        <label for="address-newsletter">Địa chỉ</label>
                                    </div>
                                </div>
                            </div>
                            <div class="newsletter-input">
                                <div class="form-floating form-floating-cus">
                                    <textarea class="form-control text-sm" id="content-newsletter" name="dataNewsletter[content]" placeholder="<?= noidung ?>" required /><?= $flash->get('content') ?></textarea>
                                    <label for="content-newsletter">Nội dung tin nhắn</label>
                                </div>
                            </div>
                        </div>
                        <div class="newsletter-button"><input type="hidden" class="" name="dataNewsletter[type]" value="dangkynhantin">
                            <input type="hidden" class="" name="dataNewsletter[date_created]" value="<?= time() ?>">
                            <input type="submit" class="btn btn-sm btn-danger w-100" name="submit-newsletter" value="đăng ký ngay" disabled>
                            <input type="hidden" class="btn btn-sm btn-danger w-100" name="recaptcha_response_newsletter" id="recaptchaResponseNewsletter">
                        </div>
                    </form>
                    <div class="phone-dk">
                        <div class="pic-phone"><img src="assets/images/ph.png" alt=""></div>
                        <div class="phone-info">
                            <?= $func->formatPhone($optsetting['phone']) ?> - <?= $func->formatPhone($optsetting['hotline']) ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="wrap-intro padding-top-bottom">
    <div class="wrap-content">
        <div class="title-main">
            <span>tin tức & video</span>
            <div class="line2">
                <img src="assets/images/Union.png" alt="">
            </div>
        </div>
        <div class="intro-index">
            <div class="intro-left">
                <div class=" d-flex flex-wrap align-items-start justify-content-between ">
                    <div class="newshome-intro">
                        <a class="pic-newshome-best scale-img newshome-best" href="<?= $newsHot[0][$sluglang] ?>" title="<?= $newsHot[0]['name' . $lang] ?>">
                            <img class="lazy w-100" onerror="this.src='<?= THUMBS ?>/280x220x1/assets/images/noimage.png';" data-src="<?= THUMBS ?>/280x220x1/<?= UPLOAD_NEWS_L . $newsHot[0]['photo'] ?>" alt="<?= $newsHot[0]['name' . $lang] ?>" title="<?= $newsHot[0]['name' . $lang] ?>" />
                        </a>
                        <h3>
                            <a class="text-decoration-none name-newshome text-split" href="<?= $newsHot[0][$sluglang] ?>" title="<?= $newsHot[0]['name' . $lang] ?>"><?= $newsHot[0]['name' . $lang] ?></a>
                        </h3>
                        <p class="desc-newshome text-split"><?= $newsHot[0]['desc' . $lang] ?></p>
                        <a class="view-newshome text-decoration-none hover_xemthem" href="<?= $newsHot[0][$sluglang] ?>" title="<?= $newsHot[0]['name' . $lang] ?>"><?= xemthem ?></a>
                    </div>
                    <div class="newshome-scroll">
                        <div class="slick-v-3">
                            <?php foreach ($newsHot as $k => $v) { ?>
                                <div>
                                    <div class="news-slick">
                                        <a class="img scale-img" href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>">
                                            <img onerror="this.src='<?= THUMBS ?>/120x80x1/assets/images/noimage.png';" src="<?= THUMBS ?>/120x80x1/<?= UPLOAD_NEWS_L . $v['photo'] ?>" alt="<?= $v['name' . $lang] ?>" title="<?= $v['name' . $lang] ?>" />
                                        </a>
                                        <div class="info">
                                            <h3>
                                                <a class="name-newshome text-split text-decoration-none" href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>"><?= $v['name' . $lang] ?></a>
                                            </h3>
                                            <p class="desc-newshome desc-home-cl text-split"><?= $v['desc' . $lang] ?></p>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="intro-right">
                <div class="videohome-intro">

                    <?php //echo $addons->set('video-fotorama', 'video-fotorama', 4); 
                    ?>
                    <?php echo $addons->set('video-select', 'video-select', 4);
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php if (count($partner)) { ?>
    <div class="wrap-partner padding-top-bottom">
        <div class="wrap-content">
            <div class="title-main">
                <span>Đối tác của shinki</span>
                <div class="line2">
                    <img src="assets/images/Union.png" alt="">
                </div>
            </div>
            <div class="owl-page owl-carousel owl-theme" data-items="screen:0|items:2|margin:10,screen:425|items:3|margin:10,screen:575|items:4|margin:10,screen:767|items:4|margin:10,screen:991|items:5|margin:10,screen:1199|items:6|margin:20" data-rewind="1" data-autoplay="1" data-loop="0" data-lazyload="0" data-mousedrag="1" data-touchdrag="1" data-smartspeed="500" data-autoplayspeed="3500" data-dots="0" data-nav="1" data-navcontainer=".control-partner">
                <?php foreach ($partner as $v) { ?>
                    <div>
                        <a class="partner" href="<?= $v['link'] ?>" target="_blank" title="<?= $v['name' . $lang] ?>">
                            <img class="w-100 lazy" onerror="this.src='<?= THUMBS ?>/183x100x1/assets/images/noimage.png';" data-src="<?= THUMBS ?>/183x100x1/<?= UPLOAD_PHOTO_L . $v['photo'] ?>" alt="<?= $v['name' . $lang] ?>" />
                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
<?php } ?>