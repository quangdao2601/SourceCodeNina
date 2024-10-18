DROP TABLE IF EXISTS table_city;

CREATE TABLE `table_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `provinceid` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `countryid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_color;

CREATE TABLE `table_color` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `type_show` tinyint(1) DEFAULT 0,
  `type` varchar(30) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_color VALUES("1","","Xanh","Green","AEFF35","0","san-pham","1","hienthi","1609247839","1628742013");
INSERT INTO table_color VALUES("2","","Tím","Purple","7B23FF","0","san-pham","2","hienthi","1609247860","0");
INSERT INTO table_color VALUES("3","","Hồng","Pink","FF28D4","0","san-pham","3","hienthi","1609247875","0");
INSERT INTO table_color VALUES("4","","Cam","Orange","FF9C63","0","san-pham","4","hienthi","1609247893","0");


DROP TABLE IF EXISTS table_comment;

CREATE TABLE `table_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `id_variant` int(11) DEFAULT 0,
  `star` int(11) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_posted` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_comment_photo;

CREATE TABLE `table_comment_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_comment_video;

CREATE TABLE `table_comment_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_contact;

CREATE TABLE `table_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `file_attach` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_counter;

CREATE TABLE `table_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tm` int(11) DEFAULT 0,
  `ip` varchar(16) DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_district;

CREATE TABLE `table_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_city` int(11) DEFAULT 0,
  `districtid` int(11) DEFAULT 0,
  `provinceid` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=725 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_excel;

CREATE TABLE `table_excel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_gallery;

CREATE TABLE `table_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `hash` varchar(20) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `id_color` int(11) DEFAULT 0,
  `file_attach` varchar(255) DEFAULT NULL,
  `link_video` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `type` varchar(30) DEFAULT NULL,
  `com` varchar(255) DEFAULT NULL,
  `kind` varchar(30) DEFAULT NULL,
  `val` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_lang;

CREATE TABLE `table_lang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_define` mediumtext DEFAULT NULL,
  `langvi` mediumtext DEFAULT NULL,
  `langen` mediumtext DEFAULT NULL,
  `numb` int(11) unsigned DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=791 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_lang VALUES("5","trangchu","Trang chủ","Home","1","web");
INSERT INTO table_lang VALUES("6","gioithieu","Giới thiệu","About us","2","web");
INSERT INTO table_lang VALUES("8","tintuc","Tin tức","News","4","web");
INSERT INTO table_lang VALUES("9","lienhe","Liên hệ","Contact us","5","web");
INSERT INTO table_lang VALUES("34","motasanpham","Mô tả","Description","5","web");
INSERT INTO table_lang VALUES("46","sanpham","Sản phẩm","Product","2","web");
INSERT INTO table_lang VALUES("31","luotxem","Lượt xem","Views","2","web");
INSERT INTO table_lang VALUES("30","masp","Mã sản phẩm","Product code","1","web");
INSERT INTO table_lang VALUES("26","ngaydang","Ngày đăng","Date Submitted","2","web");
INSERT INTO table_lang VALUES("27","tintuckhac","Tin tức khác","Other news","3","web");
INSERT INTO table_lang VALUES("40","hotrotructuyen","Hổ trợ trực tuyến","Support Online","1","web");
INSERT INTO table_lang VALUES("50","dangonline","Đang online","Online","1","web");
INSERT INTO table_lang VALUES("51","tongtruycap","Tổng truy cập","Total","2","web");
INSERT INTO table_lang VALUES("52","diachi","Địa chỉ","Address","3","web");
INSERT INTO table_lang VALUES("53","thongtinlienhe","Thông tin liên hệ","Information Contact","4","web");
INSERT INTO table_lang VALUES("54","sodienthoai","Số điện thoại","Phone","5","web");
INSERT INTO table_lang VALUES("55","hovaten","Họ và tên","Full name","1","web");
INSERT INTO table_lang VALUES("56","chude","Chủ đề","Subject","2","web");
INSERT INTO table_lang VALUES("57","noidung","Nội dung","Content","3","web");
INSERT INTO table_lang VALUES("224","matkhaumoi","Mật khẩu mới","New password","1","web");
INSERT INTO table_lang VALUES("225","nhaplaimatkhaumoi","Nhập lại mật khẩu mới","Re-new password","1","web");
INSERT INTO table_lang VALUES("65","gui","Gửi","Send","1","web");
INSERT INTO table_lang VALUES("66","nhaplai","Nhập lại","Reset","2","web");
INSERT INTO table_lang VALUES("76","dangky","Đăng ký","Sign Up","1","web");
INSERT INTO table_lang VALUES("78","khongtimthayketqua","Không tìm thấy kết quả","No results found","1","web");
INSERT INTO table_lang VALUES("197","timduongdi","Tìm đường đi","Find a way","1","web");
INSERT INTO table_lang VALUES("198","dinhkemtaptin","Đính kèm file","Attachment file","1","web");
INSERT INTO table_lang VALUES("199","mabaomat","Mã bảo mật","Security code","1","web");
INSERT INTO table_lang VALUES("86","dichvu","Dịch vụ","Service","1","web");
INSERT INTO table_lang VALUES("87","timkiem","Tìm kiếm","Search","1","web");
INSERT INTO table_lang VALUES("226","capnhat","Cập nhật","Update","1","web");
INSERT INTO table_lang VALUES("227","boqua","Bỏ qua","Cancel","1","web");
INSERT INTO table_lang VALUES("228","phuongxa","Phường/xã","Ward","1","web");
INSERT INTO table_lang VALUES("92","truycapngay","Truy cập ngày","Today","1","web");
INSERT INTO table_lang VALUES("93","dangkynhantin","Đăng ký nhận tin","Sign up to get information","0","web");
INSERT INTO table_lang VALUES("218","quanhuyen","Quận/huyện","District","1","web");
INSERT INTO table_lang VALUES("302","vuilongchonquanhuyen","Vui lòng chọn quận huyện","Please select a district","0","web");
INSERT INTO table_lang VALUES("220","soluongqualon","Số lượng không được lớn hơn 999","Quantity is not greater than 999","1","web");
INSERT INTO table_lang VALUES("96","hoten","Họ tên","Full name","1","web");
INSERT INTO table_lang VALUES("97","chitietsanpham","Chi tiết sản phẩm","Product Details","1","web");
INSERT INTO table_lang VALUES("99","xemthem","Xem thêm","View more","1","web");
INSERT INTO table_lang VALUES("102","tuyendung","Tuyển dụng","Recruitment","1","web");
INSERT INTO table_lang VALUES("108","gia","Giá","Price","1","web");
INSERT INTO table_lang VALUES("221","thongtincanhan","Thông tin cá nhân","Information personal","1","web");
INSERT INTO table_lang VALUES("193","thuvienanh","Thư viện ảnh","Album","1","web");
INSERT INTO table_lang VALUES("194","sanphamnoibat","Sản phẩm nổi bật","Featured products","1","web");
INSERT INTO table_lang VALUES("112","ketquatimkiem","Kết quả tìm kiếm","Search results","1","web");
INSERT INTO table_lang VALUES("230","dathang","Đặt hàng","Add to cart","1","web");
INSERT INTO table_lang VALUES("223","matkhaucu","Mật khẩu cũ","Old password","1","web");
INSERT INTO table_lang VALUES("250","giohang","Giỏ hàng","My cart","1","web");
INSERT INTO table_lang VALUES("212","hinh","Hình","Picture","1","web");
INSERT INTO table_lang VALUES("213","soluong","Số lượng","Number","1","web");
INSERT INTO table_lang VALUES("214","thanhtien","Thành tiền","Amount","1","web");
INSERT INTO table_lang VALUES("216","tinhthanh","Tỉnh/thành phố","City","1","web");
INSERT INTO table_lang VALUES("128","nhaptukhoatimkiem","Nhập từ khóa cần tìm...","Enter the keyword...","1","web");
INSERT INTO table_lang VALUES("205","tinhtrang","Tình trạng","Status","1","web");
INSERT INTO table_lang VALUES("206","hethang","Hết hàng","Out of stock","1","web");
INSERT INTO table_lang VALUES("207","dangcapnhat","Đang cập nhật","Updating","1","web");
INSERT INTO table_lang VALUES("132","danhmucsanpham","Danh mục sản phẩm","Product portfolio","1","web");
INSERT INTO table_lang VALUES("134","trongtuan","Tuần","Week","1","web");
INSERT INTO table_lang VALUES("222","thaydoimatkhau","Thay đổi mật khẩu","Change password","1","web");
INSERT INTO table_lang VALUES("137","thongketruycap","Thống kê truy cập","Statistical access","1","web");
INSERT INTO table_lang VALUES("146","thongtinsanpham","Thông tin sản phẩm","Products Information","1","web");
INSERT INTO table_lang VALUES("303","vuilongchonphuongxa","Vui lòng chọn phường xã","Please select a ward","0","web");
INSERT INTO table_lang VALUES("156","traloi","Trả lời","Answer","1","web");
INSERT INTO table_lang VALUES("157","huy","Hủy","Cancel","1","web");
INSERT INTO table_lang VALUES("151","binhluanve","bình luận về","comments about","1","web");
INSERT INTO table_lang VALUES("152","moibanthaoluan","Mời bạn thảo luận. Vui lòng nhập Tiếng Việt có dấu, tối thiểu 10 ký tự.","Please discuss. Please enter Vietnamese accented, minimum 10 characters.","1","web");
INSERT INTO table_lang VALUES("200","co","Có","Have","1","web");
INSERT INTO table_lang VALUES("201","danhgia","Đánh giá","Review","1","web");
INSERT INTO table_lang VALUES("202","xacnhan","Xác nhận","Confirm","1","web");
INSERT INTO table_lang VALUES("203","sanphamcungloai","Sản phẩm cùng loại","Product Similar","1","web");
INSERT INTO table_lang VALUES("204","conhang","Còn hàng","Stocking","1","web");
INSERT INTO table_lang VALUES("165","thanhtoan","Thanh toán","Pay","1","web");
INSERT INTO table_lang VALUES("167","chonvideo","Chọn video","Choose video","1","web");
INSERT INTO table_lang VALUES("168","slogandangkynhantin","Để lại thông tin để nhận tin tức mới nhất từ chúng tôi","Leave information to receive the latest news from us","1","web");
INSERT INTO table_lang VALUES("208","giamoi","Giá mới","New price","1","web");
INSERT INTO table_lang VALUES("209","giacu","Giá cũ","Old price","1","web");
INSERT INTO table_lang VALUES("171","binhluan","Bình luận","Comment","1","web");
INSERT INTO table_lang VALUES("172","baivietkhac","Bài viết khác","Other news","1","web");
INSERT INTO table_lang VALUES("174","banmuonxoasanphamnay","Bạn muốn xóa sản phẩm này khỏi giỏ hàng ? ","Do you want to remove this product from your shopping cart?","1","web");
INSERT INTO table_lang VALUES("176","soluongkhongnhohonkhong","Số lượng đặt mua không được nhỏ hơn 0","Order quantity must not be less than 0","1","web");
INSERT INTO table_lang VALUES("178","muatiep","Mua tiếp","Buy more","1","web");
INSERT INTO table_lang VALUES("179","xoatatca","Xóa tất cả","Delete all","1","web");
INSERT INTO table_lang VALUES("181","kichthuoc","Kích thước","Size","1","web");
INSERT INTO table_lang VALUES("183","dangnhap","Đăng nhập","Login","1","web");
INSERT INTO table_lang VALUES("184","taikhoan","Tài khoản","Username","1","web");
INSERT INTO table_lang VALUES("185","matkhau","Mật khẩu","Password","1","web");
INSERT INTO table_lang VALUES("186","nhomatkhau","Nhớ mật khẩu","Remember password","1","web");
INSERT INTO table_lang VALUES("187","quenmatkhau","Quên mật khẩu","Forget password","1","web");
INSERT INTO table_lang VALUES("188","nhaplaimatkhau","Nhập lại mật khẩu","Confirm password","1","web");
INSERT INTO table_lang VALUES("189","dienthoai","Điện thoại","Phone","1","web");
INSERT INTO table_lang VALUES("190","banchuacotaikhoan","Bạn chưa có tài khoản ","You don\'t have a account","1","web");
INSERT INTO table_lang VALUES("192","laymatkhau","Lấy mật khẩu","Get password","1","web");
INSERT INTO table_lang VALUES("231","apdung","Áp dụng","Apply","1","web");
INSERT INTO table_lang VALUES("232","phivanchuyen","Phí vận chuyển"," Transport fee","1","web");
INSERT INTO table_lang VALUES("296","tamtinh","Tạm tính","Provisional","0","web");
INSERT INTO table_lang VALUES("234","tongtien","Tổng tiền","Total price","1","web");
INSERT INTO table_lang VALUES("235","map","Bản đồ","Map","1","web");
INSERT INTO table_lang VALUES("236","donhang","Đơn hàng","Order","1","web");
INSERT INTO table_lang VALUES("237","lichsudonhang","Lịch sử đơn hàng","Order history","1","web");
INSERT INTO table_lang VALUES("238","trangdau","Trang đầu","First page","1","web");
INSERT INTO table_lang VALUES("239","trangcuoi","Trang cuối","Last page","1","web");
INSERT INTO table_lang VALUES("240","trangbantruycapkhongtontai","Trang bạn truy cập không tồn tại.","The page you visited does not exist.","1","web");
INSERT INTO table_lang VALUES("241","vetrangchu","Về trang chủ","Back to homepage","1","web");
INSERT INTO table_lang VALUES("242","chiase","Chia sẻ","Share","1","web");
INSERT INTO table_lang VALUES("244","xoa","Xóa","Delete","1","web");
INSERT INTO table_lang VALUES("245","mausac","Màu sắc","Color","1","web");
INSERT INTO table_lang VALUES("247","thongtingiaohang","Thông tin giao hàng","Shipment Details","1","web");
INSERT INTO table_lang VALUES("301","vuilongchontinhthanh","Vui lòng chọn tỉnh thành","Please select a province","0","web");
INSERT INTO table_lang VALUES("253","yeucaukhac","Yêu cầu khác (không bắt buộc)","Other (Optional)","1","web");
INSERT INTO table_lang VALUES("254","khongtontaisanphamtronggiohang","Không tồn tại sản phẩm nào trong giỏ hàng !","No products in your shopping cart !","1","web");
INSERT INTO table_lang VALUES("256","giohangcuaban","Giỏ hàng của bạn","Your cart","1","web");
INSERT INTO table_lang VALUES("257","vuilongchonsizevamau","Vui lòng chọn size và màu !","Please select size and color !","1","web");
INSERT INTO table_lang VALUES("258","dangkytaiday","Đăng ký","Sign up here","1","web");
INSERT INTO table_lang VALUES("259","nhaphoten","Nhập họ tên của bạn","Enter your full name","1","web");
INSERT INTO table_lang VALUES("260","nhaptaikhoan","Nhập tài khoản của bạn","Enter your account","1","web");
INSERT INTO table_lang VALUES("261","nhapmatkhau","Nhập mật khẩu (5-15 ký tự)","Choose password (5-15 chars)","1","web");
INSERT INTO table_lang VALUES("262","nhapemail","Nhập địa chỉ email của bạn","Enter your email address","1","web");
INSERT INTO table_lang VALUES("263","nhapdienthoai","Nhập số điện thoại","Enter your number phone","1","web");
INSERT INTO table_lang VALUES("264","nhapdiachi","Nhập địa chỉ của bạn","Enter your address","1","web");
INSERT INTO table_lang VALUES("265","nhapngaysinh","Nhập ngày sinh","Enter your birthday","1","web");
INSERT INTO table_lang VALUES("266","gioitinh","Giới tính","Gender","1","web");
INSERT INTO table_lang VALUES("267","nam","Nam","Male","1","web");
INSERT INTO table_lang VALUES("268","nu","Nữ","Female","1","web");
INSERT INTO table_lang VALUES("269","kichhoat","Kích hoạt","Active","1","web");
INSERT INTO table_lang VALUES("270","nhapmakichhoat","Nhập mã kích hoạt","Enter your active code","1","web");
INSERT INTO table_lang VALUES("271","nhapmatkhaucu","Nhập mật khẩu cũ","Enter old password","1","web");
INSERT INTO table_lang VALUES("272","nhapmatkhaumoi","Nhập mật khẩu mới","Enter new password","1","web");
INSERT INTO table_lang VALUES("273","thich","Thích","Like","1","web");
INSERT INTO table_lang VALUES("274","dathich","Đã thích","Liked","1","web");
INSERT INTO table_lang VALUES("275","taithembinhluan","Tải thêm bình luận","Get more comments","1","web");
INSERT INTO table_lang VALUES("276","trangke","Trang kế","Next page","1","web");
INSERT INTO table_lang VALUES("277","trangtruoc","Trang trước","Prev page","1","web");
INSERT INTO table_lang VALUES("279","hinhanh","Hình ảnh","Image","0","web");
INSERT INTO table_lang VALUES("280","tensanpham","Tên sản phẩm","Product name","0","web");
INSERT INTO table_lang VALUES("282","duong","Đường phố","Street","1","web");
INSERT INTO table_lang VALUES("283","hinhthucthanhtoan","Hình thức thanh toán","Payments","0","web");
INSERT INTO table_lang VALUES("284","vuilongnhaphoten","Vui lòng nhập họ và tên","Please enter your first and last name","0","web");
INSERT INTO table_lang VALUES("285","vuilongnhapsodienthoai","Vui lòng nhập số điện thoại","Please enter the phone number","0","web");
INSERT INTO table_lang VALUES("286","vuilongnhapdiachi","Vui lòng nhập địa chỉ","Please enter your address","0","web");
INSERT INTO table_lang VALUES("287","vuilongnhapdiachiemail","Vui lòng nhập địa chỉ email","Please enter email address","0","web");
INSERT INTO table_lang VALUES("288","vuilongnhapchude","Vui lòng nhập chủ đề","Please enter subject","0","web");
INSERT INTO table_lang VALUES("289","vuilongnhapnoidung","Vui lòng nhập nội dung","Please enter content","0","web");
INSERT INTO table_lang VALUES("290","chon","Chọn","Choose","0","web");
INSERT INTO table_lang VALUES("292","tieptucmuahang","Tiếp tục mua hàng","Continue shopping","0","web");
INSERT INTO table_lang VALUES("293","trongthang","Tháng","Month","0","web");
INSERT INTO table_lang VALUES("294","chinhsach","Chính sách hỗ trợ","Supporting policies","0","web");
INSERT INTO table_lang VALUES("295","thuonghieu","Thương hiệu","Brand","0","web");
INSERT INTO table_lang VALUES("304","vuilongnhaptaikhoan","Vui lòng nhập tài khoản","Please enter an account","0","web");
INSERT INTO table_lang VALUES("305","vuilongnhapmatkhau","Vui lòng nhập mật khẩu","Please enter a password","0","web");
INSERT INTO table_lang VALUES("306","vuilongnhaplaimatkhau","Vui lòng nhập lại mật khẩu","Please enter the password again","0","web");
INSERT INTO table_lang VALUES("307","vuilongnhapngaysinh","Vui lòng nhập ngày sinh","Please enter your birthday","0","web");
INSERT INTO table_lang VALUES("308","ngaysinh","Ngày sinh","Date of birth","0","web");
INSERT INTO table_lang VALUES("312","vuilongnhapmakichhoat","Vui lòng nhập mã kích hoạt","Please enter the activation code","0","web");
INSERT INTO table_lang VALUES("315","dangxuat","Đăng xuất","Logout","0","web");
INSERT INTO table_lang VALUES("316","homnay","Hôm nay","Today","0","web");
INSERT INTO table_lang VALUES("317","homqua","Hôm qua","Yesterday","0","web");
INSERT INTO table_lang VALUES("318","thongbao","Thông báo","Notify","0","web");
INSERT INTO table_lang VALUES("319","thoat","Thoát","Exit","0","web");
INSERT INTO table_lang VALUES("320","chuanhaptukhoatimkiem","Chưa nhập từ khóa tìm kiếm","No search keywords entered","0","web");
INSERT INTO table_lang VALUES("322","capnhatthongtin","Cập nhật thông tin","Update information","0","web");
INSERT INTO table_lang VALUES("323","noidungdangcapnhat","Nội dung đang cập nhật","Content is updating","0","web");
INSERT INTO table_lang VALUES("325","dangcapnhatdulieu","Đang cập nhật dữ liệu","Updating data","0","web");
INSERT INTO table_lang VALUES("326","themvaogiohang","Thêm vào giỏ","add to cart","0","web");
INSERT INTO table_lang VALUES("327","muangay","Mua ngay","buy now","0","web");
INSERT INTO table_lang VALUES("328","goingay","Gọi ngay","Call now","0","web");
INSERT INTO table_lang VALUES("329","nhantin","Nhắn tin","SMS","0","web");
INSERT INTO table_lang VALUES("330","zalochat","Zalo Chat","Zalo Chat","0","web");
INSERT INTO table_lang VALUES("331","facebookchat","Facebook Chat","Facebook Chat","0","web");
INSERT INTO table_lang VALUES("332","chiduong","Chỉ đường","Maps","0","web");
INSERT INTO table_lang VALUES("333","tinlienquan","Tin liên quan","Related news","0","web");
INSERT INTO table_lang VALUES("334","hotenkhongduoctrong","Họ tên không được trống","Name cannot be blank","0","web");
INSERT INTO table_lang VALUES("335","sodienthoaikhongduoctrong","Số điện thoại không được trống","Phone number cannot be empty","0","web");
INSERT INTO table_lang VALUES("336","sodienthoaikhonghople","Số điện thoại không hợp lệ","invalid phone number","0","web");
INSERT INTO table_lang VALUES("337","diachikhongduoctrong","Địa chỉ không được trống","Address cannot be empty","0","web");
INSERT INTO table_lang VALUES("338","emailkhongduoctrong","Email không được trống","Email cannot be empty","0","web");
INSERT INTO table_lang VALUES("339","emailkhonghople","Email không hợp lệ","Invalid email","0","web");
INSERT INTO table_lang VALUES("340","chudekhongduoctrong","Chủ đề không được trống","Topics can&#039;t be empty","0","web");
INSERT INTO table_lang VALUES("341","noidungkhongduoctrong","Nội dung không được trống","Content cannot be empty","0","web");
INSERT INTO table_lang VALUES("342","guilienhethanhcong","Gửi liên hệ thành công","Contact sent successfully","0","web");
INSERT INTO table_lang VALUES("343","guilienhethatbai","Gửi liên hệ thất bại. Vui lòng thử lại sau","Contact sending failed. Please try again later","0","web");
INSERT INTO table_lang VALUES("344","dangkynhantinthanhcong","Đăng ký nhận tin thành công. Chúng tôi sẽ liên hệ với bạn sớm.","Sign up to receive news successfully. We will contact you soon.","0","web");
INSERT INTO table_lang VALUES("345","dangkynhantinthatbai","Đăng ký nhận tin thất bại. Vui lòng thử lại sau.","Sign up for newsletter failed. Please try again later.","0","web");
INSERT INTO table_lang VALUES("346","datlichhenthatbai","Đặt lịch hẹn thất bại. Vui lòng thử lại sau.","Appointment failed. Please try again later.","0","web");
INSERT INTO table_lang VALUES("347","datlichthanhcong","Đặt lịch hẹn thành công","Successful appointment booking","0","web");
INSERT INTO table_lang VALUES("348","datlichhenthatbaivuilongthulaisauvaiphut","Đặt lịch hẹn thất bại. Vui lòng thử lại sau vài phút","Appointment failed. Please try again in a few minutes","0","web");
INSERT INTO table_lang VALUES("349","donhangkhonghoplevuilongthulaisau","Đơn hàng không hợp lệ. Vui lòng thử lại sau.","Invalid order. Please try again later.","0","web");
INSERT INTO table_lang VALUES("350","chuachonhinhthucthanhtoan","Chưa chọn hình thức thanh toán","No payment method selected","0","web");
INSERT INTO table_lang VALUES("351","chuachontinhthanhpho","Chưa chọn tỉnh/thành phố","No province/city selected","0","web");
INSERT INTO table_lang VALUES("352","chuachonquanhuyen","Chưa chọn quận/huyện","No district/district selected yet","0","web");
INSERT INTO table_lang VALUES("353","chuachonphuongxa","Chưa chọn phường/xã","No ward/commune selected yet","0","web");
INSERT INTO table_lang VALUES("354","thongtindonhangdaduocguithanhcong","Thông tin đơn hàng đã được gửi thành công.","Order information has been sent successfully.","0","web");
INSERT INTO table_lang VALUES("355","thongbao","Thông báo","Notification","0","web");
INSERT INTO table_lang VALUES("356","dongy","Đồng ý","OK","0","web");
INSERT INTO table_lang VALUES("357","dungluonghinhanhlon","Dung lượng hình ảnh lớn. Dung lượng cho phép &lt;= 4MB ~ 4096KB","Large image capacity. Allowed capacity &lt;= 4MB ~ 4096KB","0","web");
INSERT INTO table_lang VALUES("358","dinhdanghinhanhkhonghople","Định dạng hình ảnh không hợp lệ","Invalid image format","0","web");
INSERT INTO table_lang VALUES("359","banchiduocchon1hinhanhdeuplen","Bạn chỉ được chọn 1 hình ảnh để upload","You can only choose 1 image to upload","0","web");
INSERT INTO table_lang VALUES("360","dulieukhonghople","Dữ liệu không hợp lệ","Invalid data","0","web");
INSERT INTO table_lang VALUES("361","datlich","Đặt lịch","Booking","0","web");
INSERT INTO table_lang VALUES("362","noibat","Nổi bật","Outstanding","0","admin");
INSERT INTO table_lang VALUES("363","hienthi","Hiển thị","Show","0","admin");
INSERT INTO table_lang VALUES("364","trangchu","Trang chủ","Home","0","admin");
INSERT INTO table_lang VALUES("365","sanpham","Sản phẩm","Product","0","admin");
INSERT INTO table_lang VALUES("366","tintuc","Tin tức","News","0","admin");
INSERT INTO table_lang VALUES("367","tuyendung","Tuyển dụng","Recruitment","0","admin");
INSERT INTO table_lang VALUES("368","thuvienanh","Thư viện ảnh","Photo library","0","admin");
INSERT INTO table_lang VALUES("369","video","Video","Video","0","admin");
INSERT INTO table_lang VALUES("370","lienhe","Liên hệ","Contact","0","admin");
INSERT INTO table_lang VALUES("371","kichhoat","Kích hoạt","Activated","0","admin");
INSERT INTO table_lang VALUES("372","xacnhan","Xác nhận","Confirm","0","admin");
INSERT INTO table_lang VALUES("373","linkredirect","Điều hướng link","Link redirect","0","admin");
INSERT INTO table_lang VALUES("374","groupsanpham","Group Sản Phẩm","Product Group","0","admin");
INSERT INTO table_lang VALUES("375","grouptintuc","Group Tin Tức","Group News","0","admin");
INSERT INTO table_lang VALUES("376","dashboard","Bảng điều khiển","Dashboard","0","admin");
INSERT INTO table_lang VALUES("377","danhmuccap1","Danh mục cấp 1","Category level 1","0","admin");
INSERT INTO table_lang VALUES("378","danhmuccap2","Danh mục cấp 2","Category level 2","0","admin");
INSERT INTO table_lang VALUES("379","danhmuccap3","Danh mục cấp 3","Category level 3","0","admin");
INSERT INTO table_lang VALUES("380","danhmuccap4","Danh mục cấp 4","Category level 4","0","admin");
INSERT INTO table_lang VALUES("381","danhmuchang","Danh mục hãng","Brand Directory","0","admin");
INSERT INTO table_lang VALUES("634","quanlykichthuoc","Quản lý kích thước","Size Management","0","admin");
INSERT INTO table_lang VALUES("383","danhmuckichthuoc","Danh mục kích thước","Size List","0","admin");
INSERT INTO table_lang VALUES("384","danhsachbaiviet","Danh sách bài viết","List of articles","0","admin");
INSERT INTO table_lang VALUES("385","quanlydonhang","Quản lý đơn hàng","Order Management","0","admin");
INSERT INTO table_lang VALUES("386","quanlytags","Quản lý tags","Tags Management","0","admin");
INSERT INTO table_lang VALUES("387","quanlynhantin","Quản lý nhận tin","Newsletter","0","admin");
INSERT INTO table_lang VALUES("388","quanlytrangtinh","Quản lý trang tĩnh","Static site management","0","admin");
INSERT INTO table_lang VALUES("389","quanlyhinhanhvideo","Quản lý hình ảnh - video","Manage photos - videos","0","admin");
INSERT INTO table_lang VALUES("390","quanlydiadiem","Quản lý địa điểm","Location Management","0","admin");
INSERT INTO table_lang VALUES("391","tinhthanh","Tỉnh thành","Province","0","admin");
INSERT INTO table_lang VALUES("392","quanhuyen","Quận huyện","District","0","admin");
INSERT INTO table_lang VALUES("393","phuongxa","Phường xã","Wards","0","admin");
INSERT INTO table_lang VALUES("394","quanlyuser","Quản lý user","User management","0","admin");
INSERT INTO table_lang VALUES("395","nhomquyen","Nhóm quyền","Rights group","0","admin");
INSERT INTO table_lang VALUES("396","thongtinadmin","Thông tin admin","Admin information","0","admin");
INSERT INTO table_lang VALUES("397","taikhoanadmin","Tài khoản admin","Admin account","0","admin");
INSERT INTO table_lang VALUES("398","taikhoankhach","Tài khoản khách","Guest account","0","admin");
INSERT INTO table_lang VALUES("399","quanlythongbaoday","Quản lý thông báo đẩy","Manage push notifications","0","admin");
INSERT INTO table_lang VALUES("400","quanlyseopage","Quản lý seo page","Manage seo page","0","admin");
INSERT INTO table_lang VALUES("401","thietlapthongtin","Thiết lập thông tin","Information setting","0","admin");
INSERT INTO table_lang VALUES("402","diachi","Địa chỉ","Address","0","admin");
INSERT INTO table_lang VALUES("403","xinchao","Xin chào","Hi","0","admin");
INSERT INTO table_lang VALUES("404","doimatkhau","Đổi mật khẩu","Change Password","0","admin");
INSERT INTO table_lang VALUES("405","xoabonhocache","Xóa bộ nhớ cache","Clear cache","0","admin");
INSERT INTO table_lang VALUES("406","thongbao","Thông báo","Notification","0","admin");
INSERT INTO table_lang VALUES("407","donhang","Đơn hàng","Order","0","admin");
INSERT INTO table_lang VALUES("408","binhluan","Bình luận","Comment","0","admin");
INSERT INTO table_lang VALUES("409","dangxuat","Đăng xuất","Logout","0","admin");
INSERT INTO table_lang VALUES("410","thongketruycapthang","Thống kê truy cập tháng","Statistics for","0","admin");
INSERT INTO table_lang VALUES("411","taikhoan","Tài khoản","Account","0","admin");
INSERT INTO table_lang VALUES("412","cauhinhwebsite","Cấu hình website","Website config","0","admin");
INSERT INTO table_lang VALUES("413","xemthem","Xem thêm","View more","0","admin");
INSERT INTO table_lang VALUES("414","thulienhe","Thư liên hệ","Contact letter","0","admin");
INSERT INTO table_lang VALUES("415","thongke","Thống Kê","Statistical","0","admin");
INSERT INTO table_lang VALUES("416","thang","Tháng","Month","0","admin");
INSERT INTO table_lang VALUES("417","year","Năm","Year","0","admin");
INSERT INTO table_lang VALUES("418","trangkhongtontai","Trang không tồn tại","Page does not exist","0","admin");
INSERT INTO table_lang VALUES("419","dulieukhongcothuc","Dữ liệu không có thực","Unreal data","0","admin");
INSERT INTO table_lang VALUES("420","khongnhanduocdulieu","Không nhận được dữ liệu","Unreal data","0","admin");
INSERT INTO table_lang VALUES("421","capnhatdulieuthanhcong","Cập nhật dữ liệu thành công","Data update successful","0","admin");
INSERT INTO table_lang VALUES("422","capnhatdulieubiloi","Cập nhật dữ liệu bị lỗi","Update error data","0","admin");
INSERT INTO table_lang VALUES("423","saochepdulieuthanhcong","Sao chép dữ liệu thành công","Copy data successful","0","admin");
INSERT INTO table_lang VALUES("636","chitietkichthuoc","Chi tiết kích thước","Size details","0","admin");
INSERT INTO table_lang VALUES("425","saochepdulieubiloi","Sao chép dữ liệu bị lỗi","Copy data error","0","admin");
INSERT INTO table_lang VALUES("426","luudulieubiloi","Lưu dữ liệu bị lỗi","Save data error","0","admin");
INSERT INTO table_lang VALUES("427","xoadulieuthanhcong","Xóa dữ liệu thành công","Delete data successfully","0","admin");
INSERT INTO table_lang VALUES("428","xoadulieubiloi","Xóa dữ liệu bị lỗi","Delete corrupted data","0","admin");
INSERT INTO table_lang VALUES("429","giabankhonghople","Giá bán không hợp lệ","Invalid sale price","0","admin");
INSERT INTO table_lang VALUES("430","giamoikhonghople","Giá mới không hợp lệ","New price is not valid","0","admin");
INSERT INTO table_lang VALUES("431","chieckhaukhonghople","Chiết khấu không hợp lệ","Invalid discount","0","admin");
INSERT INTO table_lang VALUES("432","duongdandatontai","Đường dẫn đã tồn tại","Link already exists","0","admin");
INSERT INTO table_lang VALUES("433","duongdankhongduoctrong","Đường dẫn không được trống","Link cannot be empty","0","admin");
INSERT INTO table_lang VALUES("434","xoacachethanhcong","Xóa cache thành công","Clear cache successfully","0","admin");
INSERT INTO table_lang VALUES("435","xoacachethatbai","Xóa cache thất bại","Clear cache failed","0","admin");
INSERT INTO table_lang VALUES("436","hotenkhongthetrong","Họ tên không được trống","Name cannot empty","0","admin");
INSERT INTO table_lang VALUES("437","sodienthoaikhongduoctrong","Số điện thoại không được trống","Phone number cannot be empty","0","admin");
INSERT INTO table_lang VALUES("438","dulieurong","Dữ liệu rỗng","Empty data","0","admin");
INSERT INTO table_lang VALUES("439","sodienthoaikhonghople","Số điện thoại không hợp lệ","Invalid phone number","0","admin");
INSERT INTO table_lang VALUES("440","diachikhongduoctrong","Địa chỉ không được trống","Address cannot be empty","0","admin");
INSERT INTO table_lang VALUES("441","emailkhongduoctrong","Email không được trống","Email cannot be empty","0","admin");
INSERT INTO table_lang VALUES("442","emailkhonghople","Email không hợp lệ","Invalid email","0","admin");
INSERT INTO table_lang VALUES("443","chudekhongduoctrong","Chủ đề không được trống","Topics can&#039;t be empty","0","admin");
INSERT INTO table_lang VALUES("444","noidungkhongduoctrong","Nội dung không được trống","Content cannot be empty","0","admin");
INSERT INTO table_lang VALUES("445","hoten","Họ tên","Full name","0","admin");
INSERT INTO table_lang VALUES("446","dienthoai","Điện thoại","Phone","0","admin");
INSERT INTO table_lang VALUES("447","madonhang","Mã đơn hàng","Code orders","0","admin");
INSERT INTO table_lang VALUES("448","ngaydat","Ngày đặt","Booking date","0","admin");
INSERT INTO table_lang VALUES("450","soluong","Số lượng","Quantity","0","admin");
INSERT INTO table_lang VALUES("451","gia","Giá","Price","0","admin");
INSERT INTO table_lang VALUES("452","giamoi","Giá mới","New price","0","admin");
INSERT INTO table_lang VALUES("453","tamtinh","Tạm tính","Provisional","0","admin");
INSERT INTO table_lang VALUES("454","phivanchuyen","Phí vận chuyển","Transport fee","0","admin");
INSERT INTO table_lang VALUES("455","tonggiatridonhang","Tổng giá trị đơn hàng","Total order value","0","admin");
INSERT INTO table_lang VALUES("456","hinhthucthanhtoan","Hình thức thanh toán","Payments","0","admin");
INSERT INTO table_lang VALUES("457","danhsachdonhang","Danh sách đơn hàng","Orders List","0","admin");
INSERT INTO table_lang VALUES("458","masanpham","Mã sản phẩm","Product code","0","admin");
INSERT INTO table_lang VALUES("459","mota","Mô tả","Describe","0","admin");
INSERT INTO table_lang VALUES("460","noidung","Nội dung","Content","0","admin");
INSERT INTO table_lang VALUES("461","hinhanh","Hình ảnh","Photo","0","admin");
INSERT INTO table_lang VALUES("462","luudulieuthatbai","Lưu dữ liệu thất bại","Data save failed","0","admin");
INSERT INTO table_lang VALUES("463","luudulieuthanhcong","Lưu dữ liệu thành công","Save data successfully","0","admin");
INSERT INTO table_lang VALUES("464","khongnhanduochinhanhmoi","Không nhận được hình ảnh mới","Didn&#039;t receive new pictures","0","admin");
INSERT INTO table_lang VALUES("465","luuhinhanhbiloi","Lưu hình ảnh bị lỗi","Save the wrong image","0","admin");
INSERT INTO table_lang VALUES("466","luuhinhanhthanhcong","Lưu hình ảnh thành công","Save image successfully","0","admin");
INSERT INTO table_lang VALUES("467","taotaptinngonnguthatbai","Tạo tập tin ngôn ngữ thất bại","Language file creation failed","0","admin");
INSERT INTO table_lang VALUES("468","taotaptinngonnguthanhcong","Tạo tập tin ngôn ngữ thành công","Language file creation successful","0","admin");
INSERT INTO table_lang VALUES("469","tenbienkhongduoctrong","Tên biến không được trống","Variable name cannot be empty","0","admin");
INSERT INTO table_lang VALUES("470","thuphanhoitu","Thư phản hồi từ","Feedback letter from","0","admin");
INSERT INTO table_lang VALUES("471","emaildaduocguithanhcong","Email đã được gửi thành công","Email has been sent successfully","0","admin");
INSERT INTO table_lang VALUES("472","emailguibiloi","Email gửi bị lỗi. Vui lòng thử lại sau","The email sent was corrupted. Please try again later","0","admin");
INSERT INTO table_lang VALUES("473","duongdankhonghople","Đường dẫn không hợp lệ","Invalid link","0","admin");
INSERT INTO table_lang VALUES("474","duongdanvideokhonghople","Đường dẫn video không hợp lệ","Invalid video link","0","admin");
INSERT INTO table_lang VALUES("475","duongdanvideokhongduoctrong","Đường dẫn video không được trống","Video link cannot be empty","0","admin");
INSERT INTO table_lang VALUES("476","kichthuoctoithieukhonghople","Kích thước tối thiểu không hợp lệ","Invalid min size","0","admin");
INSERT INTO table_lang VALUES("477","kichthuoctoithieukhongduoctrong","Kích thước tối thiểu không được trống","Minimum size cannot be empty","0","admin");
INSERT INTO table_lang VALUES("478","kichthuoctoidakhonghople","Kích thước tối đa không hợp lệ","Invalid max size","0","admin");
INSERT INTO table_lang VALUES("479","kichthuoctoidakhongduoctrong","Kích thước tối đa không được trống","Maximum size cannot be empty","0","admin");
INSERT INTO table_lang VALUES("480","tilelt300khonghople","Tỉ lệ &lt; 300 không hợp lệ","Odds &lt; 300 are not valid","0","admin");
INSERT INTO table_lang VALUES("481","tilelt300khongduoctrong","Tỉ lệ &lt; 300 không được trống","Scale &lt; 300 can&#039;t be empty","0","admin");
INSERT INTO table_lang VALUES("482","tilegt300khonghople","Tỉ lệ &gt; 300 không hợp lệ","Odds &gt; 300 are invalid","0","admin");
INSERT INTO table_lang VALUES("483","tilegt300khongduoctrong","Tỉ lệ &gt; 300 không được trống","Scale &gt; 300 can&#039;t be empty","0","admin");
INSERT INTO table_lang VALUES("484","chuachonvitridongdau","Chưa chọn vị trí đóng dấu","Stamp location has not been selected","0","admin");
INSERT INTO table_lang VALUES("485","tieudekhongduoctrong","Tiêu đề không được trống","Title cannot be empty","0","admin");
INSERT INTO table_lang VALUES("486","chuachontinhthanhpho","Chưa chọn tỉnh/thành phố","No province/city selected","0","admin");
INSERT INTO table_lang VALUES("487","chuachonquanhuyen","Chưa chọn quận/huyện","No district/district selected yet","0","admin");
INSERT INTO table_lang VALUES("488","phivanchuyenkhonghople","Phí vận chuyển không hợp lệ","Invalid shipping fee","0","admin");
INSERT INTO table_lang VALUES("489","lienketkhongduoctrong","Liên kết không được trống","Link cannot be empty","0","admin");
INSERT INTO table_lang VALUES("490","motakhongduoctrong","Mô tả không được trống","Description cannot be empty","0","admin");
INSERT INTO table_lang VALUES("491","guithongbaothanhcong","Gửi thông báo thành công","Successful message sent","0","admin");
INSERT INTO table_lang VALUES("492","bankhongcoquyentruycapvaokhuvucnay","Bạn không có quyền truy cập vào khu vực này","You do not have access to this area","0","admin");
INSERT INTO table_lang VALUES("493","nhomquyennaykhongtontai","Nhóm quyền này không tồn tại","This permission group does not exist","0","admin");
INSERT INTO table_lang VALUES("494","vuilongchonquyenchonhomnay","Vui lòng chọn quyền cho nhóm này","Please select permissions for this group","0","admin");
INSERT INTO table_lang VALUES("495","capnhatnhomquyenthanhcong","Cập nhật nhóm quyền thành công","Update permission group successfully","0","admin");
INSERT INTO table_lang VALUES("496","capnhatnhomquyenthatbai","Cập nhật nhóm quyền thất bại","Permission group update failed","0","admin");
INSERT INTO table_lang VALUES("497","taonhomquyenthanhcong","Tạo nhóm quyền thành công","Create a successful permission group","0","admin");
INSERT INTO table_lang VALUES("498","taonhomquyenthatbai","Tạo nhóm quyền thất bại","Permission group creation failed","0","admin");
INSERT INTO table_lang VALUES("499","matkhaucukhongchinhxac","Mật khẩu cũ không chính xác","Old password is incorrect","0","admin");
INSERT INTO table_lang VALUES("500","matkhaumoikhongduoctrong","Mật khẩu mới không được trống","New password cannot be blank","0","admin");
INSERT INTO table_lang VALUES("501","matkhaubandatquadongian","Mật khẩu bạn đặt quá đơn giãn","The password you set is too simple","0","admin");
INSERT INTO table_lang VALUES("502","xacnhanmatkhaumoikhongduoctrong","Xác nhận mật khẩu mới không được trống","Confirm new password cannot be empty","0","admin");
INSERT INTO table_lang VALUES("503","matkhaumoikhongtrungkhop","Mật khẩu mới không trùng khớp","New password does not match","0","admin");
INSERT INTO table_lang VALUES("504","taikhoankhongduoctrong","Tài khoản không được trống","Account cannot be empty","0","admin");
INSERT INTO table_lang VALUES("505","taikhoanchiduocnhapchuthuongvaso","Tài khoản chỉ được nhập chữ thường và số (chữ thường không dấu, ghi liền nhau, không khoảng trắng)","Accounts can only enter lowercase letters and numbers (lowercase without accents, contiguous, no spaces)","0","admin");
INSERT INTO table_lang VALUES("506","taikhoandatontai","Tài khoản đã tồn tại","Account already exists","0","admin");
INSERT INTO table_lang VALUES("507","emaildatontai","Email đã tồn tại","Email already exists","0","admin");
INSERT INTO table_lang VALUES("508","chuachongioitinh","Chưa chọn giới tính","No gender selected","0","admin");
INSERT INTO table_lang VALUES("509","ngaysinhkhongduoctrong","Ngày sinh không được trống","Date of birth cannot be empty","0","admin");
INSERT INTO table_lang VALUES("510","ngaysinhkhonghople","Ngày sinh không hợp lệ","Invalid date of birth","0","admin");
INSERT INTO table_lang VALUES("511","chuachonnhomquyen","Chưa chọn nhóm quyền","The permission group has not been selected","0","admin");
INSERT INTO table_lang VALUES("512","matkhaukhongduoctrong","Mật khẩu không được trống","Password cannot empty","0","admin");
INSERT INTO table_lang VALUES("513","xacnhanmatkhaukhongduoctrong","Xác nhận mật khẩu không được trống","Confirm password cannot be empty","0","admin");
INSERT INTO table_lang VALUES("514","matkhaukhongtrungkhop","Mật khẩu không trùng khớp","Password does not match","0","admin");
INSERT INTO table_lang VALUES("515","bankhongcoquyentrentaikhoannaymoithacmacxinlienhequantriwebsite","Bạn không có quyền trên tài khoản này. Mọi thắc mắc xin liên hệ quản trị website","You do not have permissions on this account. If you have any questions, please contact the website administrator","0","admin");
INSERT INTO table_lang VALUES("516","quanlybinhluan","Quản lý bình luận","Manage comments","0","admin");
INSERT INTO table_lang VALUES("517","thoat","Thoát","Exit","0","admin");
INSERT INTO table_lang VALUES("518","xemchitiet","Xem chi tiết","See details","0","admin");
INSERT INTO table_lang VALUES("519","danhgiatrungbinh","Đánh Giá Trung Bình","Average Rating","0","admin");
INSERT INTO table_lang VALUES("520","nhanxet","nhận xét","comment","0","admin");
INSERT INTO table_lang VALUES("521","danhsachbinhluan","Danh sách bình luận","Comments List","0","admin");
INSERT INTO table_lang VALUES("635","danhsachkichthuoc","Danh sách kích thước","Size List","0","admin");
INSERT INTO table_lang VALUES("523","xoatatca","Xóa tất cả","Delete all","0","admin");
INSERT INTO table_lang VALUES("524","khongcodulieu","Không có dữ liệu","No data","0","admin");
INSERT INTO table_lang VALUES("525","timkiem","Tìm kiếm","Search","0","admin");
INSERT INTO table_lang VALUES("526","danhsachlienhe","Danh sách liên hệ","Contact list","0","admin");
INSERT INTO table_lang VALUES("527","thaotac","Thao tác","Operation","0","admin");
INSERT INTO table_lang VALUES("528","quanlylienhe","Quản lý liên hệ","Contact Management","0","admin");
INSERT INTO table_lang VALUES("529","chitietlienhe","Chi tiết liên hệ","Contact Details","0","admin");
INSERT INTO table_lang VALUES("530","luu","Lưu","Save","0","admin");
INSERT INTO table_lang VALUES("531","lamlai","Làm lại","Reset","0","admin");
INSERT INTO table_lang VALUES("532","thongtinlienhe","Thông tin liên hệ","Contact Info","0","admin");
INSERT INTO table_lang VALUES("633","chieckhau","Chiếc khấu","Discount","0","admin");
INSERT INTO table_lang VALUES("534","downloadtaptinhientai","Download tập tin hiện tại","Download current file","0","admin");
INSERT INTO table_lang VALUES("535","taptintrong","Tập tin trống","Empty file","0","admin");
INSERT INTO table_lang VALUES("536","noidungseo","Nội dung SEO","SEO Content","0","admin");
INSERT INTO table_lang VALUES("537","ghichu","Ghi chú","Note","0","admin");
INSERT INTO table_lang VALUES("538","sothutu","Số thứ tự","Ordinal number","0","admin");
INSERT INTO table_lang VALUES("539","exportdanhsachdulieu","Export danh sách dữ liệu","Export data list","0","admin");
INSERT INTO table_lang VALUES("540","xuatdanhsachsanphamthanhtaptinexcel","Xuất danh sách sản phẩm thành tập tin excel","Export product list to excel file","0","admin");
INSERT INTO table_lang VALUES("541","capnhat","Cập nhật","Update","0","admin");
INSERT INTO table_lang VALUES("542","themmoi","Thêm mới","Add","0","admin");
INSERT INTO table_lang VALUES("543","danhsach","Danh sách","List","0","admin");
INSERT INTO table_lang VALUES("544","danhmucmausac","Danh mục màu sắc","Color catalog","0","admin");
INSERT INTO table_lang VALUES("545","khongcomausac","Không có màu sắc","No color","0","admin");
INSERT INTO table_lang VALUES("546","uploadhinhanh","Upload hình ảnh","Upload photo","0","admin");
INSERT INTO table_lang VALUES("547","uploadtaptin","Upload tập tin","Upload files","0","admin");
INSERT INTO table_lang VALUES("548","chitiet","Chi tiết","Detail","0","admin");
INSERT INTO table_lang VALUES("549","tieude","Tiêu đề","Title","0","admin");
INSERT INTO table_lang VALUES("550","quanlyhinhanhimportexcel","Quản lý hình ảnh import excel","Manage images import excel","0","admin");
INSERT INTO table_lang VALUES("551","chitiethinhanh","Chi tiết hình ảnh","Detail photo","0","admin");
INSERT INTO table_lang VALUES("552","chonfile","Chọn file","Choose file","0","admin");
INSERT INTO table_lang VALUES("553","hinhanhimport","Hình ảnh import","Imported photo","0","admin");
INSERT INTO table_lang VALUES("554","cach1","Cách 1","Way 1","0","admin");
INSERT INTO table_lang VALUES("555","bancothenhaphinhbangcachcopyduongdanhinhonlinevaotaptinexcel","Bạn có thể nhập hình bằng cách copy đường dẫn hình online vào tập tin excel","You can import the image by copying the image link online into the excel file","0","admin");
INSERT INTO table_lang VALUES("556","vidu","Ví dụ","For example","0","admin");
INSERT INTO table_lang VALUES("557","copyduongdannhuvidutrenvaotaptinexceldeimporthinhanh","Copy đường dẫn như ví dụ trên vào tập tin excel để import hình ảnh","Copy the path as the example above into the excel file to import the image","0","admin");
INSERT INTO table_lang VALUES("558","cach2","Cách 2","Way 2","0","admin");
INSERT INTO table_lang VALUES("559","danhsachhinhanhimport","Danh sách hình ảnh import","List of imported images","0","admin");
INSERT INTO table_lang VALUES("560","hinh","Hình","Photo","0","admin");
INSERT INTO table_lang VALUES("561","importdanhsachdulieu","Import danh sách dữ liệu","Import data list","0","admin");
INSERT INTO table_lang VALUES("562","loai","Loại","Type","0","admin");
INSERT INTO table_lang VALUES("563","keovathahinhvaoday","Kéo và thả hình vào đây","Drag and drop image here","0","admin");
INSERT INTO table_lang VALUES("564","hoac","hoặc","or","0","admin");
INSERT INTO table_lang VALUES("565","chonhinh","Chọn hình","Choose photo","0","admin");
INSERT INTO table_lang VALUES("566","neuquykhachkhongbietcachsudungdatastructurevuilongkhongnhapnoidungvaokhungnaydetranhphatsinhloi","Nếu quý khách không biết cách sử dụng Data Structure vui lòng không nhập nội dung vào khung này để tránh phát sinh lỗi...","If you do not know how to use Data Structure, please do not enter content in this box to avoid errors...","0","admin");
INSERT INTO table_lang VALUES("567","kytu","ký tự","characters","0","admin");
INSERT INTO table_lang VALUES("568","duongdan","Đường dẫn","Slug","0","admin");
INSERT INTO table_lang VALUES("569","vuilongkhongnhaptrungtieude","Vui lòng không nhập trùng tiêu đề","Please do not enter the same title","0","admin");
INSERT INTO table_lang VALUES("570","thaydoiduongdantheotieudemoi","Thay đổi đường dẫn theo tiêu đề mới","Change path under new title","0","admin");
INSERT INTO table_lang VALUES("571","duongdanmau","Đường dẫn mẫu","Sample path","0","admin");
INSERT INTO table_lang VALUES("572","duongdandatontaiduongdantruycapmucnaycothebitrunglap","Đường dẫn đã tồn tại. Đường dẫn truy cập mục này có thể bị trùng lặp","The path already exists. The path to access this item may be duplicated","0","admin");
INSERT INTO table_lang VALUES("573","duongdanhople","Đường dẫn hợp lệ","Valid path","0","admin");
INSERT INTO table_lang VALUES("574","clickvaodayneukhongmuondoilau","Click vào đây nếu không muốn đợi lâu","Click here if you don&#039;t want to wait","0","admin");
INSERT INTO table_lang VALUES("575","danhmuc","Danh mục","Category","0","admin");
INSERT INTO table_lang VALUES("576","bosuutap","Bộ sưu tập","Attached photo","0","admin");
INSERT INTO table_lang VALUES("577","taoseo","Tạo SEO","Create SEO","0","admin");
INSERT INTO table_lang VALUES("578","albumhientai","Album hiện tại","Current album","0","admin");
INSERT INTO table_lang VALUES("579","chontatca","Chọn tất cả","Select all","0","admin");
INSERT INTO table_lang VALUES("580","sapxep","Sắp xếp","Arrange","0","admin");
INSERT INTO table_lang VALUES("581","cothechonnhieuhinhdedichuyen","Có thể chọn nhiều hình để di chuyển","Can select multiple images to move","0","admin");
INSERT INTO table_lang VALUES("582","them","Thêm","Add","0","admin");
INSERT INTO table_lang VALUES("583","tailieuthamkhao","Tài liệu tham khảo","Reference material","0","admin");
INSERT INTO table_lang VALUES("584","luuvataotudongschema","Lưu và tạo tự động Schema","Save and auto-generate Schema","0","admin");
INSERT INTO table_lang VALUES("585","luutaitrang","Lưu tại trang","Saved at page","0","admin");
INSERT INTO table_lang VALUES("586","saochepngay","Sao chép ngay","Copy now","0","admin");
INSERT INTO table_lang VALUES("587","chinhsuathongtin","Chỉnh sửa thông tin","Edit information","0","admin");
INSERT INTO table_lang VALUES("588","chude","Chủ đề","Topic","0","admin");
INSERT INTO table_lang VALUES("589","tinhtrang","Tình trạng","Status","0","admin");
INSERT INTO table_lang VALUES("590","capnhattinhtrang","Cập nhật tình trạng","Update status","0","admin");
INSERT INTO table_lang VALUES("591","guiemail","Gửi email","Send email","0","admin");
INSERT INTO table_lang VALUES("592","chonemailsaudokeoxuongduoicungdanhsachnaydecothethietlapnoidungemailmuonguidi","Chọn email sau đó kéo xuống dưới cùng danh sách này để có thể thiết lập nội dung email muốn gửi đi","Select the email then scroll down to the bottom of this list to be able to set the email content you want to send","0","admin");
INSERT INTO table_lang VALUES("593","ngaytao","Ngày tạo","Date created","0","admin");
INSERT INTO table_lang VALUES("594","chinhsua","Chỉnh sửa","Edit","0","admin");
INSERT INTO table_lang VALUES("595","thongtindonhang","Thông tin đơn hàng","Orders","0","admin");
INSERT INTO table_lang VALUES("596","thongtinchinh","Thông tin chính","Main information","0","admin");
INSERT INTO table_lang VALUES("597","yeucaukhac","Yêu cầu khác","Other requirements","0","admin");
INSERT INTO table_lang VALUES("598","chitietdonhang","Chi tiết đơn hàng","Order details","0","admin");
INSERT INTO table_lang VALUES("599","tensanpham","Tên sản phẩm","Product&#039;s name","0","admin");
INSERT INTO table_lang VALUES("600","dongia","Đơn giá","Unit price","0","admin");
INSERT INTO table_lang VALUES("601","tonggia","Tổng giá","Total price","0","admin");
INSERT INTO table_lang VALUES("602","moidat","Mới đặt","Just ordered","0","admin");
INSERT INTO table_lang VALUES("603","daxacnhan","Đã xác nhận","Confirmed","0","admin");
INSERT INTO table_lang VALUES("604","dagiao","Đã giao","Delivered","0","admin");
INSERT INTO table_lang VALUES("605","dahuy","Đã hủy","Cancelled","0","admin");
INSERT INTO table_lang VALUES("606","timkiemdonhang","Tìm kiếm đơn hàng","Order search","0","admin");
INSERT INTO table_lang VALUES("607","khoanggia","Khoảng giá","Price range","0","admin");
INSERT INTO table_lang VALUES("608","huyloc","Hủy lọc","Cancel filter","0","admin");
INSERT INTO table_lang VALUES("609","xuatfileexcel","Xuất file Excel","Export Excel file","0","admin");
INSERT INTO table_lang VALUES("610","xuatfileword","Xuất file Word","Export Word file","0","admin");
INSERT INTO table_lang VALUES("611","chuyenhuongtoilink","Chuyển hướng tới link","Redirect to link","0","admin");
INSERT INTO table_lang VALUES("612","chuyenhuong","Chuyển hướng","Redirect","0","admin");
INSERT INTO table_lang VALUES("613","loaidieuhuong","Loại điều hướng","Redirect  type","0","admin");
INSERT INTO table_lang VALUES("614","linkmoi","Link mới","New link","0","admin");
INSERT INTO table_lang VALUES("615","vitridongdau","Vị trí đóng dấu","Stamp position","0","admin");
INSERT INTO table_lang VALUES("616","tile","Tỉ lệ","Ratio","0","admin");
INSERT INTO table_lang VALUES("617","kichthuoctoida","Kích thước tối đa","Maximum size","0","admin");
INSERT INTO table_lang VALUES("618","kichthuoctoithieu","Kích thước tối thiểu","Minimum size","0","admin");
INSERT INTO table_lang VALUES("619","tuychonlap","Tùy chọn lặp","Repeat option","0","admin");
INSERT INTO table_lang VALUES("620","khonglaplai","Không lặp lại","Do not repeat","0","admin");
INSERT INTO table_lang VALUES("621","chonthuoctinh","Chọn thuộc tính","Select properties","0","admin");
INSERT INTO table_lang VALUES("622","taptinsanpham","Tập tin sản phẩm","Product file","0","admin");
INSERT INTO table_lang VALUES("623","taptin","Tập tin","File","0","admin");
INSERT INTO table_lang VALUES("624","hinhanhsanpham","Hình ảnh sản phẩm","Product photo","0","admin");
INSERT INTO table_lang VALUES("625","videosanpham","Video sản phẩm","Product videos","0","admin");
INSERT INTO table_lang VALUES("626","hinhanhsanphamcap1","Hình ảnh sản phẩm cấp 1","Product image level 1","0","admin");
INSERT INTO table_lang VALUES("627","videosanphamcap1","Video sản phẩm cấp 1","Product video level 1","0","admin");
INSERT INTO table_lang VALUES("628","hinhanhthuvienanh","Hình ảnh thư viện ảnh","Photo gallery image","0","admin");
INSERT INTO table_lang VALUES("631","danhmuctags","Danh mục tags","Category tags","0","admin");
INSERT INTO table_lang VALUES("632","masp","Mã sản phẩm","Product code","0","admin");
INSERT INTO table_lang VALUES("637","kichthuoc","kích thước","size","0","admin");
INSERT INTO table_lang VALUES("638","quanlymausac","Quản lý màu sắc","Color Management","0","admin");
INSERT INTO table_lang VALUES("639","danhsachmausac","Danh sách màu sắc","Color list","0","admin");
INSERT INTO table_lang VALUES("640","chitietmausac","Chi tiết màu sắc","Color details","0","admin");
INSERT INTO table_lang VALUES("641","mausac","màu sắc","color","0","admin");
INSERT INTO table_lang VALUES("642","loaihienthi","Loại hiển thị","Display Type","0","admin");
INSERT INTO table_lang VALUES("643","chonloaihienthi","Chọn loại hiển thị","Select display type","0","admin");
INSERT INTO table_lang VALUES("644","traloi","Trả lời","Reply","0","admin");
INSERT INTO table_lang VALUES("645","xoa","Xóa","Delete","0","admin");
INSERT INTO table_lang VALUES("646","boduyet","Bỏ duyệt","Quit browsing","0","admin");
INSERT INTO table_lang VALUES("647","duyet","Duyệt","Browser","0","admin");
INSERT INTO table_lang VALUES("648","moi","Mới","New","0","admin");
INSERT INTO table_lang VALUES("649","xemthembinhluan","Xem thêm bình luận","See more comments","0","admin");
INSERT INTO table_lang VALUES("650","phanhoiboibanquantri","Phản hồi bởi Ban Quản Trị","Response by the Board of Directors","0","admin");
INSERT INTO table_lang VALUES("651","guitraloi","Gửi trả lời","Send reply","0","admin");
INSERT INTO table_lang VALUES("652","huybo","Hủy bỏ","Cancel","0","admin");
INSERT INTO table_lang VALUES("653","vietcautraloicuaban","Viết câu trả lời của bạn","Write your answer","0","admin");
INSERT INTO table_lang VALUES("654","taithembinhluan","Tải thêm bình luận","Download more comments","0","admin");
INSERT INTO table_lang VALUES("655","giohang","Giỏ hàng","Cart","0","admin");
INSERT INTO table_lang VALUES("656","tagssanpham","Tags sản phẩm","Product Tags","0","admin");
INSERT INTO table_lang VALUES("657","tagstintuc","Tags tin tức","News tags","0","admin");
INSERT INTO table_lang VALUES("658","thongtin","Thông tin","Information","0","admin");
INSERT INTO table_lang VALUES("659","laplai","Lặp lại","Repeat","0","admin");
INSERT INTO table_lang VALUES("660","laplaitheochieungang","Lặp lại theo chiều ngang","Repeat horizontally","0","admin");
INSERT INTO table_lang VALUES("661","laplaitheochieudoc","Lặp lại theo chiều dọc","Repeat vertically","0","admin");
INSERT INTO table_lang VALUES("662","toanmanhinh","Toàn màn hình","Full screen","0","admin");
INSERT INTO table_lang VALUES("663","toanmanhinhtheochieungang","Toàn màn hình theo chiều ngang","Horizontal full screen","0","admin");
INSERT INTO table_lang VALUES("664","toanmanhinhtheochieudoc","Toàn màn hình theo chiều dọc","Full screen vertically","0","admin");
INSERT INTO table_lang VALUES("665","vitri","Vị trí","Location","0","admin");
INSERT INTO table_lang VALUES("666","chontinhtrang","Chọn tình trạng","Select status","0","admin");
INSERT INTO table_lang VALUES("667","canhtraicanhtren","Canh Trái - Canh Trên","Left Soup - Top Soup","0","admin");
INSERT INTO table_lang VALUES("668","canhtraicanhduoi","Canh Trái - Canh Dưới","Left Soup - Bottom Soup","0","admin");
INSERT INTO table_lang VALUES("669","canhtraicanhgiua","Canh Trái - Canh Giữa","Left Side - Center Soup","0","admin");
INSERT INTO table_lang VALUES("670","canhphaicanhtren","Canh Phải - Canh Trên","Right Side - Upper Side","0","admin");
INSERT INTO table_lang VALUES("671","canhphaicanhduoi","Canh Phải - Canh Dưới","Right Side - Bottom Side","0","admin");
INSERT INTO table_lang VALUES("672","canhphaicanhgiua","Canh Phải - Canh Giữa","Right Sided - Middle Side","0","admin");
INSERT INTO table_lang VALUES("673","canhgiuacanhtren","Canh Giữa - Canh Trên","Canh Giữa - Canh Trên","0","admin");
INSERT INTO table_lang VALUES("674","canhgiuacanhduoi","Canh Giữa - Canh Dưới","Middle Soup - Bottom Soup","0","admin");
INSERT INTO table_lang VALUES("675","canhgiuacanhgiua","Canh Giữa - Canh Giữa","Mid-Stitch - Mid-Stitch","0","admin");
INSERT INTO table_lang VALUES("676","codinh","Cố định","Permanent","0","admin");
INSERT INTO table_lang VALUES("677","khongcodinh","Không cố định","Unstable","0","admin");
INSERT INTO table_lang VALUES("678","maunen","Màu nền","Background color","0","admin");
INSERT INTO table_lang VALUES("679","hinhnen","Hình nền","Background image","0","admin");
INSERT INTO table_lang VALUES("680","dangkynhantin","Đăng ký nhận tin","Sign up for","0","admin");
INSERT INTO table_lang VALUES("681","daxem","Đã xem","Watched","0","admin");
INSERT INTO table_lang VALUES("682","dalienhe","Đã liên hệ","Contacted","0","admin");
INSERT INTO table_lang VALUES("683","dathongbao","Đã thông báo","Announced","0","admin");
INSERT INTO table_lang VALUES("684","tuyendung","Tuyển dụng","Recruitment","0","admin");
INSERT INTO table_lang VALUES("685","hinhanhtintuccap1","Hình ảnh Tin tức cấp 1","Image News Level 1","0","admin");
INSERT INTO table_lang VALUES("686","videotintuccap1","Video Tin tức cấp 1","Video News Level 1","0","admin");
INSERT INTO table_lang VALUES("687","chinhsach","Chính sách","Policy","0","admin");
INSERT INTO table_lang VALUES("688","hinhthucthanhtoan","Hình thức thanh toán","Payments","0","admin");
INSERT INTO table_lang VALUES("689","doitac","Đối tác","Partner","0","admin");
INSERT INTO table_lang VALUES("690","watermarktintuc","Watermark tin tức","News watermark","0","admin");
INSERT INTO table_lang VALUES("691","lienhe","Liên hệ","Contact","0","admin");
INSERT INTO table_lang VALUES("692","gioithieu","Giới thiệu","About us","0","admin");
INSERT INTO table_lang VALUES("693","chitiettinhthanh","Chi tiết tỉnh thành","Province details","0","admin");
INSERT INTO table_lang VALUES("694","quanlytinhthanh","Quản lý tỉnh thành","Provincial management","0","admin");
INSERT INTO table_lang VALUES("695","danhsachtinhthanh","Danh sách tỉnh thành","List of provinces","0","admin");
INSERT INTO table_lang VALUES("696","quanlyquanhuyen","Quản lý quận huyên","District Manager","0","admin");
INSERT INTO table_lang VALUES("697","danhsachquanhuyen","Danh sách quận huyện","List of districts","0","admin");
INSERT INTO table_lang VALUES("699","chitietquanhuyen","Chi tiết quận huyện","District details","0","admin");
INSERT INTO table_lang VALUES("700","chitietphuongxa","Chi tiết phường xã","Ward details","0","admin");
INSERT INTO table_lang VALUES("701","danhsachthongbaoday","Danh sách thông báo đẩy","List of push notifications","0","admin");
INSERT INTO table_lang VALUES("702","daytin","Đẩy tin","Push news","0","admin");
INSERT INTO table_lang VALUES("703","chitietthongbaoday","Chi tiết thông báo đẩy","Push notification details","0","admin");
INSERT INTO table_lang VALUES("704","thongtinseopage","Thông tin SEO page","Page SEO information","0","admin");
INSERT INTO table_lang VALUES("705","thongtincongty","Thông tin công ty","Company information","0","admin");
INSERT INTO table_lang VALUES("706","cauhinh","Cấu hình","Configuration","0","admin");
INSERT INTO table_lang VALUES("707","thongtinchung","Thông tin chung","General information","0","admin");
INSERT INTO table_lang VALUES("708","ngonngumacdinh","Ngôn ngữ mặc định","Default language","0","admin");
INSERT INTO table_lang VALUES("709","toadogooglemap","Tọa độ google map","Google map coordinates","0","admin");
INSERT INTO table_lang VALUES("710","giolamviec","Giờ làm việc","Work time","0","admin");
INSERT INTO table_lang VALUES("711","toadogooglemapiframe","Tọa độ google map iframe","Coordinates google map iframe","0","admin");
INSERT INTO table_lang VALUES("712","laymanhunggooglemap","Lấy mã nhúng google map","Get google map embed code","0","admin");
INSERT INTO table_lang VALUES("713","laymanhung","Lấy mã nhúng","Get the embed code","0","admin");
INSERT INTO table_lang VALUES("714","thongtintaikhoan","Thông tin tài khoản","Account information","0","admin");
INSERT INTO table_lang VALUES("715","thongtinadmin","Thông tin admin","Admin information","0","admin");
INSERT INTO table_lang VALUES("716","matkhaucu","Mật khẩu cũ","Old password","0","admin");
INSERT INTO table_lang VALUES("717","matkhaumoi","Mật khẩu mới","A new password","0","admin");
INSERT INTO table_lang VALUES("718","taomatkhau","Tạo mật khẩu","Create a password","0","admin");
INSERT INTO table_lang VALUES("719","nhaplaimatkhaumoi","Nhập lại mật khẩu mới","Enter a new password","0","admin");
INSERT INTO table_lang VALUES("720","taikhoan","Tài khoản","Account","0","admin");
INSERT INTO table_lang VALUES("721","gioitinh","Giới tính","Sex","0","admin");
INSERT INTO table_lang VALUES("722","nam","Nam","Male","0","admin");
INSERT INTO table_lang VALUES("723","nu","Nữ","Female","0","admin");
INSERT INTO table_lang VALUES("724","ngaysinh","Ngày sinh","Date of birth","0","admin");
INSERT INTO table_lang VALUES("725","chitiettaikhoanadmin","Chi tiết tài khoản admin","Admin account details","0","admin");
INSERT INTO table_lang VALUES("726","nhaplaimatkhau","Nhập lại mật khẩu","Enter the password","0","admin");
INSERT INTO table_lang VALUES("727","chongioitinh","Chọn giới tính","Choose your gender","0","admin");
INSERT INTO table_lang VALUES("728","quanlytaikhoanadmin","Quản lý tài khoản admin","Manage admin account","0","admin");
INSERT INTO table_lang VALUES("729","danhsachtaikhoanadmin","Danh sách tài khoản admin","List of admin accounts","0","admin");
INSERT INTO table_lang VALUES("730","chitiettaikhoankhach","Chi tiết tài khoản khách","Guest account details","0","admin");
INSERT INTO table_lang VALUES("731","quanlytaikhoankhach","Quản lý tài khoản khách","Manage guest accounts","0","admin");
INSERT INTO table_lang VALUES("732","danhsachtaikhoankhach","Danh sách tài khoản khách","List of guest accounts","0","admin");
INSERT INTO table_lang VALUES("733","tennhomquyen","Tên nhóm quyền","Permission group name","0","admin");
INSERT INTO table_lang VALUES("734","quanly","Quản lý","Manage","0","admin");
INSERT INTO table_lang VALUES("735","xemdanhsach","Xem danh sách","View list","0","admin");
INSERT INTO table_lang VALUES("736","quanlybaiviet","Quản lý bài viết","Manage Posts","0","admin");
INSERT INTO table_lang VALUES("737","quanlythongtincongty","Quản lý thông tin công ty","Company information management","0","admin");
INSERT INTO table_lang VALUES("738","quanlyseopage","Quản lý SEO page","Manage SEO page","0","admin");
INSERT INTO table_lang VALUES("739","quanlynhomquyen","Quản lý nhóm quyền","Manage group permissions","0","admin");
INSERT INTO table_lang VALUES("740","danhsachnhomquyen","Danh sách nhóm quyền","List of permission groups","0","admin");
INSERT INTO table_lang VALUES("741","dangnhap","Đăng nhập","Log in","0","admin");
INSERT INTO table_lang VALUES("742","dangnhaphethong","Đăng nhập hệ thống","Sign in","0","admin");
INSERT INTO table_lang VALUES("743","chondanhmuc","Chọn danh mục","Select a category","0","admin");
INSERT INTO table_lang VALUES("744","uploadthatbai","Upload thất bại","Upload failed","0","admin");
INSERT INTO table_lang VALUES("745","uploadthanhcong","Upload thành công","Upload successfully","0","admin");
INSERT INTO table_lang VALUES("746","xinloivuilongthulaisau","Xin lỗi..! Vui lòng thử lại sau","Sorry..! Please try again later","0","admin");
INSERT INTO table_lang VALUES("747","phut","phút","minute","0","admin");
INSERT INTO table_lang VALUES("748","chuanhaptendangnhapvamatkhau","Chưa nhập tên đăng nhập và mật khẩu","No username and password entered","0","admin");
INSERT INTO table_lang VALUES("749","chuanhaptendangnhap","Chưa nhập tên đăng nhập","Username not entered","0","admin");
INSERT INTO table_lang VALUES("750","chuanhapmatkhau","Chưa nhập mật khẩu","Password not entered","0","admin");
INSERT INTO table_lang VALUES("751","dangnhapthanhcong","Đăng nhập thành công","Logged in successfully","0","admin");
INSERT INTO table_lang VALUES("752","matkhaukhongchinhxac","Mật khẩu không chính xác","Incorrect password","0","admin");
INSERT INTO table_lang VALUES("753","tendangnhapkhongtontai","Tên đăng nhập không tồn tại","Username does not exist","0","admin");
INSERT INTO table_lang VALUES("754","saithongtincon","Sai thông tin. Còn","Wrong information. Still","0","admin");
INSERT INTO table_lang VALUES("755","lanthu","lần thử","try","0","admin");
INSERT INTO table_lang VALUES("756","bandahetlanthuvuilongthulaisau","Bạn đã hết lần thử. Vui lòng thử lại sau","You have run out of attempts. Please try again later","0","admin");
INSERT INTO table_lang VALUES("757","dangtai","Đang tải","Loading","0","admin");
INSERT INTO table_lang VALUES("758","phanhoithanhcong","Phản hồi thành công","Successful response","0","admin");
INSERT INTO table_lang VALUES("759","hethongbiloivuilongthulaisau","Hệ thống bị lỗi. Vui lòng thử lại sau.","Error. Please try again later.","0","admin");
INSERT INTO table_lang VALUES("760","capnhattrangthaithanhcong","Cập nhật trạng thái thành công","Status update successful","0","admin");
INSERT INTO table_lang VALUES("761","banmuonxoabinhluannay","Bạn muốn xóa bình luận này ?","Want to delete this comment?","0","admin");
INSERT INTO table_lang VALUES("762","xoabinhluanthanhcong","Xóa bình luận thành công","Comment deleted successfully","0","admin");
INSERT INTO table_lang VALUES("763","chonhinhthucthanhtoan","Chọn hình thức thanh toán","Choose a form of payment","0","admin");
INSERT INTO table_lang VALUES("764","banhaychonitnhat1mucdegui","Bạn hãy chọn ít nhất 1 mục để gửi","Please select at least 1 item to send","0","admin");
INSERT INTO table_lang VALUES("765","banhaychonitnhat1mucdexoa","Bạn hãy chọn ít nhất 1 mục để xóa","Please select at least 1 item to delete","0","admin");
INSERT INTO table_lang VALUES("766","dongy","Đồng ý","Agree","0","admin");
INSERT INTO table_lang VALUES("767","dungluonghinhanhlondungluongchopheplt4mb4096kb","Dung lượng hình ảnh lớn. Dung lượng cho phép &lt;= 4MB ~ 4096KB","Large image capacity. Allowed capacity &lt;= 4MB ~ 4096KB","0","admin");
INSERT INTO table_lang VALUES("768","dinhdanghinhanhkhonghople","Định dạng hình ảnh không hợp lệ","Invalid image format","0","admin");
INSERT INTO table_lang VALUES("769","dulieukhonghople","Dữ liệu không hợp lệ","Invalid data","0","admin");
INSERT INTO table_lang VALUES("770","banchiduocchon1hinhanhdeupload","Bạn chỉ được chọn 1 hình ảnh để upload","You can only choose 1 image to upload","0","admin");
INSERT INTO table_lang VALUES("771","banmuonxoahinhanhnay","Bạn muốn xóa hình ảnh này ?","Want to delete this image?","0","admin");
INSERT INTO table_lang VALUES("772","xulythatbaivuilongthulaisau","Xử lý thất bại. Vui lòng thử lại sau.","Handling failure. Please try again later.","0","admin");
INSERT INTO table_lang VALUES("773","banmuondaytinnay","Bạn muốn đẩy tin này ?","Want to push this message?","0","admin");
INSERT INTO table_lang VALUES("774","banmuonguithongtinchocacmucdachon","Bạn muốn gửi thông tin cho các mục đã chọn ?","Want to send information for selected items ?","0","admin");
INSERT INTO table_lang VALUES("775","bancochacmuonxoamucnay","Bạn có chắc muốn xóa mục này ?","Are you sure you want to delete this entry?","0","admin");
INSERT INTO table_lang VALUES("776","bancochacmuonxoanhungmucnay","Bạn có chắc muốn xóa những mục này ?","Are you sure you want to delete these items?","0","admin");
INSERT INTO table_lang VALUES("777","dulieuhinhanhkhonghople","Dữ liệu hình ảnh không hợp lệ","Invalid image data","0","admin");
INSERT INTO table_lang VALUES("778","noidungseodaduocthietlapbanmuontaolainoidungseo","Nội dung SEO đã được thiết lập. Bạn muốn tạo lại nội dung SEO ?","SEO content is already set up. Want to recreate SEO content?","0","admin");
INSERT INTO table_lang VALUES("779","bancochacmuonxoahinhanhnay","Bạn có chắc muốn xóa hình ảnh này ?","Are you sure you want to delete this image?","0","admin");
INSERT INTO table_lang VALUES("780","bancochacmuonxoacachinhanhdachon","Bạn có chắc muốn xóa các hình ảnh đã chọn ?","Are you sure you want to delete the selected images ?","0","admin");
INSERT INTO table_lang VALUES("781","themhinh","Thêm hình","Add pictures","0","admin");
INSERT INTO table_lang VALUES("782","vuilongchonhinhanh","Vui lòng chọn hình ảnh","Please choose an image","0","admin");
INSERT INTO table_lang VALUES("783","nhunghinhdaduocchon","Những hình đã được chọn","Selected images","0","admin");
INSERT INTO table_lang VALUES("784","keohinhvaodaydeupload","Kéo hình vào đây để upload","Drag the picture here to upload","0","admin");
INSERT INTO table_lang VALUES("785","banmuonloaibohinhanhnay","Bạn muốn loại bỏ hình ảnh này ?","You want to remove this image ?","0","admin");
INSERT INTO table_lang VALUES("786","chihotrotaptinlahinhanhcodinhdang","Chỉ hỗ trợ tập tin là hình ảnh có định dạng","Only files that are images are supported","0","admin");
INSERT INTO table_lang VALUES("787","chiduocuploadmoilan","Chỉ được upload mỗi lần","Can only be uploaded at a time","0","admin");
INSERT INTO table_lang VALUES("788","cokichthuocqualonvuilonguploadhinhanhcokichthuoctoida","có kích thước quá lớn. Vui lòng upload hình ảnh có kích thước tối đa","size is too large. Please upload the maximum size image","0","admin");
INSERT INTO table_lang VALUES("789","nhunghinhanhbanchoncokichthuocqualonvuilongchonnhunghinhanhcokichthuoctoida","Những hình ảnh bạn chọn có kích thước quá lớn. Vui lòng chọn những hình ảnh có kích thước tối đa","The images you selected are too large in size. Please choose the maximum size images","0","admin");
INSERT INTO table_lang VALUES("790","chon","Chọn","Choose","0","admin");


DROP TABLE IF EXISTS table_member;

CREATE TABLE `table_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_social` tinyint(1) DEFAULT 0,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `confirm_code` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `fullname` varchar(225) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0,
  `login_session` varchar(255) DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `birthday` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_news;

CREATE TABLE `table_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `id_item` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `id_sub` int(11) DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_news_cat;

CREATE TABLE `table_news_cat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_news_item;

CREATE TABLE `table_news_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_news_list;

CREATE TABLE `table_news_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_news_sub;

CREATE TABLE `table_news_sub` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `id_item` int(11) DEFAULT 0,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_news_tags;

CREATE TABLE `table_news_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `id_tags` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_newsletter;

CREATE TABLE `table_newsletter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `file_attach` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `confirm_status` varchar(255) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



DROP TABLE IF EXISTS table_order;

CREATE TABLE `table_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT 0,
  `code` varchar(25) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `order_payment` int(11) DEFAULT 0,
  `temp_price` double DEFAULT 0,
  `total_price` double DEFAULT 0,
  `city` int(11) DEFAULT 0,
  `district` int(11) DEFAULT 0,
  `ward` int(11) DEFAULT 0,
  `ship_price` double DEFAULT 0,
  `requirements` mediumtext DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `order_status` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_order_detail;

CREATE TABLE `table_order_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) DEFAULT 0,
  `id_product` int(11) DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `regular_price` double DEFAULT 0,
  `sale_price` double DEFAULT 0,
  `quantity` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_order_status;

CREATE TABLE `table_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `class_order` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_order_status VALUES("1","Mới đặt","New order","text-primary");
INSERT INTO table_order_status VALUES("2","Đã xác nhận","Confirmed order","text-info");
INSERT INTO table_order_status VALUES("3","Đang giao hàng","Delivering order","text-warning");
INSERT INTO table_order_status VALUES("4","Đã giao","Delivered order","text-success");
INSERT INTO table_order_status VALUES("5","Đã hủy","Canceled order","text-danger");


DROP TABLE IF EXISTS table_permission;

CREATE TABLE `table_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_permission_group` int(11) DEFAULT 0,
  `permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1903 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_permission VALUES("1744","1","static_update_gioi-thieu");
INSERT INTO table_permission VALUES("1745","1","static_update_gioi-thieu-san-pham");
INSERT INTO table_permission VALUES("1741","1","newsletter_add_dangkytuyendung");
INSERT INTO table_permission VALUES("1742","1","newsletter_edit_dangkytuyendung");
INSERT INTO table_permission VALUES("1743","1","newsletter_delete_dangkytuyendung");
INSERT INTO table_permission VALUES("1740","1","newsletter_man_dangkytuyendung");
INSERT INTO table_permission VALUES("1738","1","newsletter_edit_dangkybaogia");
INSERT INTO table_permission VALUES("1739","1","newsletter_delete_dangkybaogia");
INSERT INTO table_permission VALUES("1736","1","newsletter_man_dangkybaogia");
INSERT INTO table_permission VALUES("1737","1","newsletter_add_dangkybaogia");
INSERT INTO table_permission VALUES("1735","1","newsletter_delete_dangkynhantin");
INSERT INTO table_permission VALUES("1732","1","newsletter_man_dangkynhantin");
INSERT INTO table_permission VALUES("1733","1","newsletter_add_dangkynhantin");
INSERT INTO table_permission VALUES("1734","1","newsletter_edit_dangkynhantin");
INSERT INTO table_permission VALUES("1731","1","tags_delete_tuyen-dung");
INSERT INTO table_permission VALUES("1730","1","tags_edit_tuyen-dung");
INSERT INTO table_permission VALUES("1729","1","tags_add_tuyen-dung");
INSERT INTO table_permission VALUES("1728","1","tags_man_tuyen-dung");
INSERT INTO table_permission VALUES("1727","1","tags_delete_dich-vu");
INSERT INTO table_permission VALUES("1726","1","tags_edit_dich-vu");
INSERT INTO table_permission VALUES("1725","1","tags_add_dich-vu");
INSERT INTO table_permission VALUES("1724","1","tags_man_dich-vu");
INSERT INTO table_permission VALUES("1723","1","tags_delete_tin-tuc");
INSERT INTO table_permission VALUES("1722","1","tags_edit_tin-tuc");
INSERT INTO table_permission VALUES("1902","2","pushOnesignal_man");
INSERT INTO table_permission VALUES("1901","2","static_update_footer");
INSERT INTO table_permission VALUES("1900","2","static_update_lienhe");
INSERT INTO table_permission VALUES("1899","2","newsletter_delete_dangkybaogia");
INSERT INTO table_permission VALUES("1898","2","newsletter_edit_dangkybaogia");
INSERT INTO table_permission VALUES("1897","2","newsletter_add_dangkybaogia");
INSERT INTO table_permission VALUES("1896","2","newsletter_man_dangkybaogia");
INSERT INTO table_permission VALUES("1895","2","tags_delete_dich-vu");
INSERT INTO table_permission VALUES("1894","2","tags_edit_dich-vu");
INSERT INTO table_permission VALUES("1893","2","tags_add_dich-vu");
INSERT INTO table_permission VALUES("1892","2","tags_man_dich-vu");
INSERT INTO table_permission VALUES("1891","2","tags_delete_san-pham");
INSERT INTO table_permission VALUES("1890","2","tags_edit_san-pham");
INSERT INTO table_permission VALUES("1889","2","tags_add_san-pham");
INSERT INTO table_permission VALUES("1888","2","tags_man_san-pham");
INSERT INTO table_permission VALUES("1887","2","order_man");
INSERT INTO table_permission VALUES("1886","2","photo_man_photo_doitac");
INSERT INTO table_permission VALUES("1885","2","photo_man_photo_video");
INSERT INTO table_permission VALUES("1884","2","photo_man_photo_social");
INSERT INTO table_permission VALUES("1883","2","photo_man_photo_slide");
INSERT INTO table_permission VALUES("1881","2","photo_photo_static_watermark-news");
INSERT INTO table_permission VALUES("1882","2","photo_photo_static_popup");
INSERT INTO table_permission VALUES("1880","2","photo_photo_static_watermark");
INSERT INTO table_permission VALUES("1879","2","news_delete_chinh-sach");
INSERT INTO table_permission VALUES("1878","2","news_edit_chinh-sach");
INSERT INTO table_permission VALUES("1721","1","tags_add_tin-tuc");
INSERT INTO table_permission VALUES("1720","1","tags_man_tin-tuc");
INSERT INTO table_permission VALUES("1719","1","tags_delete_san-pham");
INSERT INTO table_permission VALUES("1718","1","tags_edit_san-pham");
INSERT INTO table_permission VALUES("1717","1","tags_add_san-pham");
INSERT INTO table_permission VALUES("1716","1","tags_man_san-pham");
INSERT INTO table_permission VALUES("1715","1","order_delete");
INSERT INTO table_permission VALUES("1714","1","order_edit");
INSERT INTO table_permission VALUES("1713","1","order_man");
INSERT INTO table_permission VALUES("1712","1","photo_delete_photo_doitac");
INSERT INTO table_permission VALUES("1711","1","photo_edit_photo_doitac");
INSERT INTO table_permission VALUES("1710","1","photo_add_photo_doitac");
INSERT INTO table_permission VALUES("1709","1","photo_man_photo_doitac");
INSERT INTO table_permission VALUES("1708","1","photo_delete_photo_video");
INSERT INTO table_permission VALUES("1707","1","photo_edit_photo_video");
INSERT INTO table_permission VALUES("1706","1","photo_add_photo_video");
INSERT INTO table_permission VALUES("1705","1","photo_man_photo_video");
INSERT INTO table_permission VALUES("1704","1","photo_delete_photo_social");
INSERT INTO table_permission VALUES("1703","1","photo_edit_photo_social");
INSERT INTO table_permission VALUES("1702","1","photo_add_photo_social");
INSERT INTO table_permission VALUES("1701","1","photo_man_photo_social");
INSERT INTO table_permission VALUES("1698","1","photo_add_photo_slide-product");
INSERT INTO table_permission VALUES("1700","1","photo_delete_photo_slide-product");
INSERT INTO table_permission VALUES("1699","1","photo_edit_photo_slide-product");
INSERT INTO table_permission VALUES("1697","1","photo_man_photo_slide-product");
INSERT INTO table_permission VALUES("1696","1","photo_delete_photo_slide");
INSERT INTO table_permission VALUES("1694","1","photo_add_photo_slide");
INSERT INTO table_permission VALUES("1695","1","photo_edit_photo_slide");
INSERT INTO table_permission VALUES("1693","1","photo_man_photo_slide");
INSERT INTO table_permission VALUES("1692","1","photo_photo_static_popup");
INSERT INTO table_permission VALUES("1691","1","photo_photo_static_video");
INSERT INTO table_permission VALUES("1689","1","photo_photo_static_watermark");
INSERT INTO table_permission VALUES("1690","1","photo_photo_static_watermark-news");
INSERT INTO table_permission VALUES("1688","1","photo_photo_static_favicon");
INSERT INTO table_permission VALUES("1687","1","photo_photo_static_logo");
INSERT INTO table_permission VALUES("1686","1","photo_photo_static_banner");
INSERT INTO table_permission VALUES("1685","1","photo_photo_static_background");
INSERT INTO table_permission VALUES("1684","1","news_delete_hinh-thuc-thanh-toan");
INSERT INTO table_permission VALUES("1683","1","news_edit_hinh-thuc-thanh-toan");
INSERT INTO table_permission VALUES("1682","1","news_add_hinh-thuc-thanh-toan");
INSERT INTO table_permission VALUES("1681","1","news_man_hinh-thuc-thanh-toan");
INSERT INTO table_permission VALUES("1680","1","news_delete_chinh-sach");
INSERT INTO table_permission VALUES("1679","1","news_edit_chinh-sach");
INSERT INTO table_permission VALUES("1678","1","news_add_chinh-sach");
INSERT INTO table_permission VALUES("1677","1","news_man_chinh-sach");
INSERT INTO table_permission VALUES("1676","1","news_delete_tuyen-dung");
INSERT INTO table_permission VALUES("1675","1","news_edit_tuyen-dung");
INSERT INTO table_permission VALUES("1674","1","news_add_tuyen-dung");
INSERT INTO table_permission VALUES("1673","1","news_man_tuyen-dung");
INSERT INTO table_permission VALUES("1672","1","news_delete_photo_tin-tuc");
INSERT INTO table_permission VALUES("1671","1","news_edit_photo_tin-tuc");
INSERT INTO table_permission VALUES("1670","1","news_add_photo_tin-tuc");
INSERT INTO table_permission VALUES("1669","1","news_man_photo_tin-tuc");
INSERT INTO table_permission VALUES("1668","1","news_delete_tin-tuc");
INSERT INTO table_permission VALUES("1667","1","news_edit_tin-tuc");
INSERT INTO table_permission VALUES("1666","1","news_add_tin-tuc");
INSERT INTO table_permission VALUES("1665","1","news_man_tin-tuc");
INSERT INTO table_permission VALUES("1664","1","news_delete_sub_tin-tuc");
INSERT INTO table_permission VALUES("1663","1","news_edit_sub_tin-tuc");
INSERT INTO table_permission VALUES("1662","1","news_add_sub_tin-tuc");
INSERT INTO table_permission VALUES("1661","1","news_man_sub_tin-tuc");
INSERT INTO table_permission VALUES("1660","1","news_delete_item_tin-tuc");
INSERT INTO table_permission VALUES("1659","1","news_edit_item_tin-tuc");
INSERT INTO table_permission VALUES("1658","1","news_add_item_tin-tuc");
INSERT INTO table_permission VALUES("1657","1","news_man_item_tin-tuc");
INSERT INTO table_permission VALUES("1656","1","news_delete_cat_tin-tuc");
INSERT INTO table_permission VALUES("1655","1","news_edit_cat_tin-tuc");
INSERT INTO table_permission VALUES("1654","1","news_add_cat_tin-tuc");
INSERT INTO table_permission VALUES("1651","1","news_edit_list_tin-tuc");
INSERT INTO table_permission VALUES("1652","1","news_delete_list_tin-tuc");
INSERT INTO table_permission VALUES("1653","1","news_man_cat_tin-tuc");
INSERT INTO table_permission VALUES("1650","1","news_add_list_tin-tuc");
INSERT INTO table_permission VALUES("1649","1","news_man_list_tin-tuc");
INSERT INTO table_permission VALUES("1648","1","product_delete_photo_thu-vien-anh");
INSERT INTO table_permission VALUES("1646","1","product_add_photo_thu-vien-anh");
INSERT INTO table_permission VALUES("1647","1","product_edit_photo_thu-vien-anh");
INSERT INTO table_permission VALUES("1645","1","product_man_photo_thu-vien-anh");
INSERT INTO table_permission VALUES("1644","1","product_delete_thu-vien-anh");
INSERT INTO table_permission VALUES("1643","1","product_edit_thu-vien-anh");
INSERT INTO table_permission VALUES("1642","1","product_add_thu-vien-anh");
INSERT INTO table_permission VALUES("1641","1","product_man_thu-vien-anh");
INSERT INTO table_permission VALUES("1640","1","export_man_san-pham");
INSERT INTO table_permission VALUES("1639","1","import_deleteImages_san-pham");
INSERT INTO table_permission VALUES("1638","1","import_editImages_san-pham");
INSERT INTO table_permission VALUES("1637","1","import_man_san-pham");
INSERT INTO table_permission VALUES("1636","1","product_delete_photo_san-pham");
INSERT INTO table_permission VALUES("1635","1","product_edit_photo_san-pham");
INSERT INTO table_permission VALUES("1634","1","product_add_photo_san-pham");
INSERT INTO table_permission VALUES("1633","1","product_man_photo_san-pham");
INSERT INTO table_permission VALUES("1632","1","comment_man_product_san-pham");
INSERT INTO table_permission VALUES("1631","1","product_delete_san-pham");
INSERT INTO table_permission VALUES("1630","1","product_edit_san-pham");
INSERT INTO table_permission VALUES("1629","1","product_add_san-pham");
INSERT INTO table_permission VALUES("1628","1","product_man_san-pham");
INSERT INTO table_permission VALUES("1627","1","product_delete_size_san-pham");
INSERT INTO table_permission VALUES("1626","1","product_edit_size_san-pham");
INSERT INTO table_permission VALUES("1625","1","product_add_size_san-pham");
INSERT INTO table_permission VALUES("1624","1","product_man_size_san-pham");
INSERT INTO table_permission VALUES("1623","1","product_delete_color_san-pham");
INSERT INTO table_permission VALUES("1622","1","product_edit_color_san-pham");
INSERT INTO table_permission VALUES("1621","1","product_add_color_san-pham");
INSERT INTO table_permission VALUES("1620","1","product_man_color_san-pham");
INSERT INTO table_permission VALUES("1619","1","product_delete_brand_san-pham");
INSERT INTO table_permission VALUES("1618","1","product_edit_brand_san-pham");
INSERT INTO table_permission VALUES("1617","1","product_add_brand_san-pham");
INSERT INTO table_permission VALUES("1616","1","product_man_brand_san-pham");
INSERT INTO table_permission VALUES("1614","1","product_edit_sub_san-pham");
INSERT INTO table_permission VALUES("1615","1","product_delete_sub_san-pham");
INSERT INTO table_permission VALUES("1613","1","product_add_sub_san-pham");
INSERT INTO table_permission VALUES("1612","1","product_man_sub_san-pham");
INSERT INTO table_permission VALUES("1611","1","product_delete_item_san-pham");
INSERT INTO table_permission VALUES("1610","1","product_edit_item_san-pham");
INSERT INTO table_permission VALUES("1609","1","product_add_item_san-pham");
INSERT INTO table_permission VALUES("1608","1","product_man_item_san-pham");
INSERT INTO table_permission VALUES("1606","1","product_edit_cat_san-pham");
INSERT INTO table_permission VALUES("1607","1","product_delete_cat_san-pham");
INSERT INTO table_permission VALUES("1605","1","product_add_cat_san-pham");
INSERT INTO table_permission VALUES("1604","1","product_man_cat_san-pham");
INSERT INTO table_permission VALUES("1603","1","product_delete_list_san-pham");
INSERT INTO table_permission VALUES("1877","2","news_add_chinh-sach");
INSERT INTO table_permission VALUES("1876","2","news_man_chinh-sach");
INSERT INTO table_permission VALUES("1875","2","comment_man_news_tin-tuc");
INSERT INTO table_permission VALUES("1874","2","news_man_tin-tuc");
INSERT INTO table_permission VALUES("1873","2","product_delete_thu-vien-anh");
INSERT INTO table_permission VALUES("1872","2","product_edit_thu-vien-anh");
INSERT INTO table_permission VALUES("1871","2","product_add_thu-vien-anh");
INSERT INTO table_permission VALUES("1602","1","product_edit_list_san-pham");
INSERT INTO table_permission VALUES("1601","1","product_add_list_san-pham");
INSERT INTO table_permission VALUES("1600","1","product_man_list_san-pham");
INSERT INTO table_permission VALUES("1746","1","static_update_slogan");
INSERT INTO table_permission VALUES("1747","1","static_update_lienhe");
INSERT INTO table_permission VALUES("1748","1","static_update_footer");
INSERT INTO table_permission VALUES("1749","1","pushOnesignal_man");
INSERT INTO table_permission VALUES("1870","2","product_man_thu-vien-anh");
INSERT INTO table_permission VALUES("1869","2","export_man_san-pham");
INSERT INTO table_permission VALUES("1868","2","import_man_san-pham");
INSERT INTO table_permission VALUES("1866","2","product_man_san-pham");
INSERT INTO table_permission VALUES("1867","2","comment_man_product_san-pham");


DROP TABLE IF EXISTS table_permission_group;

CREATE TABLE `table_permission_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_photo;

CREATE TABLE `table_photo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `link` mediumtext DEFAULT NULL,
  `link_video` mediumtext DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `act` varchar(30) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `link2` varchar(255) DEFAULT NULL,
  `loaidieuhuong` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product;

CREATE TABLE `table_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `id_item` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `id_sub` int(11) DEFAULT 0,
  `id_brand` int(11) DEFAULT 0,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `regular_price` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `sale_price` double DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product_brand;

CREATE TABLE `table_product_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product_cat;

CREATE TABLE `table_product_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product_item;

CREATE TABLE `table_product_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product_list;

CREATE TABLE `table_product_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product_sale;

CREATE TABLE `table_product_sale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `id_color` int(11) DEFAULT 0,
  `id_size` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product_sub;

CREATE TABLE `table_product_sub` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_list` int(11) DEFAULT 0,
  `id_cat` int(11) DEFAULT 0,
  `id_item` int(11) DEFAULT 0,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_product_tags;

CREATE TABLE `table_product_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `id_tags` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50331677 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_pushonesignal;

CREATE TABLE `table_pushonesignal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_seo;

CREATE TABLE `table_seo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `com` varchar(30) DEFAULT NULL,
  `act` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `titlevi` mediumtext DEFAULT NULL,
  `keywordsvi` mediumtext DEFAULT NULL,
  `descriptionvi` mediumtext DEFAULT NULL,
  `titleen` mediumtext DEFAULT NULL,
  `keywordsen` mediumtext DEFAULT NULL,
  `descriptionen` mediumtext DEFAULT NULL,
  `schemavi` text DEFAULT NULL,
  `schemaen` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



DROP TABLE IF EXISTS table_seopage;

CREATE TABLE `table_seopage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `titlevi` mediumtext DEFAULT NULL,
  `keywordsvi` mediumtext DEFAULT NULL,
  `descriptionvi` mediumtext DEFAULT NULL,
  `titleen` mediumtext DEFAULT NULL,
  `keywordsen` mediumtext DEFAULT NULL,
  `descriptionen` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;



DROP TABLE IF EXISTS table_setting;

CREATE TABLE `table_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `options` mediumtext DEFAULT NULL,
  `mastertool` mediumtext DEFAULT NULL,
  `headjs` mediumtext DEFAULT NULL,
  `bodyjs` mediumtext DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `addressvi` varchar(255) DEFAULT NULL,
  `addressen` varchar(255) DEFAULT NULL,
  `analytics` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_setting VALUES("1","{\"mailertype\":\"1\",\"ip_host\":\"1.1.1.1\",\"port_host\":\"25\",\"secure_host\":\"tls\",\"email_host\":\"a@acb.com\",\"password_host\":\"aaa\",\"host_gmail\":\"smtp.gmail.com\",\"port_gmail\":\"587\",\"secure_gmail\":\"tls\",\"email_gmail\":\"autosendnoreply01@gmail.com\",\"password_gmail\":\"ntfocjyshxgoxqbg\",\"lang_default\":\"vi\",\"address\":\"T\\u1ea7ng 3 s\\u1ed1 102 Nguy\\u1ec5n Ho\\u00e0ng, M\\u1ef9 \\u0110\\u00ecnh 2, Nam T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\",\"email\":\"shinkiplastic@gmail.com\",\"hotline\":\"0384211418\",\"phone\":\"0384211418 \",\"zalo\":\"0384211418 \",\"oaidzalo\":\"\",\"website\":\"https:\\/\\/shinkiplastic.com\",\"fanpage\":\"https:\\/\\/www.facebook.com\\/facebook\\/\",\"toado\":\"\",\"toado_iframe\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3919.4481760094527!2d106.68480041483649!3d10.776945462130913!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3b27d8a7fd%3A0xdb0d92470911a699!2sThe%20Box%20Market!5e0!3m2!1svi!2s!4v1589339784678!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" frameborder=\\\"0\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" aria-hidden=\\\"false\\\" tabindex=\\\"0\\\"><\\/iframe>\",\"coords\":\"\",\"coords_iframe\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3918.0884272321405!2d107.21735487445267!3d10.880878761618789!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174fe5d1ff320a1%3A0x57cc6cfb7d8b64ae!2zQ8O0bmcgVHkgVG5oaCBOaOG7sWEgU2hpbmtp!5e0!3m2!1svi!2s!4v1700382819398!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"link_googlemaps\":\"https:\\/\\/maps.app.goo.gl\\/iPrE7ZBzDbXnvHZR7\",\"worktime\":\"8h - 17h \"}","","","","CÔNG TY TNHH NHỰA SHINKI","name company"," 319/4/1 Quốc lộ 56, Ấp Tân Phong, Xã Hàng Gòn, Thành phố Long Khánh, Đồng Nai","address en","");


DROP TABLE IF EXISTS table_size;

CREATE TABLE `table_size` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `namevi` varchar(255) DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_static;

CREATE TABLE `table_static` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `file_attach` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_static VALUES("1","may-dun-can-san-xuat-mang-pe-1615.png","","{\"p\":\"may-dun-can-san-xuat-mang-pe-1615.png\",\"w\":960,\"h\":632,\"m\":\"image\\/png\"}","cong-ty-tnhh-nhua-shinki","","","&lt;p&gt;&lt;!-- x-tinymce/html --&gt;&lt;/p&gt;\n\n&lt;h2&gt;&lt;span style=&quot;font-size:22px;&quot;&gt;&lt;span style=&quot;color:#0000cc;&quot;&gt;&lt;strong&gt;Công ty nhựa Shinki: Chất lượng và uy tín là đặc điểm nổi bật&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;\n\n&lt;h3&gt;Cung cấp sản phẩm nhựa PVC chất lượng cao&lt;/h3&gt;\n\n&lt;p&gt;Công ty nhựa Shinki tự hào là đơn vị cung cấp các sản phẩm nhựa PVC chất lượng cao cho nhiều ngành công nghiệp khác nhau. Với quy trình sản xuất hiện đại và sử dụng nguyên liệu nhập khẩu từ các thương hiệu nổi tiếng, sản phẩm nhựa PVC của công ty luôn đảm bảo độ bền, tính linh hoạt và đáp ứng được các yêu cầu khắt khe của khách hàng.&lt;/p&gt;\n\n&lt;h4&gt;Ứng dụng của nhựa PVC trong cuộc sống&lt;/h4&gt;\n\n&lt;p&gt;Nhựa PVC (Polyvinyl Chloride) là một loại nhựa tổng hợp được sử dụng rộng rãi trong cuộc sống hàng ngày. Với tính năng chống ăn mòn, chịu được áp lực và độ bền cao, nhựa PVC được sử dụng để sản xuất các sản phẩm như ống nước, ống thoát nước, vật liệu xây dựng, đồ dùng gia dụng và nhiều ứng dụng khác.&lt;/p&gt;\n\n&lt;h4&gt;Lợi ích của việc sử dụng sản phẩm nhựa PVC của công ty nhựa Shinki&lt;/h4&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Đảm bảo chất lượng: Sản phẩm nhựa PVC của công ty nhựa Shinki luôn đạt tiêu chuẩn chất lượng cao và đáp ứng được các yêu cầu kỹ thuật của khách hàng.&lt;/li&gt;\n	&lt;li&gt;Giá cả cạnh tranh: Với quy trình sản xuất hiệu quả và sử dụng nguyên liệu nhập khẩu trực tiếp, công ty nhựa Shinki cam kết cung cấp sản phẩm với giá cả cạnh tranh nhất trên thị trường.&lt;/li&gt;\n	&lt;li&gt;Dịch vụ tận tâm: Công ty luôn đặt lợi ích của khách hàng lên hàng đầu và cam kết cung cấp dịch vụ tốt nhất, đảm bảo sự hài lòng của khách hàng.&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;h3&gt;Cung cấp sản phẩm nhựa PP đa dạng và chất lượng cao&lt;/h3&gt;\n\n&lt;p&gt;Ngoài sản phẩm nhựa PVC, công ty nhựa Shinki còn cung cấp các sản phẩm nhựa PP (Polypropylene) với đa dạng mẫu mã và chất lượng cao. Sản phẩm nhựa PP của công ty được sử dụng trong nhiều ngành công nghiệp như đóng gói, in ấn, sản xuất túi xách, bao bì và nhiều ứng dụng khác.&lt;/p&gt;\n\n&lt;h4&gt;Tính năng và ứng dụng của nhựa PP&lt;/h4&gt;\n\n&lt;p&gt;Nhựa PP là một loại nhựa tổng hợp có tính năng chống thấm nước, chịu được nhiệt độ cao và độ bền cơ học tốt. Với những tính chất này, nhựa PP được sử dụng rộng rãi trong việc sản xuất các sản phẩm như túi xách, bao bì, chai lọ, đồ dùng gia dụng và nhiều ứng dụng khác.&lt;/p&gt;\n\n&lt;h4&gt;Lợi ích khi sử dụng sản phẩm nhựa PP của công ty nhựa Shinki&lt;/h4&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Đa dạng mẫu mã: Công ty nhựa Shinki cung cấp các sản phẩm nhựa PP với nhiều mẫu mã và kích thước khác nhau, đáp ứng được nhu cầu đa dạng của khách hàng.&lt;/li&gt;\n	&lt;li&gt;Chất lượng cao: Sản phẩm nhựa PP của công ty luôn đảm bảo chất lượng và đáp ứng được các yêu cầu kỹ thuật của khách hàng.&lt;/li&gt;\n	&lt;li&gt;Giá cả hợp lý: Với quy trình sản xuất hiệu quả và sử dụng nguyên liệu nhập khẩu trực tiếp, công ty nhựa Shinki cam kết cung cấp sản phẩm với giá cả hợp lý nhất trên thị trường.&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;h3&gt;Cung cấp ruột album ảnh chất lượng cao&lt;/h3&gt;\n\n&lt;p&gt;Ngoài các sản phẩm nhựa PVC và PP, công ty nhựa Shinki còn cung cấp ruột album ảnh với chất lượng cao và đa dạng mẫu mã. Ruột album ảnh của công ty được sản xuất từ những nguyên liệu chất lượng và được gia công tỉ mỉ để đảm bảo sự hoàn hảo cho các sản phẩm album ảnh.&lt;/p&gt;\n\n&lt;h4&gt;Ứng dụng của ruột album ảnh&lt;/h4&gt;\n\n&lt;p&gt;Ruột album ảnh là một phần không thể thiếu trong việc sản xuất album ảnh chuyên nghiệp. Với tính năng chống thấm nước, bền bỉ và độ bám dính tốt, ruột album ảnh của công ty nhựa Shinki đảm bảo sự an toàn và độ bền cho các sản phẩm album ảnh.&lt;/p&gt;\n\n&lt;h4&gt;&lt;span style=&quot;color:#e67e22;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:20px;&quot;&gt;Lợi ích khi sử dụng ruột album ảnh của công ty nhựa Shinki&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;\n\n&lt;ul&gt;\n	&lt;li&gt;Chất lượng cao: Ruột album ảnh của công ty luôn được sản xuất từ những nguyên liệu chất lượng và được kiểm tra kỹ lưỡng để đảm bảo chất lượng tốt nhất.&lt;/li&gt;\n	&lt;li&gt;Đa dạng mẫu mã: Công ty cung cấp ruột album ảnh với nhiều mẫu mã và kích thước khác nhau, đáp ứng được nhu cầu đa dạng của khách hàng.&lt;/li&gt;\n	&lt;li&gt;Dịch vụ tận tâm: Công ty luôn cam kết cung cấp dịch vụ tốt nhất và hỗ trợ khách hàng trong quá trình sử dụng sản phẩm.&lt;/li&gt;\n&lt;/ul&gt;\n\n&lt;h2&gt;&lt;strong&gt;Kết luận&lt;/strong&gt;&lt;/h2&gt;\n\n&lt;p&gt;Với sự chuyên nghiệp, kinh nghiệm và cam kết đem lại chất lượng cao cho khách hàng, công ty nhựa Shinki đã khẳng định được vị thế của mình trong ngành sản xuất nhựa. Qua bài viết này, hy vọng bạn đã hiểu rõ hơn về công ty và các sản phẩm của công ty nhựa Shinki. Nếu bạn đang có nhu cầu sử dụng các sản phẩm nhựa PVC, PP hoặc ruột album ảnh, hãy liên hệ với công ty nhựa Shinki để được tư vấn và hỗ trợ tốt nhất.&lt;/p&gt;\n","","Công ty nhựa Shinki là một trong những công ty hàng đầu trong lĩnh vực sản xuất và cung cấp các sản phẩm nhựa PVC, PP và ruột album ảnh. Với hơn 10 năm kinh nghiệm và sự chuyên nghiệp, công ty đã khẳng định được vị thế của mình trên thị trường và trở thành đối tác tin cậy của nhiều doanh nghiệp trong và ngoài nước.","","CÔNG TY TNHH NHỰA SHINKI","","gioi-thieu","hienthi","1699926734","1700386628","");
INSERT INTO table_static VALUES("2","","","","cong-ty-tnhh-nhua-shinki","","","&lt;p&gt;Địa chỉ: 319/4/1 Quốc lộ 56, Ấp Tân Phong, Xã Hàng Gòn, Thành phố Long Khánh, Tinht Đồng Nai&lt;/p&gt;\n\n&lt;p&gt;Hotline: 0384.211.418 &lt;/p&gt;\n\n&lt;p&gt;Mail: sale@shinkiplastic.com&lt;/p&gt;\n\n&lt;p&gt;Website: shinkiplastic.com&lt;/p&gt;\n","","","","Công ty tnhh nhựa shinki","","footer","hienthi","1699932627","1700410729","");
INSERT INTO table_static VALUES("3","","","","da-dang-mau-ma-chat-luong-cao-giao-hang-nhanh-chong","","","","","","","Đa dạng mẫu mã - chất lượng cao - giao hàng nhanh chóng","","slogan","hienthi","1699946736","0","");
INSERT INTO table_static VALUES("4","","","","uy-tin-chuyen-nghiep-gia-re","","","","","","","Uy tín - chuyên nghiệp - giá rẻ","","khauhieu","hienthi","1699947003","0","");
INSERT INTO table_static VALUES("5","","","","cong-ty-tnhh-nhua-shinki","","","","","","","Công Ty TNHH Nhựa Shinki","","copyright","hienthi","1699953427","0","");
INSERT INTO table_static VALUES("6","","","","","","","&lt;p&gt;&lt;span style=&quot;font-size:28px;&quot;&gt;&lt;span style=&quot;color:#000099;&quot;&gt;&lt;strong&gt;CÔNG TY TNHH NHỰA SHINKI&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;Địa chỉ: 319/4/1 Quốc lộ 56, Ấp Tân Phong, Xã Hàng Gòn, Thành phố Long Khánh, Tinht Đồng Nai&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;Hotline: 0384.211.418 &lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;Mail: sale@shinkiplastic.com&lt;/span&gt;&lt;/p&gt;\n\n&lt;p&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;Website: shinkiplastic.com&lt;/span&gt;&lt;/p&gt;\n","","","","","","lienhe","hienthi","1700386365","1700410711","");


DROP TABLE IF EXISTS table_tags;

CREATE TABLE `table_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `options` mediumtext DEFAULT NULL,
  `slugvi` varchar(255) DEFAULT NULL,
  `slugen` varchar(255) DEFAULT NULL,
  `contenten` mediumtext DEFAULT NULL,
  `contentvi` mediumtext DEFAULT NULL,
  `descen` mediumtext DEFAULT NULL,
  `descvi` mediumtext DEFAULT NULL,
  `nameen` varchar(255) DEFAULT NULL,
  `namevi` varchar(255) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT 0,
  `date_updated` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



DROP TABLE IF EXISTS table_user;

CREATE TABLE `table_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_permission` int(11) DEFAULT 0,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `confirm_code` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `fullname` varchar(225) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 0,
  `login_session` varchar(255) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role` tinyint(1) DEFAULT 1,
  `secret_key` varchar(255) DEFAULT NULL,
  `birthday` int(11) DEFAULT 0,
  `numb` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_user VALUES("1","0","admin","bf6106f953ad2e052a0e2cbfec41bd2f","","","","","","","1","30a63143ce03dd4c2654f2165d265849","b03d7d3a59b7b6b6b5ead8baa3ea03c5","1700474547","hienthi","3","30a63143ce03dd4c2654f2165d265849","1608051600","0");


DROP TABLE IF EXISTS table_user_limit;

CREATE TABLE `table_user_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_ip` varchar(50) NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `attempt_time` int(11) NOT NULL,
  `locked_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_user_limit VALUES("1","::1","0","1629013204","0");
INSERT INTO table_user_limit VALUES("2","113.161.89.144","0","1690606608","0");
INSERT INTO table_user_limit VALUES("3","222.253.99.178","0","1691174801","0");
INSERT INTO table_user_limit VALUES("4","113.161.88.45","0","1692071697","0");
INSERT INTO table_user_limit VALUES("5","103.199.33.177","0","1700463960","0");


DROP TABLE IF EXISTS table_user_log;

CREATE TABLE `table_user_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT 0,
  `ip` varchar(16) DEFAULT '0.0.0.0',
  `timelog` int(11) DEFAULT 0,
  `user_agent` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_user_log VALUES("1","1","::1","1625547124","Mozill?B\\\0\0?U\0\0\0\0\0\"\0\0\0\0\0\0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36");
INSERT INTO table_user_log VALUES("2","1","::1","1625553373","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36");
INSERT INTO table_user_log VALUES("3","1","::1","1628736573","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36");
INSERT INTO table_user_log VALUES("4","1","::1","1629013208","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36");
INSERT INTO table_user_log VALUES("5","1","::1","1629079386","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36");
INSERT INTO table_user_log VALUES("6","1","::1","1629528263","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36");
INSERT INTO table_user_log VALUES("7","1","::1","1630326487","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36");
INSERT INTO table_user_log VALUES("8","1","::1","1633841684","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36");
INSERT INTO table_user_log VALUES("9","1","::1","1635838923","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36");
INSERT INTO table_user_log VALUES("10","1","::1","1640140722","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("11","1","::1","1640145123","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("12","1","::1","1640161926","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("13","1","::1","1640230179","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("14","1","::1","1640241909","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("15","1","::1","1640242112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("16","1","::1","1640263860","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("17","1","::1","1640264461","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("18","1","::1","1640312273","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("19","1","::1","1640317069","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("20","1","::1","1640324242","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("21","1","::1","1640917199","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("22","1","::1","1640921119","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("23","1","::1","1640921154","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("24","1","::1","1640921234","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("25","1","::1","1640921370","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("26","1","::1","1640921926","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("27","1","::1","1640922287","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("28","1","::1","1640922669","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("29","1","::1","1640922746","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("30","1","::1","1640922929","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("31","1","::1","1640922966","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("32","1","::1","1640923020","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("33","1","::1","1640923344","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("34","1","::1","1640923426","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("35","1","::1","1640923476","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("36","1","::1","1640923547","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("37","1","::1","1640923670","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("38","1","::1","1640925061","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("39","1","::1","1640925277","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("40","1","::1","1640925331","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("41","1","::1","1640925549","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("42","1","::1","1640926110","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("43","1","::1","1640928498","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("44","1","::1","1640928906","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("45","1","::1","1640929015","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("46","1","::1","1640929461","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("47","1","::1","1640929526","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("48","1","::1","1640929642","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("49","1","::1","1640929681","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("50","1","::1","1640930124","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("51","1","::1","1640930188","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("52","1","::1","1640930298","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("53","1","::1","1640930419","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("54","1","::1","1640930573","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("55","1","::1","1640930611","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("56","1","::1","1640930751","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("57","1","::1","1640930788","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("58","1","::1","1640930880","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("59","1","::1","1640931209","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("60","1","::1","1640931258","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("61","1","::1","1640931495","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("62","1","::1","1641087403","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("63","1","::1","1641087525","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("64","1","::1","1641088090","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("65","1","::1","1641088213","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("66","1","::1","1641092457","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("67","1","::1","1641092510","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("68","1","::1","1641093353","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("69","1","::1","1641094000","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("70","1","::1","1641096628","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("71","1","::1","1641096725","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("72","1","::1","1641097426","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("73","1","::1","1641097595","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("74","1","::1","1641098374","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("75","1","::1","1641098711","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("76","1","::1","1641100142","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("77","1","::1","1641101498","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("78","1","::1","1641102336","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("79","1","::1","1641102746","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("80","1","::1","1641102813","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("81","1","::1","1641102965","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("82","1","::1","1641104415","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("83","1","::1","1641104614","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("84","1","::1","1641104875","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("85","1","::1","1641105560","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("86","1","::1","1641105705","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("87","1","::1","1641115588","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("88","1","::1","1641117416","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("89","1","::1","1641117613","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("90","1","::1","1641117837","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("91","1","::1","1641118369","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("92","1","::1","1641121830","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("93","1","::1","1641121862","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("94","1","::1","1641123891","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("95","1","::1","1641123957","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("96","1","::1","1641124003","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("97","1","::1","1641124788","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("98","1","::1","1641124838","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("99","1","::1","1641125099","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("100","1","::1","1641125377","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("101","1","::1","1641127145","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("102","1","::1","1641129212","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("103","1","::1","1641132683","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("104","1","::1","1641174046","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("105","1","::1","1641176906","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("106","1","::1","1641177640","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("107","141","::1","1641184445","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("108","1","::1","1641187489","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("109","1","::1","1641189476","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36");
INSERT INTO table_user_log VALUES("110","1","::1","1641189644","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36");
INSERT INTO table_user_log VALUES("111","1","::1","1673665688","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("112","1","::1","1673665744","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("113","1","::1","1673669073","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("114","1","::1","1673918856","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("115","1","::1","1673931232","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("116","1","::1","1673935371","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("117","1","::1","1673946437","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("118","1","::1","1681703138","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("119","1","::1","1681705167","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("120","1","::1","1681712130","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("121","1","::1","1681805964","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("122","1","::1","1681891471","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("123","1","::1","1681892707","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("124","1","::1","1682311981","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("125","1","::1","1682317001","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("126","1","::1","1682391765","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("127","1","::1","1682405117","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("128","1","::1","1682415568","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("129","1","::1","1683257641","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("130","1","::1","1683270743","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("131","1","::1","1683527012","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("132","1","::1","1683953261","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("133","1","::1","1684814200","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("134","1","::1","1685068273","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("135","1","::1","1686022762","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("136","1","::1","1686027040","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("137","1","::1","1686031875","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("138","1","::1","1686276837","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("139","1","::1","1686291059","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("140","1","::1","1687252739","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("141","1","::1","1687502621","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("142","1","::1","1687578242","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("143","1","::1","1687751137","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("144","1","::1","1687762059","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("145","1","::1","1687767930","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("146","1","::1","1689828458","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("147","1","::1","1689836684","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("148","1","::1","1689901531","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("149","1","::1","1689992529","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("150","1","::1","1690160152","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("151","1","::1","1690174394","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("152","1","::1","1690190201","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("153","1","::1","1690248159","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("154","1","::1","1690273938","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("155","1","::1","1690429730","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("156","1","::1","1690438402","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("157","1","::1","1690510236","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("158","1","::1","1690525035","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("159","1","::1","1690592608","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("160","1","113.161.89.144","1690606610","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("161","1","14.187.25.112","1690823813","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("162","1","113.161.89.144","1690947780","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("163","1","222.253.99.178","1690993937","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("164","1","113.161.89.144","1691036514","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("165","1","113.161.89.144","1691047147","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("166","1","222.253.99.178","1691169447","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("167","1","222.253.99.178","1691174808","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("168","1","113.161.89.144","1691458101","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("169","1","113.161.89.144","1691718089","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("170","1","113.161.89.144","1692005496","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("171","1","222.253.99.178","1692027423","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("172","1","113.161.88.45","1692071861","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("173","1","113.161.88.45","1692080679","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("174","1","113.161.89.144","1692156726","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("175","1","113.161.89.144","1692170032","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("176","1","113.161.89.144","1692239469","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("177","1","113.161.89.144","1692245991","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("178","1","113.161.89.144","1692255356","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("179","1","222.253.99.178","1692272947","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("180","1","113.161.89.144","1692328597","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("181","1","113.161.89.144","1692332859","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("182","1","113.161.89.144","1692670317","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("183","1","14.226.223.188","1693687632","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("184","1","113.161.89.144","1693789538","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("185","1","113.161.89.144","1693968311","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("186","1","113.161.89.144","1696320855","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("187","1","113.161.89.144","1696572821","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("188","1","113.161.89.144","1696912304","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("189","1","113.161.89.144","1698370257","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("190","1","113.161.89.144","1698372014","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("191","1","113.161.89.144","1698372097","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("192","1","113.161.89.144","1698635233","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("193","1","113.161.89.144","1698647966","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("194","1","113.161.84.147","1698747446","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("195","1","113.161.89.144","1698807081","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("196","1","113.185.73.141","1698811749","Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Mobile/15E148 Safari/604.1");
INSERT INTO table_user_log VALUES("197","1","113.185.73.141","1698813172","Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Mobile/15E148 Safari/604.1");
INSERT INTO table_user_log VALUES("198","1","172.225.56.42","1698813262","Mozilla/5.0 (iPhone; CPU iPhone OS 17_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Mobile/15E148 Safari/604.1");
INSERT INTO table_user_log VALUES("199","1","113.161.89.144","1698819765","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("200","1","113.161.88.45","1698820918","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("201","1","113.161.88.45","1698821137","Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36");
INSERT INTO table_user_log VALUES("202","1","113.161.89.144","1698827228","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("203","1","::1","1699238494","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("204","1","::1","1699865907","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("205","1","::1","1699924125","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("206","1","::1","1699942515","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("207","1","::1","1699951091","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("208","1","113.161.89.144","1700019224","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("209","1","113.161.89.144","1700097497","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("210","1","113.161.89.144","1700097774","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("211","1","103.199.57.41","1700145027","Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36");
INSERT INTO table_user_log VALUES("212","1","103.199.32.142","1700271608","Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36");
INSERT INTO table_user_log VALUES("213","1","27.74.117.157","1700380863","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("214","1","1.54.222.123","1700381533","Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("215","1","103.199.57.98","1700401679","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("216","1","103.199.57.98","1700407138","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("217","1","103.199.33.177","1700463982","Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36");
INSERT INTO table_user_log VALUES("218","1","14.161.23.79","1700464859","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");
INSERT INTO table_user_log VALUES("219","1","103.199.32.164","1700466915","Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Mobile Safari/537.36");
INSERT INTO table_user_log VALUES("220","1","103.199.33.177","1700474426","Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36");


DROP TABLE IF EXISTS table_user_online;

CREATE TABLE `table_user_online` (
  `session` char(100) DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO table_user_online VALUES("k66iqj2dt8hrs7jkepk3vb8crd","1700474618","103.199.33.177");


DROP TABLE IF EXISTS table_ward;

CREATE TABLE `table_ward` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_city` int(11) DEFAULT 0,
  `id_district` int(11) DEFAULT 0,
  `districtid` int(11) DEFAULT 0,
  `wardcode` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `numb` int(11) DEFAULT 0,
  `status` varchar(255) DEFAULT NULL,
  `date_updated` int(11) DEFAULT 0,
  `date_created` int(11) DEFAULT 0,
  `ship_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11667 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



