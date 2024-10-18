<div class="title-main"><span><?= (!empty($titleCate)) ? $titleCate : @$titleMain ?></span></div>
<?php if ($com == 'tim-kiem') { ?>
    <div class="div_kq_search mb-4"><?= $titleMain ?> (<?= $total ?>): <span>"<?php echo $tukhoa_show; ?>"</span></div>
<?php } ?>
<div class="row row-20">
    <?php if (!empty($product)) { ?>
        <?php foreach ($product as $k => $v) { ?>
            <div class="col-md-3 col-sm-6 col-6 col-20" data-aos="fade-up" data-aos-duration="1000">
                <div class="box-product">
                    <div class="pic-product">
                        <a class="text-decoration-none scale-img" href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>">
                            <img class="lazy w-100" onerror="this.src='<?= THUMBS ?>/530x530x1/assets/images/noimage.png';" data-src="<?= WATERMARK ?>/product/530x530x1/<?= UPLOAD_PRODUCT_L . $v['photo'] ?>" alt="<?= $v['name' . $lang] ?>" title="<?= $v['name' . $lang] ?>" />
                        </a>
                    </div>
                    <h3 class="mb-0"><a class="text-decoration-none text-split name-product" href="<?= $v[$sluglang] ?>" title="<?= $v['name' . $lang] ?>"><?= $v['name' . $lang] ?></a></h3>
                    <div class="lienhe-pro">
                        <a href="tel:<?= preg_replace('/[^0-9]/', '', $optsetting['hotline']); ?>">
                            Liên hệ
                        </a>
                    </div>
                </div>
            </div>
        <?php } ?>
    <?php } else { ?>
        <div class="col-12">
            <div class="alert alert-warning w-100" role="alert">
                <strong><?= khongtimthayketqua ?></strong>
            </div>
        </div>
    <?php } ?>

    <div class="col-12">
        <div class="pagination-home w-100"><?= (!empty($paging)) ? $paging : '' ?></div>
    </div>
</div>