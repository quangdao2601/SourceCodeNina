<div class="w-menu">
    <div class="menu">
        <div class="wrap-content">
            <ul class="menu-main">
                <li><a class="<?php if ($com == '' || $com == 'index') echo 'active'; ?> transition" href="" title="<?= trangchu ?>"><?= trangchu ?></a></li>
                <li class="menu-line"></li>
                <li><a class="<?php if ($com == 'gioi-thieu') echo 'active'; ?> transition" href="gioi-thieu" title="<?= gioithieu ?>"><?= gioithieu ?></a></li>
                <li class="menu-line"></li>
                <li>
                    <a class="<?php if ($com == 'san-pham') echo 'active'; ?> transition" href="san-pham" title="<?= sanpham ?>"><?= sanpham ?></a>
                    <?php if (count($productListMenu)) { ?>
                        <ul>
                            <?php foreach ($productListMenu as $klist => $vlist) {
                                $productCatMenu = $d->rawQuery("select name$lang, slugvi, slugen, id from #_product_cat where id_list = ? and find_in_set('hienthi',status) order by numb,id desc", array($vlist['id'])); ?>
                                <li>
                                    <a class="has-child transition" title="<?= $vlist['name' . $lang] ?>" href="<?= $vlist[$sluglang] ?>"><?= $vlist['name' . $lang] ?></a>
                                    <?php if (!empty($productCatMenu)) { ?>
                                        <ul>
                                            <?php foreach ($productCatMenu as $kcat => $vcat) { ?>
                                                <li>
                                                    <a class="has-child transition" title="<?= $vcat['name' . $lang] ?>" href="<?= $vcat[$sluglang] ?>"><?= $vcat['name' . $lang] ?></a>
                                                </li>
                                            <?php } ?>
                                        </ul>
                                    <?php } ?>
                                </li>
                            <?php } ?>
                        </ul>
                    <?php } ?>
                </li>

                <li class="menu-line"></li>
                <li><a class="<?php if ($com == 'dich-vu') echo 'active'; ?> transition" href="dich-vu" title="Dịch vụ">Dịch vụ</a></li>
                <li class="menu-line"></li>
                <li>
                    <a class="<?php if ($com == 'tin-tuc') echo 'active'; ?> transition" href="tin-tuc" title="<?= tintuc ?>"><?= tintuc ?></a>
                </li>
                <li class="menu-line"></li>
                <li><a class="<?php if ($com == 'lien-he') echo 'active'; ?> transition" href="lien-he" title="<?= lienhe ?>"><?= lienhe ?></a></li>
                <li class="ml-auto">
                    <div class="search w-clear">
                        <input type="text" id="keyword" placeholder="Tìm kiếm sản phẩm..." onkeypress="doEnter(event,'keyword');" value="<?= (!empty($_GET['keyword'])) ? $_GET['keyword'] : '' ?>" />
                        <p onclick="onSearch('keyword');"><i><img src="assets/images/xx.png" alt=""></i></p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <?php include TEMPLATE . LAYOUT . "mmenu.php"; ?>
</div>