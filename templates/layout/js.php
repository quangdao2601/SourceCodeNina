<!-- Js Config -->
<script type="text/javascript">
    var NN_FRAMEWORK = NN_FRAMEWORK || {};
    var CONFIG_BASE = '<?= $configBase ?>';
    var ASSET = '<?= ASSET ?>';
    var WEBSITE_NAME = '<?= (!empty($setting['name' . $lang])) ? addslashes($setting['name' . $lang]) : '' ?>';
    var TIMENOW = '<?= date("d/m/Y", time()) ?>';
    var SHIP_CART = <?= (!empty($config['order']['ship'])) ? 'true' : 'false' ?>;
    var RECAPTCHA_ACTIVE = <?= (!empty($config['googleAPI']['recaptcha']['active'])) ? 'true' : 'false' ?>;
    var RECAPTCHA_SITEKEY = '<?= $config['googleAPI']['recaptcha']['sitekey'] ?>';
    var GOTOP = ASSET + 'assets/images/top.png';
    var LANG = {
        'no_keywords': '<?= chuanhaptukhoatimkiem ?>',
        'delete_product_from_cart': '<?= banmuonxoasanphamnay ?>',
        'no_products_in_cart': '<?= khongtontaisanphamtronggiohang ?>',
        'ward': '<?= phuongxa ?>',
        'back_to_home': '<?= vetrangchu ?>',
        'thongbao': '<?= thongbao ?>',
        'dongy': '<?= dongy ?>',
        'dungluonghinhanhlon': '<?= dungluonghinhanhlon ?>',
        'dulieukhonghople': '<?= dulieukhonghople ?>',
        'banchiduocchon1hinhanhdeuplen': '<?= banchiduocchon1hinhanhdeuplen ?>',
        'dinhdanghinhanhkhonghople': '<?= dinhdanghinhanhkhonghople ?>',
        'huy': '<?= huy ?>',
    };
    var logo_img = '<?= $configBase ?><?= UPLOAD_PHOTO_L . $logo['photo'] ?>';
</script>

<!-- Js Files -->
<?php
$js->set("js/jquery.min.js");
$js->set("js/lazyload.min.js");
$js->set("bootstrap/bootstrap.js");
$js->set("js/wow.min.js");
$js->set("owlcarousel2/owl.carousel.js");
$js->set("holdon/HoldOn.js");
$js->set("confirm/confirm.js");
$js->set("simplenotify/simple-notify.js");
/*
$js->set("easyticker/easy-ticker.js");
$js->set("fotorama/fotorama.js");
$js->set("photobox/photobox.js");
$js->set("fileuploader/jquery.fileuploader.min.js");
$js->set("datetimepicker/php-date-formatter.min.js");
$js->set("datetimepicker/jquery.mousewheel.js");
$js->set("datetimepicker/jquery.datetimepicker.js");
$js->set("js/comment.js");
*/
$js->set("fancybox5/fancybox.umd.js");
$js->set("slick/slick.js");
$js->set("magiczoomplus/magiczoomplus.js");
$js->set("js/functions.js");
$js->set("mmenu/mmenu.js");
$js->set("aos/aos.js");
$js->set("toc/toc.js");
$js->set("js/apps.js");
echo $js->get();
?>
<?php if (!empty($config['googleAPI']['recaptcha']['active'])) { ?>
    <!-- Js Google Recaptcha V3 -->
    <script src="https://www.google.com/recaptcha/api.js?render=<?= $config['googleAPI']['recaptcha']['sitekey'] ?>">
    </script>
    <script type="text/javascript">
        grecaptcha.ready(function() {
            /* Newsletter */
            generateCaptcha('Newsletter', 'recaptchaResponseNewsletter');

            <?php if ($source == 'contact') { ?>
                /* Contact */
                generateCaptcha('contact', 'recaptchaResponseContact');
            <?php } ?>
        });
    </script>
<?php } ?>

<?php if (!empty($config['oneSignal']['active'])) { ?>
    <!-- Js OneSignal -->
    <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async=""></script>
    <script type="text/javascript">
        var OneSignal = window.OneSignal || [];
        OneSignal.push(function() {
            OneSignal.init({
                appId: "<?= $config['oneSignal']['id'] ?>"
            });
        });
    </script>
<?php } ?>

<!-- Js Structdata -->
<?php include TEMPLATE . LAYOUT . "strucdata.php"; ?>

<!-- Js Addons -->
<?= $addons->set('script-main', 'script-main', 2); ?>
<?= $addons->get(); ?>

<!-- Js Body -->
<?= $func->decodeHtmlChars($setting['bodyjs']) ?>
<script type="text/javascript">
    function GTranslateFireEvent(a, b) {
        try {
            if (document.createEvent) {
                var c = document.createEvent("HTMLEvents");
                c.initEvent(b, true, true);
                a.dispatchEvent(c);

            } else {
                var c = document.createEventObject();
                a.fireEvent('on' + b, c);
            }
        } catch (e) {}
    }

    function doGoogleLanguageTranslator(a) {
        if (a.value) a = a.value;
        if (a == '') return;
        var b = a.split('|')[1];
        var c;
        var d = document.getElementsByTagName('select');
        for (var i = 0; i < d.length; i++)
            if (d[i].className == 'goog-te-combo') c = d[i];
        if (document.getElementById('google_language_translator') == null || document.getElementById('google_language_translator').innerHTML.length == 0 || c.length == 0 || c.innerHTML.length == 0) {
            setTimeout(function() {
                    doGoogleLanguageTranslator(a)
                },
                100)
        } else {
            c.value = b;
            GTranslateFireEvent(c, 'change');
            GTranslateFireEvent(c, 'change');
            if (b == 'km') {
                $('.hotline-header').addClass('fs');
            }
        }
    }

    function GoogleLanguageTranslatorInit() {
        new google.translate.TranslateElement({
            pageLanguage: 'vi',
            autoDisplay: false
        }, 'google_language_translator');
    }
</script>
<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=GoogleLanguageTranslatorInit"></script>
<div id="google_language_translator"></div>