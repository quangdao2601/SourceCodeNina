<div class="head">
    <div class="head-bottom">
        <div class="wrap-content">
            <div class="logo">
                <a class="logo-head" href="">
                    <img onerror="this.src='<?= THUMBS ?>/209x150x1/assets/images/noimage.png';" src="<?= THUMBS ?>/209x150x1/<?= UPLOAD_PHOTO_L . $logo['photo'] ?>" alt="logo" title="logo" />
                </a>
            </div>
            <div class="banner">
                <a class="banner-head" href="">
                    <img onerror="this.src='<?= THUMBS ?>/566x47x1/assets/images/noimage.png';" src="<?= THUMBS ?>/566x47x1/<?= UPLOAD_PHOTO_L . $banner['photo'] ?>" alt="banner" title="banner" />
                </a>
                <div class="diae">
                    <div class="diachi">Địa chỉ: <?= $setting['address' . $lang] ?></div>
                    <div class="email-bn">Email: <?= $optsetting['email'] ?></div>
                </div>
            </div>
            <div class="tuvan">
                <div class="lang-header">
                    <a class="text-decoration-none" onclick="doGoogleLanguageTranslator('vi|vi'); return false;" title="Việt Nam"><img src="assets/images/vie.png" /></a>

                    <a class="text-decoration-none" onclick="doGoogleLanguageTranslator('vi|en'); return false;" title="English"><img src="assets/images/eng.png" /></a>

                    <a class="text-decoration-none" onclick="doGoogleLanguageTranslator('vi|zh-CN'); return false;" title="Trung Quốc"><img src="assets/images/chi.png" /></a>

                    <a class="text-decoration-none" onclick="doGoogleLanguageTranslator('vi|km'); return false;" title="Việt Nam"><img src="assets/images/cam.png" /></a>
                </div>
                <div class="hotline-head mb-0">
                    <div class="title-hotline"><img src="assets/images/g20.png" alt="">Hotline tư vấn</div>
                    <div class="number-hotline"><?= $func->formatPhone($optsetting['hotline']) ?> | <?= $func->formatPhone($optsetting['phone']) ?></div>
                </div>
            </div>
        </div>
    </div>
</div>