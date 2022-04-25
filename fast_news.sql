create database if not exists fast_news;
use fast_news;

CREATE TABLE `accounts` (
 `id_acc` int(11) NOT NULL AUTO_INCREMENT,
 `username` varchar(32) CHARACTER SET utf8 NOT NULL,
 `password` varchar(32) CHARACTER SET utf8 NOT NULL,
 `display_name` varchar(50) CHARACTER SET utf8 NOT NULL,
 `email` text CHARACTER SET utf8 NOT NULL,
 `position` int(11) NOT NULL,
 `status` int(11) NOT NULL,
 `date_created` datetime NOT NULL,
 `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
 `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
 `url_avatar` text CHARACTER SET utf8 NOT NULL,
 PRIMARY KEY (`id_acc`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `accounts` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin Page', 'sang0906@gmail.com', '1', '0', '22-04-09 18:35:30', '0944577999', 'Huyện Long Phú, tỉnh Sóc Trăng', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJIbf-oYZmxMs8Uov3L-7UuaLhX84OFJkTg&usqp=CAU');
INSERT INTO `accounts` VALUES ('2', 'tranminhsang', '202cb962ac59075b964b07152d234b70', 'Trần Sang', 'sang1234@gmail.com', '0', '0', '22-04-14 08:55:47', '0998712399', 'Đường 3/2, quận Ninh Kiều, thành phố Cần Thơ', 'https://photo.techrum.vn/images/2021/05/25/Wallpapers-for-Windows-10-New-covercf6d0cc89b2d3a1e.jpg');
INSERT INTO `accounts` VALUES ('3', 'vovanthach', 'e10adc3949ba59abbe56e057f20f883e', 'Văn Thạch', 'vanthach@hg.com.vn', '0', '0', '22-04-18 11:49:35', '0164454789', 'Vị Thanh, tỉnh Hậu Giang', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHxksc6HyOQ6ujD082gmMqGydM2SfR1wDCaQ&usqp=CAU');

CREATE TABLE `categories` (
 `id_cate` int(11) NOT NULL AUTO_INCREMENT,
 `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
 `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
 `type` int(11) NOT NULL,
 `sort` int(11) NOT NULL,
 `parent_id` int(11) NOT NULL,
 `date_created` datetime NOT NULL,
 PRIMARY KEY (`id_cate`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `categories` VALUES ('10', 'Tin tức', 'tin-tuc', '1', '1', '0', '2022-04-09 19:46:29');
INSERT INTO `categories` VALUES ('12', 'Showbiz', 'showbiz', '2', '1', '10', '2022-04-11 19:59:20');
INSERT INTO `categories` VALUES ('17', 'Mẹo vặt', 'meo-vat', '2', '1', '10', '2022-04-09 14:47:17');
INSERT INTO `categories` VALUES ('18', 'Covid 19', 'covid-19', '2', '1', '10', '2022-04-18 20:31:06');
INSERT INTO `categories` VALUES ('19', 'Mẹo vặt mỗi ngày', 'meo-vat-moi-ngay', '3', '1', '17', '2022-04-19 06:25:40');
INSERT INTO `categories` VALUES ('21', 'Mẹo vặt mùa hè', 'meo-vat-mua-he', '3', '1', '0', '2022-04-19 15:58:58');
INSERT INTO `categories` VALUES ('22', 'Thể thao', 'the-thao', '1', '2', '0', '2022-04-19 22:24:38');
INSERT INTO `categories` VALUES ('23', 'Bóng đá', 'bong-da', '2', '2', '22', '2022-04-19 22:25:17');
INSERT INTO `categories` VALUES ('24', 'Esports', 'esports', '2', '2', '22', '2022-04-19 22:25:47');
INSERT INTO `categories` VALUES ('25', 'Bóng đá Việt Nam', 'bong-da-viet-nam', '3', '2', '23', '2022-04-19 22:26:15');
INSERT INTO `categories` VALUES ('26', 'Ngoại Hạng Anh', 'ngoai-hang-anh', '3', '2', '23', '2022-04-19 22:26:49');
INSERT INTO `categories` VALUES ('27', 'Liên Quân Mobile', 'lien-quan-mobile', '3', '2', '24', '2022-04-19 22:27:22');
INSERT INTO `categories` VALUES ('28', 'Liên Minh Huyền Thoại', 'lien-minh-huyen-thoai', '3', '2', '24', '2022-04-19 22:27:49');
INSERT INTO `categories` VALUES ('29', 'Lập trình', 'lap-trinh', '1', '3', '0', '2022-04-19 22:35:09');
INSERT INTO `categories` VALUES ('30', 'Lập trình Web', 'lap-trinh-web', '2', '3', '29', '2022-04-19 22:35:56');
INSERT INTO `categories` VALUES ('31', 'Lập trình nhúng IOT', 'lap-trinh-nhung-iot', '2', '3', '29', '2022-04-19 22:36:17');
INSERT INTO `categories` VALUES ('32', 'Blockchain', 'blockchain', '2', '3', '29', '2022-04-19 22:36:40');
INSERT INTO `categories` VALUES ('33', 'Lập trình Web với ngôn ngữ PHP', 'lap-trinh-web-voi-ngon-ngu-PHP', '3', '3', '30', '2022-04-19 22:37:27');
INSERT INTO `categories` VALUES ('34', 'Lập trình nhúng với C++', 'lap-trinh-nhung-voi-c', '3', '3', '31', '2022-04-19 22:38:44');
INSERT INTO `categories` VALUES ('35', 'Lập trình Blockchain với Python', 'lap-trinh-blockchain-voi-python', '3', '3', '32', '2022-04-19 22:39:20');
INSERT INTO `categories` VALUES ('36', 'Thống kê', 'thong-ke', '3', '1', '18', '2022-04-19 23:02:55');
INSERT INTO `categories` VALUES ('37', 'Showbiz Việt', 'showbiz-viet', '3', '1', '12', '2022-04-20 20:42:15');

CREATE TABLE `images` (
 `id_img` int(11) NOT NULL AUTO_INCREMENT,
 `url` text COLLATE utf8_unicode_ci NOT NULL,
 `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
 `size` int(11) NOT NULL,
 `date_uploaded` datetime NOT NULL,
 PRIMARY KEY (`id_img`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `images` VALUES ('1', 'https://www.vietnambooking.com/wp-content/uploads/2019/12/co-vu-bong-da-Viet-Nam.png', 'png', '448666', '2022-04-24 15:47:45');
INSERT INTO `images` VALUES ('2', 'https://teky.edu.vn/blog/wp-content/uploads/2020/12/lap-trinh-wed-la-gi.jpg', 'jpg', '85385', '2022-04-24 15:48:02');
INSERT INTO `images` VALUES ('3', 'https://tenten.vn/tin-tuc/wp-content/uploads/2022/03/Blockchain-1.jpg', 'jpg', '13232', '2022-04-24 15:46:24');
INSERT INTO `images` VALUES ('4', 'https://hocvienagile.com/wp-content/uploads/2021/07/1-lap-trinh-nhung-python-512x321.jpg', 'jpg', '41840', '2022-04-24 16:00:09');
INSERT INTO `images` VALUES ('5', 'https://cdn.vn.garenanow.com/web/kg/home/images/img-share.jpg', 'jpg', '236411', '2022-04-24 16:04:38');



CREATE TABLE `posts` (
 `id_post` int(11) NOT NULL AUTO_INCREMENT,
 `title` text COLLATE utf8_unicode_ci NOT NULL,
 `descr` text COLLATE utf8_unicode_ci NOT NULL,
 `url_thumb` text COLLATE utf8_unicode_ci NOT NULL,
 `slug` text COLLATE utf8_unicode_ci NOT NULL,
 `keywords` text COLLATE utf8_unicode_ci NOT NULL,
 `body` longtext COLLATE utf8_unicode_ci NOT NULL,
 `cate_1_id` int(11) NOT NULL,
 `cate_2_id` int(11) NOT NULL,
 `cate_3_id` int(11) NOT NULL,
 `author_id` int(11) NOT NULL,
 `status` int(11) NOT NULL,
 `view` int(11) NOT NULL,
 `date_posted` datetime NOT NULL,
 PRIMARY KEY (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `posts` VALUES ('1', '[Thống kê Covid 19]', '[Mô tả tình hình Covid hiện tại và thống kê số lượng ca nhiễm mới!]', 'https://file1.dangcongsan.vn/data/0/images/2021/06/14/chamsocytepv/covid-khauhieu.jpg?dpi=150&quality=100&w=680', '[thong-ke-covid-19]', '[covid, ca nhiễm mới, tình hình Covid]', '&lt;h1&gt;Ngày 19/4: Có 13.500 ca COVID-19 mới, số khỏi bệnh nhiều gấp gần 10 lần&lt;/h1&gt;

&lt;p&gt;19/04/2022 17:50 (GMT+7)&lt;/p&gt;

&lt;h2&gt;Bản tin phòng chống dịch COVID-19 ngày 19/4 của Bộ Y tế cho biết có 13.500 ca mắc mới COVID-19 tại 60 tỉnh, thành; Số ca khỏi bệnh trong ngày là hơn 124.600 ca, nhiều gấp gần 10 lần số mắc mới.&lt;/h2&gt;

&lt;h2&gt;Thông tin các ca mắc COVID-19 mới:&lt;/h2&gt;

&lt;p&gt;- Tính từ 16h ngày 18/4 đến 16h ngày 19/4, trên Hệ thống Quốc gia quản lý ca bệnh COVID-19 ghi nhận 13.500 ca nhiễm mới tất cả đều ghi nhận trong nước (tăng 1.489 ca so với ngày trước đó) tại 60 tỉnh, thành phố (có 10.231 ca trong cộng đồng).&lt;/p&gt;

&lt;p&gt;- Các tỉnh, thành phố ghi nhận ca bệnh như sau: Hà Nội (1.022), Phú Thọ (838), Yên Bái (605), Quảng Ninh (584), Nghệ An (571), TP. Hồ Chí Minh (557), Vĩnh Phúc (554), Hải Dương (531), Bắc Kạn (483), Đắk Lắk (478), Tuyên Quang (457), Thái Nguyên (432), Lào Cai (411), Bắc Giang (343), Cao Bằng (282), Gia Lai (281), Thái Bình (268), Bắc Ninh (244), Quảng Bình (231), Hưng Yên (231), Nam Định (230), Hòa Bình (220), Hà Giang (219), Đà Nẵng (206), Ninh Bình (191), Bà Rịa - Vũng Tàu (190), Sơn La (190), Quảng Nam (189), Điện Biên (179), Hà Tĩnh (176), Lai Châu (172), Tây Ninh (168), Lạng Sơn (166), Hải Phòng (146), Hà Nam (135), Quảng Trị (131), Quảng Ngãi (123), Bình Định (123), Cà Mau (121), Đắk Nông (115), Vĩnh Long (111), Bình Dương (75), Thanh Hóa (60), Bến Tre (53), Bình Phước (51), Thừa Thiên Huế (50), Phú Yên (48), Long An (44), Bình Thuận (40), Khánh Hòa (37), An Giang (32), Sóc Trăng (26), Bạc Liêu (22), Trà Vinh (19), Kon Tum (11), Đồng Nai (8 ), Cần Thơ (7), Đồng Tháp (6), Hậu Giang (4), Kiên Giang (3).&lt;/p&gt;

&lt;p&gt;- Các địa phương ghi nhận số ca nhiễm giảm nhiều nhất so với ngày trước đó: Lâm Đồng (-141), Yên Bái (-110), Hà Nội (-87).&lt;/p&gt;

&lt;p&gt;- Các địa phương ghi nhận số ca nhiễm tăng cao nhất so với ngày trước đó: Hải Dương (+257), TP. Hồ Chí Minh (+220), Đắk Lắk (+155).&lt;/p&gt;

&lt;p&gt;- Trung bình số ca nhiễm mới trong nước ghi nhận trong 07 ngày qua: 18.051 ca/ngày.&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://covid19.qltns.mediacdn.vn/354844073405468672/2022/4/19/ca-moi-19-16503654108851493469108-1650379868052-16503798688201322702015.jpeg&quot; style=&quot;height:230px; width:400px&quot; /&gt;&lt;/p&gt;

&lt;h3&gt;Tình hình dịch COVID-19 tại Việt Nam:&lt;/h3&gt;

&lt;p&gt;- Kể từ đầu dịch đến nay Việt Nam có 10.489.319 ca nhiễm, đứng thứ 12/227 quốc gia và vùng lãnh thổ, trong khi với tỷ lệ số ca nhiễm/1 triệu dân, Việt Nam đứng thứ 110/227quốc gia và vùng lãnh thổ (bình quân cứ 1 triệu người có 106.052 ca nhiễm).&lt;/p&gt;

&lt;p&gt;- Đợt dịch thứ 4 (từ ngày 27/4/2021 đến nay):&lt;/p&gt;

&lt;p&gt;+ Số ca nhiễm ghi nhận trong nước là 10.481.571 ca, trong đó có 9.062.877 bệnh nhân đã được công bố khỏi bệnh.&lt;/p&gt;

&lt;p&gt;+ Các địa phương ghi nhận số nhiễm tích lũy cao trong đợt dịch này: Hà Nội (1.535.789), TP. Hồ Chí Minh (607.520), Nghệ An (477.183), Bình Dương (382.886), Bắc Giang (380.933).&lt;/p&gt;

&lt;p&gt;Tình hình điều trị COVID-19&lt;/p&gt;

&lt;p&gt;1. Số bệnh nhân khỏi bệnh:&lt;/p&gt;

&lt;p&gt;- Bệnh nhân được công bố khỏi bệnh trong ngày: 124.630 ca&lt;/p&gt;

&lt;p&gt;- Tổng số ca được điều trị khỏi: 9.065.694 ca&lt;/p&gt;

&lt;p&gt;2. Số bệnh nhân đang thở ô xy là&amp;nbsp;1.010&amp;nbsp;ca, trong đó:&lt;/p&gt;

&lt;p&gt;- Thở ô xy qua mặt nạ: 732 ca&lt;/p&gt;

&lt;p&gt;- Thở ô xy dòng cao HFNC: 122 ca&lt;/p&gt;

&lt;p&gt;- Thở máy không xâm lấn: 29 ca&lt;/p&gt;

&lt;p&gt;- Thở máy xâm lấn: 124 ca&lt;/p&gt;

&lt;p&gt;- ECMO: 3 ca&lt;/p&gt;

&lt;p&gt;3. Số bệnh nhân tử vong:&lt;/p&gt;

&lt;p&gt;- Từ 17h30 ngày 18/4 đến 17h30 ngày 19/4 ghi nhận 18 ca tử vong tại: Đắk Lắk (4), Kiên Giang (3), Đồng Nai (2), An Giang (1), Bắc Kạn (1), Bạc Liêu (1), Bến Tre (1), Hà Nam (1), Hà Nội (1), Lào Cai (1), Quảng Ninh (1), Vĩnh Long (1).&lt;/p&gt;

&lt;p&gt;- Trung bình số tử vong ghi nhận trong 07 ngày qua: 17 ca.&lt;/p&gt;

&lt;p&gt;- Tổng số ca tử vong do COVID-19 tại Việt Nam tính đến nay là 42.975 ca, chiếm tỷ lệ 0,4% so với tổng số ca nhiễm.&lt;/p&gt;

&lt;p&gt;- Tổng số ca tử vong xếp thứ 24/227 vùng lãnh thổ, số ca tử vong trên 1 triệu dân xếp thứ 130/227 quốc gia, vùng lãnh thổ trên thế giới. So với châu Á, tổng số ca tử vong xếp thứ 6/49(xếp thứ 3 ASEAN), tử vong trên 1 triệu dân xếp thứ 25/49 quốc gia, vùng lãnh thổ châu Á (xếp thứ 4 ASEAN).&lt;/p&gt;', 
'10', '18', '36', '2', '1', '99', '2022-04-09 15:44:58');

INSERT INTO `posts` VALUES ('2', 'Facebook là gì? Làm sao để sử dụng?', 'Mạng xã hội Facebook không còn là cái tên xa lạ nữa, tuy nhiên không phải ai cũng biết tường tận về các chức năng của Facebook', 'https://adflex.vn/wp-content/uploads/2020/11/facebook.jpg', 'facebook-la-gi-lam-sao-de-su-dung-facebook', 'facebook, mạng xã hội]', '&lt;h3&gt;&lt;strong&gt;1. Facebook là gì? Dùng để làm gì?&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;Facebook là một trong những mạng xã hội hàng đầu thế giới hiện nay, là&amp;nbsp;&lt;strong&gt;nơi kết nối tất cả mọi người lại với nhau trên toàn thế giới&lt;/strong&gt;. Tương tự như mạng Internet, Facebook tạo ra một thế giới phẳng - nơi không còn khoảng cách địa lý cho phép tất cả người dùng đăng tải và chia sẻ trạng thái, thông tin cá nhân và tương tác với người khác.&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;Facebook&quot; src=&quot;//cdn.tgdd.vn/hoi-dap/1310396/facebook-la-gi-co-chuc-nang-gi-huong-dan-cach-su-dung-cho4.jpg&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;Hiện nay, Facebook cung cấp một số tính năng chính như sau&lt;/strong&gt;:&lt;/p&gt;

&lt;p&gt;- Trò chuyện và tương tác với bạn bè mọi lúc mọi nói chỉ cần có thiết bị được kết nối Internet.&lt;/p&gt;

&lt;p&gt;- Cập nhật, chia sẻ hình ảnh, video, thông tin, story (câu chuyện).&lt;/p&gt;

&lt;p&gt;- Tìm kiếm bạn bè thông qua địa chỉ email, số điện thoại, tên người dùng hay thậm chí là thông qua bạn chung.&lt;/p&gt;

&lt;p&gt;- Tận dụng làm nơi bán hàng online như:&amp;nbsp;&lt;a href=&quot;https://www.thegioididong.com/hoi-dap/huong-dan-tao-fanpage-facebook-tren-dien-thoai-don-gian-1059178&quot; target=&quot;_blank&quot;&gt;Tạo Fanpage&lt;/a&gt;&amp;nbsp;để bán hàng, bán hàng trên trang cá nhân.&lt;/p&gt;

&lt;p&gt;- Đa dạng game cho người dùng mặc sức giải trí, trải nghiệm.&lt;/p&gt;

&lt;p&gt;- Khả năng tag (gắn thẻ) hình ảnh, nhận diện khuôn mặt thông minh.&lt;/p&gt;

&lt;p&gt;- Cho phép tạo khảo sát/thăm dò ý kiến ngay trên tường cá nhân.&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;Trò chuyện và tương tác với bạn bè&quot; src=&quot;//cdn.tgdd.vn/hoi-dap/1310396/facebook-la-gi-co-chuc-nang-gi-huong-dan-cach-su-dung-cho2.jpg&quot; /&gt;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;2. Nguồn gốc và lịch sử phát triển của Facebook&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;&lt;strong&gt;Nguồn gốc&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;Facebook được sáng lập bởi&amp;nbsp;&lt;strong&gt;Mark Zuckerberg&lt;/strong&gt;&amp;nbsp;- một sinh viên học khoa máy tính trường Đại học Harvard. Vào năm 2003, khi đang là sinh viên năm 2, Mark Zuckerberg đã viết Facemash (tiền thân của Facebook) - trang web này yêu cầu người dùng bình chọn ai là người &amp;quot;hot&amp;quot; (nóng bỏng) nhất bằng cách sử dụng 2 hình ghép kế bên nhau.&lt;/p&gt;

&lt;p&gt;Để có thể lấy được các thông tin hình ảnh sử dụng để so sánh, Mark Zuckerberg đã tấn công vào hệ thống mạng của trường để lấy những hình ảnh của các sinh viên. Kết quả thật đáng ngạc nhiên, chỉ trong 4 giờ hoạt động, Facemash đã thu hút hơn 450 lượt truy cập cùng 22000 lượt xem hình ảnh.&lt;/p&gt;

&lt;p&gt;Tuy nhiên thì việc làm này của Zuckerberg bị nhà quản trị mạng trường Harvard phát hiện và tất nhiên Mark Zuckerberg bị buộc tội về vi phạm an ninh, vi phạm bản quyền, vi phạm quyền riêng tư cá nhân và phải đối mặt với trục xuất, nhưng cuối cùng thì hình phạt cũng được bãi bỏ.&lt;/p&gt;

&lt;p&gt;Ở học kỳ tiếp theo, vào ngày 04/02/2004, Mark Zuckerberg đã quyết định thành lập The Facebook, ban đầu được sử dụng là thefacebook.com. Sáu ngày khi trang web được đưa ra, Zuckerberg đã bị cáo buộc vì đã cố ý lừa 3 người tiền bối trường Harvard tin tưởng rằng sẽ giúp họ xây dựng một mạng xã hội được gọi là HarvardConnection.com, họ đệ đơn kiện Zuckerberg vì việc sử dụng ý tưởng của họ để xây dựng 1 sản phẩm cạnh tranh, sau đó tất cả đã được giải quyết ổn thoả bằng việc đền bù 1,2 triệu cổ phiếu (trị giá 300 triệu USD tại IPO của Facebook).&lt;/p&gt;

&lt;p&gt;Facebook chính thức ra đời vào năm 2005, sau đó chữ the ở phía trước &amp;quot;TheFacebook&amp;quot; đã chính thức được bỏ đi, để lại tên &amp;quot;Facebook&amp;quot; như ngày nay.&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;Nguồn gốc&quot; src=&quot;//cdn.tgdd.vn/hoi-dap/1310396/facebook-la-gi-co-chuc-nang-gi-huong-dan-cach-su-dung-cho1.jpg&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;Lịch sử phát triển&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;- Năm 2004: Ra mắt sản phẩm cho sinh viên Havard.&lt;/p&gt;

&lt;p&gt;- Năm 2006 - 2008: Phát triển mảng quảng cáo và hoàn thiện trang profile cá nhân.&lt;/p&gt;

&lt;p&gt;- Năm 2010: Phát triển Fanpage.&lt;/p&gt;

&lt;p&gt;- Năm 2011: Ra mắt giao diện Timeline.&lt;/p&gt;

&lt;p&gt;- Năm 2012: Mua lại Instagram và niêm yết lên sàn chứng khoán.&lt;/p&gt;

&lt;p&gt;- Năm 2013: Cải thiện và nâng cao chức năng tìm kiếm Graph Search (công cụ tìm kiếm theo ngữ nghĩa).&lt;/p&gt;

&lt;p&gt;- Năm 2014: Thâu tóm&amp;nbsp;&lt;a href=&quot;https://www.thegioididong.com/game-app/whatsapp-messenger-nhan-tin-mien-phi-220296&quot; target=&quot;_blank&quot;&gt;WhatsApp&lt;/a&gt;&amp;nbsp;để chạy đua với thị trường ứng dụng chat, đồng thời cũng mua Oculus (thương hiệu chuyên sản xuất tai nge thực tế ảo) để phát triển thiết bị giả lập 3D, VR,&amp;hellip;&lt;/p&gt;

&lt;p&gt;- Năm 2015: Bổ sung tính năng Shop của Fanpage và đạt 1 tỷ người dùng hoạt động mỗi ngày.&lt;/p&gt;

&lt;p&gt;- Năm 2016: Giới thiệu ứng dụng Messenger và trang thương mại điện tử tại một số thị trường trọng điểm.&lt;/p&gt;

&lt;p&gt;- Năm 2016 - hiện tại: Phát triển không ngừng, theo&amp;nbsp;&lt;em&gt;&lt;a href=&quot;https://www.gso.gov.vn/Default.aspx?tabid=382&amp;amp;ItemID=19440&quot; target=&quot;_blank&quot;&gt;gso.gov.vn&lt;/a&gt;,&amp;nbsp;&lt;/em&gt;tính đến tháng 06/2020, tại Việt Nam đã có hơn&amp;nbsp;&lt;strong&gt;69 triệu tài khoản Facebook&lt;/strong&gt;, chiếm 2/3 dân số Việt Nam.&lt;/p&gt;',
'10', '17', '19', '1', '1', '550', '2022-04-12 16:22:33');


INSERT INTO `posts` VALUES ('3', 'Cách phòng tránh Covid 19', 'Một số biện pháp bảo vệ cơ thể tránh lây nhiễm Covid 19 trong thời kỳ mới', 'https://file1.dangcongsan.vn/data/0/images/2021/09/16/hungnm/phong-chong-covid-1.jpg', 'cach-phong-tranh-covid-19', 'phòng tránh, covid, bảo vệ', '&lt;h3&gt;Chăm sóc bản thân bao gồm những gì?&lt;/h3&gt;

&lt;ol&gt;
	&lt;li&gt;Giảm thiểu nguy cơ lây nhiễm&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;Bảo vệ sức khỏe tinh thần&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;&amp;nbsp;Biết nên làm gì khi ốm.&lt;/li&gt;
&lt;/ol&gt;

&lt;h3&gt;Để giảm thiểu nguy cơ:&amp;nbsp;&lt;/h3&gt;

&lt;p&gt;Lời khuyên vệ sinh&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;Hạn chế tối đa việc ra ngoài, chỉ ra ngoài khi thật sự cần thiết.&lt;/li&gt;
	&lt;li&gt;&amp;nbsp;Nếu buộc phải ra ngoài, luôn luôn đeo khẩu trang , hãy giữ khoảng cách tiếp xúc, tốt nhất là 2m.&lt;/li&gt;
	&lt;li&gt;&amp;nbsp;Thường xuyên rửa tay bằng xà phòng hoặc dung dịch sát khuẩn.&lt;/li&gt;
	&lt;li&gt;&amp;nbsp;Thường xuyên vệ sinh nhà cửa, làm sạch các đồ vật và thiết bị thường xuyên sử dụng.&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;&amp;nbsp;Thực hiện khai báo y tế, cấp nhật tình hình sức khỏe hàng ngày, giữ liên hệ thường xuyên với cán bộ y tế, cơ sở y tế.&amp;nbsp;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;Lời khuyên khi bạn làm việc bên ngoài:&amp;nbsp;&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;Thông báo cho quản lý trực tiếp của bạn&lt;/li&gt;
	&lt;li&gt;Đánh giá các tình huống có thể khiến những thành viên trong gia đình bạn cũng như đồng nghiệp và trẻ em trong cơ sở gặp nguy cơ nhiễm COVID-19 và có kế hoạch giảm thiểu những nguy cơ đó&lt;/li&gt;
&lt;/ul&gt;', '10', '18', '36', '1', '1', '980', '2022-04-14 15:15:34');

INSERT INTO `posts` VALUES ('4', 'Thu nhập của các nghệ sĩ Việt', 'Thu nhập của các nghệ sĩ là một điều gì đó khá bí ẩn, làm cho mọi người rất thú vị mỗi khi bàn về vấn đề này', 'https://image.thanhnien.vn/w2048/Uploaded/2022/pwivoviu/2019_11_14/son-tung-m-tp_rwsg.jpg', 'thu-nhap-cua-cac-nghe-si-viet', 'nghệ sĩ việt, showbiz', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://image.diemtin.vn/800/cafefcdn.com/thumb_w/650/203337114487263232/2020/11/12/photo1605188741128-1605188741318268286869.jpg&quot; style=&quot;border-style:solid; border-width:2px; height:344px; width:550px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;Thời gian qua, không ít người cho rằng thu nhập &amp;#39;khủng&amp;#39; của nghệ sĩ, ca sĩ nổi tiếng có lẽ từ YouTube hay quảng cáo trên Facebook...&lt;/p&gt;

&lt;p&gt;Nhưng thực tế không phải vậy. Mang thắc mắc về thu nhập hỏi một số ca sĩ nổi tiếng và quản lý, phần lớn cho rằng dù show bây giờ không nhiều như trước, nhưng họ &amp;ldquo;sống tốt&amp;rdquo;, &amp;ldquo;sống khỏe&amp;rdquo; khi tham gia các sự kiện (event), show quảng bá thương hiệu, làm đại diện thương hiệu... &amp;ldquo;Cát sê sẽ còn tùy thuộc vào thương hiệu đó đến từ đâu, quy mô thế nào và ca sĩ xuất hiện ra sao... Họ có lấy hình ảnh để quảng cáo trên các phương tiện truyền thông hay không; rồi hát mấy bài, có cắt băng khánh thành, chụp ảnh trên băng rôn... đều có giá khác nhau. Phần này quản lý chúng tôi nghiên cứu rất kỹ trước khi đưa ra mức giá phù hợp để có thể nhận show chứ không phải &amp;ldquo;hét&amp;rdquo; giá trên trời&amp;rdquo;, một ca sĩ hàng sao cho biết. Cũng theo ca sĩ này, cát sê hiện tại của các ngôi sao không chênh nhau nhiều, trung bình dao động từ 10.000 - 20.000 USD (khoảng hơn 230 đến hơn 460 triệu đồng).&lt;/p&gt;

&lt;p&gt;Theo bà Trang Đặng, giám đốc một công ty tổ chức sự kiện tại TP.HCM: &amp;ldquo;Nhóm ca sĩ đang ở hàng cát sê cao nhất hiện nay vẫn là Đàm Vĩnh Hưng, Mỹ Tâm, Sơn Tùng M-TP, Hà Anh Tuấn, Lệ Quyên, Hồ Ngọc Hà, Tuấn Hưng... Mỗi show sự kiện mang tính quảng cáo sản phẩm của các ca sĩ nổi tiếng trên có khi lên đến 400 - 500 triệu đồng. Dù cao nhưng khách hàng vẫn chấp nhận bởi đến giờ họ vẫn giữ được &amp;ldquo;thương hiệu&amp;rdquo;. Theo tôi, thu nhập &amp;ldquo;khủng&amp;rdquo; của ca sĩ hàng sao hiện tại là từ biểu diễn ở các show quảng bá thương hiệu&amp;rdquo;. Trong số các ca sĩ hàng sao, Mỹ Tâm và Sơn Tùng M-TP thường ít nhận show liên quan đến quảng bá thương hiệu, hội nghị khách hàng; hoặc nếu có nhận, giá của họ không dưới 300 triệu đồng. Với các chương trình như lễ hội, chào mừng, show ca nhạc lớn bán vé... cát sê ca sĩ nổi tiếng khoảng từ 180 - 250 triệu đồng. Riêng phần thuế thu nhập trên cát sê hầu hết là do đơn vị mời đóng thay nghệ sĩ. &amp;ldquo;Cũng có trường hợp nghệ sĩ vì mối thâm tình với bầu show, nhà tổ chức sự kiện mà lấy mức giá rất &amp;ldquo;hữu nghị&amp;rdquo;. Như Đàm Vĩnh Hưng, nếu show do người thân thiết tổ chức, anh sẵn sàng lấy nửa giá. Vậy nên giá cả ca sĩ đôi khi còn phụ thuộc vào người mời ca sĩ đó tham dự&amp;rdquo;, bà Trang Đặng nói thêm. Cũng theo thông tin từ các bầu show, ngoài những ngôi sao nói trên thì một số ca sĩ khác như Đông Nhi, Noo Phước Thịnh, Ngô Kiến Huy, Bích Phương, Hoàng Thùy Linh&amp;hellip; cũng đang là những tên tuổi được mời diễn sự kiện nhiều nhất. Số tiền ca sĩ hát cho các sự kiện mang tính quảng bá thương hiệu, hội nghị khách hàng trên dưới 200 triệu đồng/show. Vợ chồng ca sĩ Đông Nhi - Ông Cao Thắng được xem là cặp ca sĩ nhận được nhiều lời mời đóng quảng cáo nhất. Phần đại diện thương hiệu của ca sĩ nổi tiếng khoảng từ 30.000 - 50.000 USD (gần 700 triệu đến trên 1 tỉ đồng) tùy vào thời gian ký hợp đồng và thương hiệu lớn nhỏ, trong nước hay ngoài nước.&lt;/p&gt;

&lt;p&gt;Bên cạnh đó, cát sê của MC trong các sự kiện cũng không hề nhỏ. MC Trấn Thành đang là nghệ sĩ đắt show sự kiện và phần cát sê của anh có khi lên đến 300 triệu đồng. Nếu tính trung bình, mỗi tháng ca sĩ ngôi sao &amp;ldquo;trúng&amp;rdquo; 3 - 4 show sự kiện, thu nhập của họ đã hơn 1 tỉ đồng. Nếu &amp;ldquo;trúng&amp;rdquo; quảng cáo thì bỏ túi vài tỉ đồng là chuyện bình thường. Riêng các ca sĩ từng có tên tuổi hoặc ca sĩ trẻ mới nổi tiếng, mỗi show diễn mang yếu tố quảng cáo, cát sê của họ cũng trên dưới 100 triệu đồng.&lt;/p&gt;', 
'10', '12', '37', '1', '1', '19', '2022-04-14 15:16:05');

INSERT INTO `posts` VALUES ('5', 'Các Game Show đang được giới trẻ chào đón hiện nay', 'Game show được hầu hết các bạn trẻ chào đón. Một trong số đó là chương trình Rap Việt', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsma8TIFldQrOqJC1LcC8AMcWJw9kFp0sMJQ&amp;usqp=CAU', 'cac-game-show-dang-duoc-gioi-tre-chao-don-hien-nay', 'game show, giới trẻ, hot', '&lt;p&gt;Chương trình Rap Việt mùa 2 đang có những bước khởi đầu với vòng casting và hứa hẹn những điều mới mẻ thay đổi trong mùa 2. Ngoài những nghệ sĩ nhà SpaceSpeakers xác nhận tham gia trước đó, chương trình còn có những nhân tố mới sẽ hé lộ trong thời gian tới. Đội ngũ ban giám khảo và thí sinh năm nay hứa hẹn giúp Rap Việt 2 thành công hơn mùa trước. Rap Việt trở lại với mùa 2 Chương trình Rap Việt mùa 2 đang có những bước khởi đầu với vòng casting và hứa hẹn những điều mới mẻ thay đổi trong mùa 2. Ngoài những nghệ sĩ nhà SpaceSpeakers xác nhận tham gia trước đó, chương trình còn có những nhân tố mới sẽ hé lộ trong thời gian tới. Đội ngũ ban giám khảo và thí sinh năm nay hứa hẹn giúp Rap Việt 2 thành công hơn mùa trước. Rap Việt trở lại với mùa 2. Thành tựu Rap Việt trong mùa 1 Rap Việt nhanh chóng thu hút khán giả từ khi mới phát sóng vào nửa cuối năm 2020. Với sự khởi đầu mới mẻ, chương trình từng vào top một thịnh hành của YouTube với lượt xem lớn sau vài giờ đồng hồ. Đêm Chung kết, Rap Việt ghi nhận hơn một triệu lượt xem trực tiếp trên Youtube. Không chỉ trong thị trường Việt Nam, chương trình truyền hình này cũng thu hút khán giả quốc tế. Dù mới ra mắt, Rap Việt vẫn nhận được một số thành tựu nổi bật tại lễ trao giải Âm nhạc Cống hiến năm 2021 như: Nhà sản xuất của năm cho Hoàng Touliver, Nghệ sĩ mới của năm - Quán quân Rap Việt 2020 - Dế Choắt và Chuỗi chương trình của năm - Rap Việt. Bên cạnh cuộc đua gay cấn trên sóng truyền hình, Rap Việt còn tổ chức concert với 45 tiết mục, kéo dài hơn 4 tiếng, dàn dựng công phu cùng sự góp mặt của các huấn luyện viên và thí sinh mùa 1. Đây là sự kiện thỏa mãn thị giác và thính giác cho những ai hâm mộ dòng nhạc rap.&lt;/p&gt;', '10', '12', '37', '1', '1', '210', '2022-04-14 15:16:48');

INSERT INTO `posts` VALUES ('6', 'Bảo vệ sức khỏe giữa những ngày mùa hè nóng bức', 'Bảo vệ sức khỏe giữa mùa hè nóng bức', 'https://suckhoehangngay.mediacdn.vn/154880486097817600/2020/7/24/uong-nc-15955843638981139783388.jpg', 'cbao-ve-suc-khoe-giua-nhung-ngay-mua-he-nong-buc', 'bảo vệ, sức khỏe, mùa hè, nóng', '&lt;p&gt;&lt;img alt=&quot;Nắng nóng mùa hè&quot; src=&quot;data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgVFhUYGRgaGhgZGBoZGBoaGBgcGBoZGhoYGhgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHzQrJCw0NjQ0NDQ0NDQ0NjQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ2NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAKIBNwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAACBQEGB//EADwQAAIBAgQEAwYFAwMDBQAAAAECEQADBBIhMQVBUWEicYEGEzKRobFCwdHh8BRSYnKC8QcjMxVjorLC/8QAGgEAAgMBAQAAAAAAAAAAAAAAAgMAAQQFBv/EACwRAAICAgIBAwMDBAMAAAAAAAABAhEDIRIxQQRRYRMicTKBsQWhwdEUFUL/2gAMAwEAAhEDEQA/AOWne5DSRPQx8xRr2DQas0H1NZGHxLRmBIiI7ftTy8SWZLSfLQ15eUJJ6PQKSa2Mjh2dc05RsCdDQsZgraKcvxDqfi7RQsRxVmBQDnodtKzmZtyZ7zRQjLy6AlJeAZJ1gelaHB1KtnGwE1XhmCN18gIB79BWjxPBe6hQdCInr2I86Ock/tAV9mbxC/nYmPIyaHYjnTK2K4cL0qk0lSLu3bC2NG1giOdNrgA4MMJ3An6UtYXk1P8AuNmFJk6ehi9mWwdoqIZQZ2mjrYB0Onl+ldzEgE7jf9acFsEAihtsj0IpgsskSY7a79K3r/D1ZASIgTH/ABSKqZ7RWnqyqs9dj0ooRu7BySeqZk4iwBoBp9az7lmTEa1vPazHQeVAAyTKieZ51Uo7LjIzmvnLl5Vl3UrYxKAiRA7UkbdAnTGoUTCk61a5ajRaYCGqutFbZVgrWHzNA377RW2EygAbAR1NZytlXQ6nenMHis5OYAHl39OtbPS8JxePVtrb9l4Mufkmp7pJ9e78jDQBJYQOf70Sy4OgIMbwZ+dVFqQQeYIIHel8AiIxVCzE7nkI+nKuxghHDJOMUk787Oblk8sWm22q8aHwKsBXQKsBXTswJHAK6BVwtWy0Nl0Dy1MtFy1MtSy6AxXCtGy1wipZKBEVwiiFaqRV2VQMiuEVciuGrIDqVYiq1AaJFSpUqEPAth5A1y9OlJOgG2p68vStLEWYU6HSksPZYmF36V5KEtXZ6WS3RQO3WjWLLsYCnv0Fd9wee9OYd2C5F0kyep7VJS1opL3DcNxXuWJiTt/DRcVxFnMHbcdvWgphDz0862OEcBzEO4OXcLtm7nt96U2rst6RbhHDGuCW0TkY8TH/AB7d6Zv+zrrqjBh8j8udbj3BbTMQYEDwqTA20UchRbOKVlLKy6c9DEEjxCRBkEQY1BFHGKa2IlN3o85awPiykQdyCNR5imzlQhQJA+9adjErflTkzKYIDBiI9ARrRX4YCZVoPfUH1ofpO2kEsy8mA2plR5iKbwSDbkdux6Ue7gmBkiO4GnzFFtWOf886GON3sY8iaB/02vzpmzY3MU57iYNMC3CjStUcG7M8s3gVwtkRmO+1LY5FI3E/nTr2mPYfSkbloDeqnGlVaJB/ddmU9qaDctin77UhcUmskkkbE2xS4aVe5TWIEVnO1CgqGLV0SZGldtoWICA76nkPMxXcIlsqxc+QmJ8hvNamBxIcGFIA0/neuj6T0cckk5SSvpLvXuZPUepcE0lddt9EtW1cAh3jUHxESR16ekU3h7IQQo036yTzoOAw2RMm4BYjyJJH3ptRXoMcEkm0k6ONObbaT1Z1RRFWoooiLRtgJHAlXCUVUq6pQuQaQDLXclMC3UNuqsuhUpVGWmmShslWmU0LEVUijMtUYUVgNASKqRRGFUNWmUyhFcIq5qpoiFaldqVCjxF1xEfWl0cqZXShzXRXj1Gj0jkMm6WMsZo9hwDPPkN9TSdm2zMFUSTsBXreG8IFsBmhn+i9h+tDKkiJ7LcLwRMNcEndQeXc9T2rYu3gonxN2USfkKROJWMxYKoJDMxgADfU6etdvJeVgUZSp2UrsJEnNm1MEkDwzzPOlx2DPvZy1iw7ZrbuGiCjARPgYyp8StljtDzBkGluLcWyLCgC4wGdlGXYamZkaloDTvR8diTbti46AXIiIBJn8IddjoDz9a89w1ndzeczlMjNPiYbeg/SnJtJt9IWo8nSPUez/DxbWY/7j79UXp+veBWlxTiAsBVUAseXbrpzJ/Os7hV9iWuMSCRIHJVGuvc7+oHKhYNDiL5dtAIIkSAB8I3Hn86bjlytPsTkjxfwelwrMdTlykdfEDzGgggaDrvTLYRTyg9v0pLDmdbdwMDHhaTAUlWj8W458xT9i4xHiTKRpEgg6AyCOWpGsbVsxxT7Msm09HLdqNKK1uoh0mrmtKiqKbdid5etZWJNbd4Vl4q2PXtWLPFmjDIxbw71VLamZNFxGHNJ3XI0O3lXNens6MdrTEcSRJFJmJ2ntR7go3DbPiL8hoPP+fej9PhebIoLz/BM2VYoOT8BbHD1IDMDO+XYDtpT9tAohQAOgEV0VcV6vD6fHhVRX7+TzuTPPK7k/wDRZBRVFUUUZBTWwUiyrTCJVEWmraUuTGJHUt0wtqr27dNJbpbYVCotVxrVPwKoyVVlmY6UB0rRdKVupRJlNCTrQWFNOKA4piYDQBqGaMwobCiQBQ1WrmqkUSZRWpXalWQ+eLbNHwuFd2yIJJ+Q7k1o4XAG5Cqvm55en5V6rA4JLSwo8zzJ7149yPQvQrwrhaWV6ufib8h0FOnrE9KIwJGgHYEwCe5gx8qRfjCq5V1KKqBmc5gJLBVVVKguxYwMs8tsyggoSn0C5UVd7DxaYZjnZQGUjMyDMwU9RvI6dqa/pFtsX944nOfFLpLENLGJMRCgtADEDlF8M6szOoBZfC2mVwYDBGzAFdGUweRBrI4xjs5yJmyz4gTMsNIEE6DsYnWnYoeF0BKQAq2JuhQAo6RoB+J46nf1A1rYuYFGZbKqMqgF+enIHqWIJPUA9RXMLZGHtFiJdo0G8nRUHeT8zTuDt5ELu3iMs56nnHaAAOwFFJp+NLr8lK4qxPi4CAJOranrE8z3NM8MtFEnLmaC0RlaY8IDnTUR9aycOrX7pYiR8REx4Rss/St/EI6qPdFQwJJDyc2hgFtSNY11oGlFJIBtvs4mIR2AdWS4THNSTDwQw+LQOewY9ddi00LlzEkCJbczsTFZuDuMxYOhX1lSCWAgwNYAOkxmFNOuUAyT58vXpTcc5L8CZRT0Oq9EDUrhXkTH71c3NY+1boT1fuLcd0dums262pJgRyPOnbyka9PnWPicQZKkAzp/DWXPKux+GN9Ar7Hc86zr1XuuKCzk9hXPk7N0Y0BfD5uXrTVm2FECgvc03mmU2FdX+kRX1HL2Ri/qEnwUfksKKopHE3iDEQOvWrNjwBtJ7RFdD/scPNxb68+5i/4eXiml3/Y0FFGQUG04IBFMW61qSkuS6Yni06Ye2KcsilbdO2qCQaG7S0elLmJVFLOwVRGp76AdzWPj/a3D2wTm2Gsggg8gRv60ttLsNRb6PR1ncR4zZsEK7wxEhQCWjrA2FY+I9sERS9y2UEApLKWeeYQaxrXzjGYU4x2xDFkDksVOU3LkSBDkQqwAAYMARERQ80Wou6Pe4r29wYmH2mcwIMa6jqJie2tYnCv+otm67I8LLhUA5DbMTPiBOvKvN8LfEJcy4bCIhGgd0zMOpe++p32UjtXq72AxDKFxD4W5OrKEAj1ac3/x86nP4C+n8npUxCOCUYGDB84nbyqjivnPEkxOFuC7ZMpsUkkRr4TrruYPfSvX+z3HUxNvMCA66OnMHTWN4M702MlLoVKLj2aTChmiNVDTRTBkVU1dqqaIFlSKldNSpZCWbaooVRV2BiQATyBMD1MGPlQ3uKgBadTE5SQPMgeEdzAoTcSthxbLQ5JVQQQGIXNAO05dY6A15Hi+6O+2J3OPqHylSAsZ5FxGQfjdgyBci75s2omJ2L1i+l6V+IQCVZSCVM5WyMASpgwYjQ1LyrcBV1DKwKlSJBB0II6UldFi2HZC4umASXcv4ZCznJm2JY7FdZGpokoz6TQLuPZziF9La5ETI5JZiCBIMSxKnxkwB4te21c4HgZPvGGi/CDzbrB6ffyrOwttr1yCTJ8TN0XuOp/grax92Atm3ozaCPwKPifzE+pIHOnTlxXFdsCEeTC2X97czfgQlV6M2oZvTVfPP0FTjl/QIOereQ1A+k+gpvDW0tW+iqPPbQDudh3rz6s165rJk+LLroPijsBC0EUrvwi5u3SNng2GhQxQeLUNOoA2HUTrtvzpu9bvK2ZGVliMjKAZLJ4gw1MKHMSJJGtXCQh93oSPDmLAD0Oq+UadKXt4i+kB0zyRqoJPicLl8IjwjxZmyyDygmqq3YtmjhXZlDMpUywy6ToSAe0gAxymmSsmD0+//FXtJz+VKXsQAxHOYH2o0lFWxatukNKkCJNcsgAmJ69vKaoH7/Kp/UDvTVJJplcWMFSdyIrMx+FSCee+80+b3cUpisQmzEeVTK4uO/7hY+Sejz911iACT12+lBdyQBEDtzrRv4FSZDZV61Q2cpEDUdvqK57i0blJPopa4cRqV9NaHMHLlI/nStRXbLJANCb+7bzp+Gc8Uk4dicijNOM+jFvscxoGUGtDiQHxfOuYPDhgWPyqPDPJlp9vYayQhjtdLQ9hx4F8hTCGgg0VDXovT4pY4tSfezj5JqbTSGUNMi6FBYmABJPYUojVi+1vEwlr3YPjeCROoUa/UgfWim6VkguTpCPtRir2JCrYUsiknRlVRIZfEWI8Q+zbV5S0bOHbMT768Nf/AGkbqARLkRudO21AfGOXUBiBrETuevX96z8dq+Y7tJPnzrFJts0SuOjnFMY9x5diSTrOsDnHermwXdkcOMpgKhClVXQZ3fRdo1qvC7io7PALron+JO7x1HL1pghF1uFrh3yAlUHdiDJbyjzpipIKC1+T0XDEsIgzC6ApMuL1u4DJkZlt6KNYHlrSmM4gpY5GaOWsUjiPaZ2t+5W1aRNoRNfOSTr33rJN41GGk2a1nib6oxJU9aDwrHGzeF1FOZCQ42DoZmdIkaGewrKa5T9g3HKlCcuzhHVWEbFlJkjWZ2HMipF8XaKnDlpn1rD31dFdfhZQw56MJG1dNZfs1Iw6rmVgpYKy7MpJKmOUgz5EVqGt0XaTOfKPGTRRqqasa5RAlalSpUKOOwIIIBBEEESCDuCOlYeJ4GjSELK+UIpzuwVAysUgt4VOXLoQQDAikcBxi+0W3XPeILsoXItlSSFVy27GDsOXSCd/g+JW7ZW6s5WB330JU6iQdQdQYO4ryrjkg9PR3k4tC+Ewb4b3lybYUhR7tZS2qrOqkAy7FtTlEwo5TWXj8Y115iIICofwz8OYc26IJJJ17c4ljiSUFxnRWjMSoIbbLnVY7QAz+W9OcDwQ/wDIwgLIQERHUhJOU9ySxkzG1NvjHlLsXXJ0jRwtpbFsknxHxOxOs9z2rvCbRYm6w1eIB/Cn4R2OsnuYPw0pff31wWx8Cwz9CfwoesxJ7CPxCti9eFtCx2HmSTyGmpJNI32+3/A9rjGkIcfxe1pSeWYjeeSqObRr20NF4FhWVc4yifDET4QdlYHrOsGSKw7fjcs7as2VixChcx+EmYQf4AljzIr1+GsKg8MgQNMxK6dF2X0iif2qhDO4nFhGRcrMzkqoUCZCliSSQAIU86bwd1XVXUyrAMD1B2pb3KuDnUMDrDAEdt6cwqKoAUAKAAoAgADQAAbCpCmBLQyW0msp7ak5pIJ3+9O4x4U99Pnp+dZXvG9KmWSuiYYPbNBHAAAM/euCJkAen50ranpM0a42gHXTtVKdoJxphLl3QmI/al7YzDMQIOo/5q3rp0oYYRlXQCqlK+wktaONZWfyO3yqr21XxN3joKmU7Ut/TtzOtHhjjm7nKl+AZynH9KscVtBJFJ30aTB0nzqrWip1IolskitTx/RXODTXVv8AlCVP6j4yVMCU0hoPaPyoiHQDlVHBnX+etdBrtYoRcVJ7fuc+cmm0tfAVTRVNLlwBJMCvPcZ9owspb35tRTmo9lwhKXRr8X46lkQPE/Ich5189x+OZ3LsZY7mg4jEMxkkk0NEJMASSYAAkknYAczWKc3Jm/HjUUVtq7MAgLMTCgCST0AFG4phXRnRxlcHUaSDvEjfQ19A9k+Bf06+8cD3rCI3yL/bP9x5n088X/qDhYuJdA+Ncrf6k2PyIH+2o8bUeTFTmpSpHg8Hch2H80plkJovA+HC9ihZaRnW4FYfhfIzIxHMArqKreR7btbuLldDDDv2PMHcHmDUafaDxSVUwZtRVGEU0WmhOtBZodeBVjQ0vOjZkYggcqZFuh3LOh8ifkKOKEzl5Pof/Tp3bCs7knNccgkyTAUH6g/KvVGsj2UwgtYSyn4sgdxzDP4zPq1a8VtjVHPltlTXK6a5RAnDUqVKshjf+j2W1uKGZhlbUrmUT4WykZl1Ohka0rxp7aZQgCMMqll8CBYyqjaqjaRCtmIEQhkU1xm5byS6K+vhzKSFP9+YA5I/uMCYEia8ujklSPEWCqrSZaT8K3M8t5Lef/RyPm8UNXbo7M3sfwGHzuF2ygZiCVZVIjKAQHUEjZVtA/5RW5j8ULaQqjQBUUQJOyqPWBVcFhlsoF0mSxjLGY7xlVRA2nKCdzrWZZPv7xY6okhe51Vj90H+/tS5/fK30jRhjXZtcGsZEkmWbxMf7id28jAgcgFHKh8ZxWZsgPwjM4B2nbMFIIEf3Mi67namHvqiljGm0kCWOy67knlvWBnLMZksCGIIJKkkktkySn+o2kP+fOqx3JuTAzSNjgKpmlmWSMtsHmD8WTQIR2QEdS1amMsNly2oEAgJmyIQerKpZDqSCsGa5hrie7XIwddgytmDHmcxJJM9STTVgHc70EpXKgFHVmVYvXrQAcqiMx1uFnW0EQaZy5LZjsSREHTlXoeG4jPaR8pXOqtlO4kTzqtnU+VMg02LvYmXsJ8SuQAO/wC/6UjZIY71bimZnUJOgM9Nf+KFasNzEVmm25GiCSgODw7V1jImaGU0g61FMaAVdko6nQGuHTYUrdtKes9RTSnTXlzoFKy2qOsxE/z50FWO5BnpVcWxyeA68qUwdpoLMxJ86pyprVlqNpl2JYkkHQka9qsHO01ZjpFCr0/ouOTCm0r/ANHF9RyhkaTZc0HEYpUXMx/eqYzFLbQsx8u5rw3FOJtcYknTpT8uTgqXZMOLlt9DnF+Os8gGFrz73Zody5VUOtY5NvbN0YpaQ3h7JYgAEkmABqSTyFe/9n+ALZh3hrkeYSeS9T3+XdT2S4WEQXnHjceGfwodo7nfyjvXpAa0YcNfdLszZs1/bHoMGrzPtypNtDyBefOBH2NeiBpfiWF97bZOZ1Weo2/T1pmSLcWkIjKmfN/Z11TGWHdgokieXjRlAPQSRrXrPaL2QW/ce+j5Xa3omUQzqAFYt0KgLt0PKK8Lj8KUZljwajLGqHmO69uXlXqeAe26KiW8SWBAAFwAsCBtnjxA8pgzuYpGJprixrtO0eLw7nnTETReIhff3Sp8LO7KYgFWYkETygiqKRS5LZqjK0XS1RFwZYGCZjSOZPKtTgvDPekE6JMEjc9h+vKvofCOH4dIFu0uYbsfFlPZmkz2FHGL7FykujyfsHw2/bW418lQXgLPiJWQxbtoI15GvRXsYmaAddtCJmJiAdTQPam8y3QFzQyAmJH4mG/LYVmYG2TowJbmSAPTnrWSbqTQJ6SxiFYcj8qKbi9PkBSVm2Y+2m32or5VBLOB1JOg8zRKcq7BcUWuATz9f1qUsON4bb36H/cIqU9epkkB9NGXjbFp4LqCVnK2odJ0OR1hlPkRWNZxGHsXGbO2Y83yKemr6M/+7MR1pPjfGwoyJ8R3P9o/Uz6V4nEXZYn+HvXOhjlJbejsxxp7Z9Jx2NN1MthgxO+UglF5tvBPICdyKe4dhgiqqjYDbadBA8gAPSvGeyntGuHDI48DayBJnuOa9R+dew4fxRbqF7asxhiq+HNKmCPEwBIkbkTSs2NpcV0Mb4r4OcUxOZvdoZyiXCljqwgBlQsyiD+K26c+VF9nrKklwVKJosFCgaCCVCMUUjUeFLZ5FaxHJLBW1aSVRwc2Y7slnEMGAE72bvM6V6NuHoFSVm4ABnzPn3kjOWLMvZmOm81c0oY6MyuUrG/dC4xMsoDSChyksNMxj4ukGRpWfesYlL3vSWuqlu66wxQOxByW/dKSDAG8CcwOpFa+GTKoFN2viHas+NuP7hzSYpwXiLM4tl0uTaW4zoICMzRkME6HUjmMpma3XaBQFgHQAde56nrXLrwKbKSoz8bYqz6nz+2n5V1W60KNO/Oh4icuhAPWs7ZoUQ5xCzlnXpSHEOLJb0gse2wrMxWJdDMyeu9Zqh7hnfmaW5MYoI07fHWaYTyM1p4BrjCX58jS2DwSpqY8+QoiYrMxg6DQfrNLvYbjfQ66KomQI1/al8O7SSQFXlqPqN6FfxQQgnUnlP5UhijmbNJBPI1HJFKDNVpJJ0j6mh3bgVWY7KCT6CaUTEkCDB/nOjsodCs6MCpjuINeh/pUoKDjF23t/ByfXRlzUmqXR4rjXEWusSPhGiisR7Vw7Aepp3FYV7TlHGo58mHJh2NUDU2Ut7GwiuK49CP9DdP9vzP6V6Lh/sqy5HuOD8LMgXfnlzT6TFZvvTXt7l6Vkdj6U7Fxldis3KNUaSYte4+30piy2cwupAn0rA97RsPiWU5lMEfyK02Y+J6NcK/9sedIX8ciQNWJ/tg+pkxQsTj2YiCQMsaHcH+AelKRUTfktxXgxfaThnvXz2d21YNKidpmOdKYH2UQMHuMXI1iIAIIIM7mI2O9eojWuqKBY4p3RfJ0CRKvlB/AD8vzru21dKg7aGjKHOHKs+JGIEQAPD6xW/aurEKAo6RFYljHXbahSkry0696N/6mDukfWlSTYcdGX7T45LV5blycgSDG+5j86yrXtpgxsr+qH9ab48wuHqMsbdzXkr/BQSSDHakywJuw1I18d7diItIT/qAA+QOteM4vxS/eaXc5eSjRR2itQ8HihYjh0qRz5eY6GqWLiXaZ51kqUwyECIHqDNSpZVA7mJ3J1Mn5k0rmp3iXC3tkkAsnJu3RhyPfas8eRpCSrR2OXguGr6F7DqRbE82Yj1if/wA14zhnDnuMAqE+W/z2Hma+mcEwXukAMTzjYf4jy/Ws+eSqipSvRs5QRqAQIOonUag+dRdW8qo92BV7egrE0CmMhqZwo0nrSKGTHzp9TAirjHyDJ6oOppTiF4KjE7R9zFMZtKwPafFZEH+TAfITVSBj2dxeLAAKtvzB1rFxmNd9CzR5/pSF3GFtdfSgLdM6mPOl8R9h2Zq4l9lGhNBuX+80s+NAHKo4t+CJ0bOHxTvCyY51pYnFFFCpIganLz868vgOKsGgAQd9KdxfFifCunUncxpNKlikpVQ1TTQ+zlzLnWncEAdTr3NZuCvIywzw0nUzBFa9iMoymQdgREj701ejyzVxp6vv/Ap+ohHUrX7BrtoakAVTCMFAUkAsTl11Mb0niMaimC8n+1NfrtSWLvZ2QICCugJOskiNqf6NP003OVXVJX8ivUpZoKK6vuvg2OI8OS8uVxqPhYfEvl27V4ziXDXstDiVPwuPhP6HtXu0mBMTzjaaly2rAqwDKdwRINejyYY5FfTOPizyxuu0fNzXpuD4jPaA5r4T6bfSPrUx/szubTf7GP2b9fnS3B8Hdtu4dSogbjQmdCDsY1261kjCUJU0bJZI5I2mPBv28unmKKr0O4uuh7/vVJ/n5VojKxEoj9tudHG3lSNlqbstr50xOxbQcaiuFufzqiNqRVmUirKLb7V1FkgdxQ0aK1MBg83jO3LvUbpESLPiGjWs7EOTWjicKZrOxFh11I068qBUEzPu660vTt2wRtqDtQHtjyoqKTE7iRStxKedeRpW4kfkaGgjGxOBGaRpO/8AzUrTZKlKeNBWS5a0JquG4ajHxIp81FPmCfKmbKRXFcnejqJ6GMJZVRAAHlpTlKIas7wKjKDAyaMXil7R0qzNS2gh3AjmadDa0rh9BRUNGloVJ2w5evJe1N9S6oeQLfM/tXpHff5V849pcbmxL66LC/IT9yapR5Mu6CvicogGkXvk86UbEUH3tX9MvkN3Lhpe42lDd6qXolGiXYWzcYbGmBe0rO95FGsYnLOm4q3DyXGRoWLx605b41cXwh9IjXXSvOf1FQuatQlF2nRTlGXas30xQJrVw2ITqZGunL1rx6Xa0+F8Qa20jKezAEfqPSkSwJvboasjrqz2OC4hmcKWmdBMfetWvPYDjLO6oLQ/yy7j/LoK9AK7vodY2uTlvtnH9Z+tfalrpFxQr1kNuTpV5rs1tcU1TMibTtGdewB3BB+hpO5aI0Ij+fat6qugIgiaTLCu4j45n/6MO1+dNqaJicIACynblQrZ0oUmtMO1LaDOJGYb86LaeRBoFtoMcq66wZFGC0FdKf4bjsvgb0NCwFnPz0G9M43ChtVEMPr+9VJp6IrNTOCNdRVDaGx1U1k4PFsvgf61ordoGqCsyuK4fIRGxkj6Vluh5mtri9yQvr+VY7iaZHoF9izLQGHI0w7qKC1xTVsiYuUipV7ik7HXrXKGyUXtcqdt1KlefidhhKj8vSpUqMoOKsnxVKlQhoDarLtUqVfkWDbb1NfJ+J/+e7/rf/7GpUo8XbBn0KNXFqVKYDEJXW2qVKBjUAqy1KlEWD51ddqlSrKiXWr2/iqVKB+Qj6JwIf8AZX1rTFSpXdw/oX4RxM363+WdqVKlNAR01apUqFg73wt5H7Vm2dqlSlT7Q7H0y7UcbVKlUi2NcH+M1qXd6lSgl2Whe+KtyqVKhYjxDYedZz1KlHHoF9gYpRx4hXalWUWu7V2pUqn2Wf/Z&quot; style=&quot;border-style:solid; border-width:2px; float:left; height:162px; margin:1px; width:311px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;

&lt;p&gt;Mùa hè là mùa yêu thích của những đứa trẻ khi chúng không phải đến trường và được vui chơi thỏa thích. Tuy nhiên ngay cả người lớn cũng cảm thấy kiệt sức trong cái nắng như thiêu như đốt và những đợt nắng nóng của mùa hè. Vì vậy, điều quan trọng là phải tăng cường sức khỏe cho trẻ em vào mùa hè. Dưới đây là một biện pháp để bảo vệ sức khỏe của trẻ trong mùa hè:&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;&lt;strong&gt;Tránh ánh nắng trực tiếp của mặt trời&lt;/strong&gt;&lt;/li&gt;
	&lt;li&gt;&lt;strong&gt;Bôi kem chống nắng&lt;/strong&gt;&lt;/li&gt;
&lt;/ul&gt;', '10', '17', '21', '1', '1', '80', '2022-04-19 11:32:05');

INSERT INTO `posts` VALUES ('7', 'Giới thiệu về ngôn ngữ PHP và hướng cài đặt', 'PHP là một ngôn ngữ lập trình Web được sử dụng phổ biến và dễ học', 'https://office-softech.cdn.vccloud.vn/ckfinder/userfiles//images/aptech/aptech-express/php.jpg', 'gioi-thieu-ve-ngon-ngu-php-va-huong-cai-dat', 'lập trình, PHP, web', '&lt;p&gt;&lt;strong&gt;PHP&lt;/strong&gt;&amp;nbsp;- viết tắt hồi quy của&amp;nbsp;&lt;strong&gt;&amp;quot;Hypertext Preprocessor&amp;quot;&lt;/strong&gt;, là một ngôn ngữ lập trình kịch bản được chạy ở phía server nhằm sinh ra mã html trên client.&amp;nbsp;PHP đã trải qua rất nhiều phiên bản và được tối ưu hóa cho các ứng dụng web, với cách viết mã rõ rãng, tốc độ nhanh, dễ học nên PHP đã trở thành một ngôn ngữ&amp;nbsp;&lt;a href=&quot;https://hoclaptrinhweb.org/hoc-thiet-ke-web/lap-trinh-web.html&quot;&gt;lập trình web&lt;/a&gt;&amp;nbsp;rất phổ biến và được ưa chuộng.&lt;/p&gt;

&lt;p&gt;&amp;nbsp;PHP chạy trên môi trường Webserver và lưu trữ dữ liệu thông qua hệ quản trị cơ sở dữ liệu nên PHP thường đi kèm với Apache, MySQL và hệ điều hành Linux (LAMP).&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;Apache là một phần mềm web server có nhiệm vụ tiếp nhận request từ trình duyệt người dùng sau đó chuyển giao cho PHP xử lý và gửi trả lại cho trình duyệt.&lt;/li&gt;
	&lt;li&gt;MySQL cũng tương tự như các hệ quản trị cơ sở dữ liệu khác (Postgress, Oracle, SQL server...) đóng vai trò là nơi lưu trữ và truy vấn dữ liệu.&lt;/li&gt;
	&lt;li&gt;Linux: Hệ điều hành mã nguồn mở được sử dụng rất rộng rãi cho các webserver. Thông thường các phiên bản được sử dụng nhiều nhất là RedHat Enterprise Linux, Ubuntu...&amp;nbsp;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;strong&gt;PHP hoạt động như thế nào?&lt;/strong&gt;&lt;/p&gt;

&lt;p&gt;Khi người sử dụng gọi trang PHP, Web Server sẽ triệu gọi PHP Engine để thông dịch dịch trang PHP và trả kết quả cho người dùng như hình bên dưới.&lt;img alt=&quot;&quot; src=&quot;https://hoclaptrinhweb.org/images/ecode/hoc-lap-trinh-web/php/hoc-lap-trinh-php.jpg&quot; style=&quot;height:316px; width:400px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;strong&gt;TIPS:&lt;/strong&gt;&amp;nbsp;Để lập trình PHP chúng ta có thể sử dụng các IDE sau: Netbeans, Eclipse, Zend Studio, PHP Storm...để đẩy nhanh quá trình phát triển và hạn chế lỗi xảy ra trong quá trình lập trình.&lt;/p&gt;', 
'29', '30', '33', '2', '1', '66', '2022-04-20 20:06:31');

INSERT INTO `posts` VALUES ('8', 'Blockchain là gì? Lịch sử hình thành và phát triển', 'Blockchain một công nghệ mới cực kỳ hữu ích và thông minh', 'https://media.vneconomy.vn/images/upload/2021/04/20/cong-nghe-blockchain-chia-se-thong-tin-minh-bach-va-bao-mat-cao-1513055874727-33-0-876-1500-crop-1513055882564.jpg', 'blockchain-la-gi-lich-su-hinh-thanh-va-phat-trien', 'blockchain, công nghệ, lập trình', '&lt;h2&gt;Blockchain là gì?&lt;/h2&gt;

&lt;p&gt;Blockchain còn gọi là công nghệ chuỗi (chain) &amp;ndash; khối (block).&lt;/p&gt;

&lt;p&gt;Blockchain là một cơ sở dữ liệu phân cấp dựa trên hệ thống được mã hóa vô cùng phức tạp. Blockchain dùng để lưu trữ thông tin trong các block cho phép truyền tải dữ liệu một cách an toàn và các block được mở rộng theo thời gian&lt;/p&gt;

&lt;p&gt;Hiểu một cách đơn giản, blockchain như một cuốn sổ kế toán điện tử của 1 công ty, nơi dòng tiền của công ty đó được quản lý và giám sát chặt chẽ, ghi nhận mọi giao dịch một cách ngang hàng. Và các thông tin của cuốn sổ điện tử đó sẽ không bao giờ bị thay đổi dưới bất kì hình thức nào, không một ai có thể thay đổi, xóa, viết đè lên.&lt;/p&gt;

&lt;p&gt;Đó chính là tính minh bạch và ưu điểm nổi bật nhất của blockchain: chống lại việc gian lận và thay đổi dữ liệu.&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://gfsblockchain.com/wp-content/uploads/2021/08/3b64d152-6810-413a-99cf-19ae5f7fb8a7_Blockchain2520Technology-scaled.jpg&quot; style=&quot;height:283px; width:500px&quot; /&gt;&lt;/p&gt;

&lt;h2&gt;Ai đã phát minh ra Blockchain?&lt;/h2&gt;

&lt;p&gt;Cha đẻ của Blockchain được ghi nhận cho Satoshi Nakamoto vào năm 2008. Tuy nhiên Blokchain đã có chiều dài lịch sử từ đầu những năm 90s&lt;/p&gt;

&lt;p&gt;Ý tưởng về Blockchain bắt nguồn từ một ý tưởng về chuỗi dữ liệu bất biến được mô tả lần đầu năm 1991 bởi 2 nhà nghiên cứu W. Scott Stornetta và Stuart Haber trên 1 bài báo có tiêu đề: &amp;ldquo;Làm thế nào để đóng dấu thời gian một tài liệu kỹ thuật số&amp;rdquo;. Trên bài báo đó đã đưa ra các vấn đề cần giải quyết bài toán đóng dấu thời gian chính xác cho các tệp dữ liệu nhằm ghi nhận thời gian thực để không bị chỉnh sửa và giả mạo. Tuy nhiên, cách giải thích của Stornetta và Haber được coi là không hoàn chỉnh và giới chuyên gia cho rằng vẫn cần một bên thứ 3 để đảm bảo. Sau đó công nghệ blockchain được đổi mới từ các nhà khoa học máy tính khác cho tới năm 2008 với sự ra đời của bitcoin, Satoshi Nakamoto đã được ghi nhận là người phát minh ra Blockchain.&lt;/p&gt;

&lt;h2&gt;Cột mốc phát triển của công nghệ Blockchain&lt;/h2&gt;

&lt;h3&gt;Năm 1991: Ý tưởng ra đời&lt;/h3&gt;

&lt;p&gt;Như đã phân tích ở trên, ý tưởng cơ bản về chuỗi khối được mô tả năm 1991. Ý tưởng này sử dụng một chuỗi gồm các khối bảo mật bằng mật mã để lưu trữ các văn bản đánh dấu thời gian. Năm 1992 các cây Merkle đã được tích hợp vào chuỗi khiến nó trở nên hiệu quả hơn bằng cách cho phép 1 block có thể tập hợp nhiều hơn 1 văn bản. Tuy nhiên, công nghệ này đã không được sử dụng và bằng sáng chế đã hết hạn vào năm 2004.&lt;/p&gt;

&lt;h3&gt;&amp;nbsp;Năm 2004: Thuật toán POW&lt;/h3&gt;

&lt;p&gt;Nhà khoa học máy tính Hal Finney (Harold Thomas Finney II) đã đưa ra một giải pháp bảo mật gọi là &amp;ldquo;Reusable Proof of Work&amp;rdquo; vào năm 2004. POW được ghi nhận là thuật toán đồng thuận đầu tiên được tạo ra trên mạng lưới Blockchain. Được sử dụng để xác nhận giao dịch và sản xuất các block mới trong chuỗi, đó là lý do còn gọi POW là thuật toán bằng chứng công việc (đáp án đúng của bài toán)&lt;/p&gt;

&lt;p&gt;PoW yêu cầu những người sở hữu các máy tính trong mạng phải giải một bài toán phức tạp để có thể thêm một block (khối) vào chuỗi. POW được xem là 1 thử nghiệm ban đầu và là những bước đi đầu tiên quan trọng trong lịch sử tiền mã hóa&lt;/p&gt;

&lt;h3&gt;Năm 2008: Bitcoin ra đời&lt;/h3&gt;

&lt;p&gt;Cuốn sách trắng (White Paper) đầu tiên về Bitcoin ra mắt vào năm 2008 với tiêu đề:&amp;nbsp;&lt;em&gt;Bitcoin: hệ thống tiền điện tử ngang hàng&lt;/em&gt;&amp;nbsp;(hiện vẫn còn trên trang bitcoin.org) bởi 1 người hoặc 1 nhóm người có biệt danh là Satoshi Nakamoto.&lt;/p&gt;

&lt;p&gt;Bitcoin được khai thác dựa trên cơ chế của thuật toán POW. Để blockchain của Bitcoin có thể hoạt động, cần đến sự ra đời liên tục của block mới để chứa các thông tin giao dịch.Việc này được đảm nhận bởi thành phần gọi là &amp;ldquo;Miners&amp;rdquo;. Họ sẽ phải giải đáp các bài toán phức tạp và gửi đáp án đúng đến toàn mạng lưới nhanh nhất. Nói ngắn gọn, các miners đào Bitcoin để nhận phần thưởng bằng cách sử dụng cơ chế của POW và sau đó xác minh bằng các node phi tập trung trong mạng.&lt;/p&gt;

&lt;p&gt;Vào ngày 3 tháng 1 năm 2009, Bitcoin ra đời khi Satoshi đào được khối bitcoin đầu tiên với phần thưởng là 50 bitcoin.&lt;/p&gt;

&lt;p&gt;Satoshi không sáng tạo ra blockchain nhưng ông là người đầu tiên tạo ra một đơn vị tiền tệ phi tập trung dựa trên công nghệ blockchain. Người nhận Bitcoin đầu tiên là Hal Finney, ông nhận được 10 bitcoin từ Satoshi Nakamoto trong giao dịch bitcoin đầu tiên của thế giới vào ngày 12 tháng 1 năm 2009.&lt;/p&gt;

&lt;h3&gt;Năm 2013: Ethereum và Smart Contract&lt;/h3&gt;

&lt;p&gt;Vitalik Buterin, nhà lập trình và nhà đồng sáng lập của Bitcoin Magazine chỉ ra rằng Bitcoin cần một ngôn ngữ mật mã để xây dựng các ứng dụng phi tập trung. Không có được sự chấp thuận của cộng đồng, Vitalik bắt đầu phát triển một nền tảng tính toán phân tán dựa trên blockchain mới, Ethereum, với một chức năng mật mã mới được gọi là hợp đồng thông minh (Smart Contract).&lt;/p&gt;

&lt;h2&gt;6 đặc điểm nổi bật của Blockchain&lt;/h2&gt;

&lt;ul&gt;
	&lt;li&gt;&lt;strong&gt;Tính bất biến:&lt;/strong&gt;&amp;nbsp;Tất cả các giao dịch thực hiện trên Blockchain không thể làm giả, không thể phá hủy, thêm bớt, chèn dữ liệu. Các dữ liệu trong Blockchain được lưu trữ mãi mãi. Theo lý thuyết, khi không còn Internet trên toàn cầu thì chỉ có máy tính lượng tử mới có thể giải mã Blockchain và công nghệ Blockchain biến mất.&lt;/li&gt;
	&lt;li&gt;&lt;strong&gt;Tính bảo mật:&lt;/strong&gt;&amp;nbsp;Thông tin, dữ liệu trong được phân tán và an toàn tuyệt đối là đặc điểm tiếp theo của Blockchain. Chỉ có người nắm giữ Private Key (khóa riêng tư) mới có thể truy cập các dữ liệu bên trong Blockchain.&lt;/li&gt;
	&lt;li&gt;&lt;strong&gt;Tính minh bạch:&lt;/strong&gt;&amp;nbsp;Bất cứ ai cũng có thể theo dõi dữ liệu Blockchain đi từ địa chỉ này tới địa chỉ khác. Đặc biệt, ai cũng có thể thống kê và truy xuất toàn bộ lịch sử trên địa chỉ đó. Thậm chí người ta có thể phân quyền để cho phép người khác truy cập một phần thông tin trên Blockchain.&lt;/li&gt;
	&lt;li&gt;&lt;strong&gt;Hợp đồng thông minh:&lt;/strong&gt;&amp;nbsp;Đây là hợp đồng kỹ thuật số được nhúng vào đoạn code if-this-then-that (IFTTT) và chúng có thể tự thực thi mà không cần bên thứ ba, không ai có thể ngăn cản hoặc phá hủy hợp đồng này.&lt;/li&gt;
	&lt;li&gt;&lt;strong&gt;Tính phi tập trung:&lt;/strong&gt;&amp;nbsp;Blockchain hoạt động độc lập dựa trên cơ chế của các thuật toán đồng thuận hoàn toàn không bị bất kỳ một tổ chức nào nắm quyền kiểm soát nên không có chuyện bên thứ 3 nắm quyền kiểm soát&lt;/li&gt;
	&lt;li&gt;&lt;strong&gt;Tính phân tán:&lt;/strong&gt;&amp;nbsp;Các block chứa dữ liệu giống nhau nhưng được phân tán ở nhiều nơi khác nhau. Nên trong trường hợp dữ liệu gặp vấn đề mất hoặc hỏng thì vẫn có thể khôi phục nhờ dữ liệu còn trên Blockchain&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;Blockchain &amp;ndash; Xu hướng tương lai&lt;/h2&gt;

&lt;p&gt;Công nghệ Blockchain ngày càng được nhiều công ty và tập đoàn lớn phát triển với việc xây dựng mạng lưới của riêng mình. Chính phủ các quốc gia trên thế giới cũng dần soạn thảo luật để đưa vào chính sách trong quốc gia của mình.&lt;/p&gt;

&lt;p&gt;Theo đó, trong vài năm tới hệ thống Blockchain chắc chắn sẽ tạo nên một cuộc cách mạng ở Việt Nam và đóng vai trò ngày càng lớn trong việc thay đổi thế giới công nghệ&lt;/p&gt;', 
'29', '32', '35', '2', '1', '112', '2022-04-20 20:14:52');

INSERT INTO `posts` VALUES ('9', 'Lập trình nhúng là gì? Kỹ thuật lập trình nhúng căn bản', 'Lập trình nhúng là gì? Tại sao, ngành này lại đang hot đến như vậy?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBw5Pn40xy58Pu8Cqvm-U2-ivB2j5fdlFIWVkCNlnlWHP7H4A3OCyzI-0rnbYSppfaorg&amp;usqp=CAU', 'lap-trinh-nhung-la-gi-ky-thuat-lap-trinh-nhung-can-ban', 'lập trình, kỹ thuật', '&lt;h3&gt;&lt;strong&gt;Định nghĩa lập trình nhúng là gì?&lt;/strong&gt;&lt;/h3&gt;

&lt;p&gt;Lập trình nhúng là một thuật ngữ lập trình dùng để chỉ đến một hệ thống có khả năng tự trị và nó thường được nhúng vào trong một môi trường hoặc một hệ thống mẹ bất kỳ nào đó.Đây là các hệ thống tích hợp cả một phần mềm và phần cứng.&amp;nbsp;Mục đích chủ yếu lập trình nhúng chính là phục vụ các bài toán chuyên dụng trong các lĩnh vực công nghiệp, tự động hóa điều khiển và truyền tin. Thông thường, hệ thống nhúng sẽ được thiết kế để thực hiện các chức năng chuyên trách hoặc riêng biệt nào đó.&amp;nbsp;&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://d3hi6wehcrq5by.cloudfront.net/itnavi-blog/2021/01/L%E1%BA%ADp-tr%C3%ACnh-nh%C3%BAng-1.jpg&quot; style=&quot;height:375px; width:600px&quot; /&gt;&lt;/p&gt;

&lt;p&gt;Bởi vì đây là lập trình chỉ được xây dựng cho một nhiệm vụ nhất định nên người tạo lập thường sẽ tối ưu hóa được nó nhằm tối thiểu kích thước và chi phí cho lập trình. Hệ thống nhúng này thường rất đa dạng và phong phú về chủng loại.&amp;nbsp;&lt;/p&gt;

&lt;h3&gt;&lt;strong&gt;Thành phần cơ bản của lập trình nhúng&lt;/strong&gt;&lt;/h3&gt;

&lt;ul&gt;
	&lt;li&gt;Rom: Nó chứa chương trình, các dữ liệu được fix hoặc những constant data. Hiện nay, thì đa số các hệ thống này đều sử dụng EEPROM hoặc FLASH để thay thế cho ROM bởi vì: chúng có chức năng update chương trình mới, có khả năng ghi xóa.&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;RAM: Đây là thành phần hỗ trợ lưu chương trình thực thi và các biến tạm.&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;MCU: Là bộ xử lý hỗ trợ tính toán trung tâm.&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;Ngoài ra, còn một vài thiết bị ngoại vi khác như: ADC, DAC, I2C, UART,...&lt;/li&gt;
&lt;/ul&gt;

&lt;h3&gt;&lt;strong&gt;Lập trình nhúng được ứng dụng ra sao?&lt;/strong&gt;&lt;/h3&gt;

&lt;ul&gt;
	&lt;li&gt;Lập trình nhúng được ứng dụng trong các ngành điện tử, viễn thông ngân hàng, máy tính,...&lt;/li&gt;
	&lt;li&gt;Hệ thống này được tích hợp phần mềm và phần cứng cũng như được tích hợp 1 thiết bị lập trình thể hiện là một vi xử lý.&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;Hệ thống nhúng và PC có thiết bị cầm tay PDA và nó được xem là khác biệt do được thiết kế giúp chuyên biệt hóa các chức năng cụ thể. Từ đó, nâng cao chất lượng cho chính hệ thống giúp giảm thiểu được giá thành.&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;&lt;strong&gt;Các ứng dụng của lập trình nhúng là gì?&lt;/strong&gt;&lt;/h2&gt;

&lt;p&gt;Hiện nay, hệ thống nhúng được sử dụng và ứng dụng phổ biến trong:&amp;nbsp;&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;&lt;strong&gt;Lập trình nhúng C++&lt;/strong&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;C là ngôn ngữ lập trình chuyên gia đặc biệt quan trọng không thể thiếu trong hệ thống nhúng.&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;&lt;strong&gt;Lập trình nhúng và iot&lt;/strong&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;Iot là một trong những xu hướng phát triển cực nhanh và mạnh, nên bạn cần trang bị nó cho quá trình tìm hiểu công nghệ thông tin của mình.&amp;nbsp;&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;&lt;strong&gt;Lập trình nhúng embedded&lt;/strong&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '29', '31', '34', '2', '1', '45', '2022-04-20 20:28:07');

INSERT INTO `posts` VALUES ('10', 'Giới thiệu tổng quan Liên quân Mobile cho người mới chơi', 'Game liên quân mobile một trong những game đang được giới trẻ đón nhận dễ dàng và đông đảo', 'https://play-lh.googleusercontent.com/ax4vQHtWN4uCh94Twge_lxx3JlfyhRDiMMZwkYNRn_ImphgnlUUW5UnLiXRLGnkVMw', 'gioi-thieu-tong-quan-ve-lien-quan-mobile-cho-nguoi-moi-choi', 'game, giải trí, liên quân', '&lt;p&gt;Garena là một trong những game liên quân mobile được giới trẻ đón nhận dễ dàng và đông đảo. Thể loại game giao diện 3D bắt mắt và đáng trải nghiệm. Hôm nay, mình sẽ giới thiệu tổng quan về Garena liên quân mobile cho bạn nhé.&lt;/p&gt;

&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://kiemtinh.com/wp-content/uploads/2020/07/image4.png&quot; style=&quot;height:660px; width:1430px&quot; /&gt;&lt;/p&gt;

&lt;h2&gt;&lt;strong&gt;Tổng quan về game Garena liên quân mobile&lt;/strong&gt;&lt;/h2&gt;

&lt;ul&gt;
	&lt;li&gt;Garena là game liên quân thuộc thể loại Moba với giao diện đồ họa 3D được đầu tư vô cùng công phu và tỉ mỉ.&lt;/li&gt;
	&lt;li&gt;Garena có chế độ Multiplayer nên bạn có thể dễ dàng trải nghiệm game này cùng bạn bè bất cứ khi nào bạn muốn.&lt;/li&gt;
	&lt;li&gt;Đây là game liên quân mobile được sáng tạo và phát hành bởi Tencent. Đây là nhà phát hành game nổi tiếng cùng với nhiều bước đi riêng đem đến cho người chơi những trải nghiệm mới lạ.&lt;/li&gt;
	&lt;li&gt;Garena có cả phiên bản trên hệ điều hành Android và IOS. Chú ý, bạn cần sử dụng hệ điều hành Android từ 4.0.3 trở lên hoặc IOS 9.0 trở lên thì game mới có thể chạy mượt mà và hoạt động bình thường được.&lt;/li&gt;
	&lt;li&gt;Garena được hiện diện trước mắt công chúng vào tháng 11/2016 và đặc biệt người chơi có thể trải nghiệm game này hoàn toàn miễn phí.&lt;/li&gt;
	&lt;li&gt;Đây là game có số lượng tướng khổng lồ lên đến con số 90 giữ một trong các vai trò như Đỡ đòn, đấu sĩ, sát thủ, pháp sư, xạ thủ, trợ thủ. Mỗi một vị tướng trong garena sẽ có các kỹ năng khác nhau và vai trò cùng sức mạnh uy lực khác nhau.&amp;nbsp;&lt;/li&gt;
	&lt;li&gt;Đây là thể loại game yêu cầu người chơi phải sử dụng các vị tướng cùng chiến thuật phù hợp để công phá và hủy diệt nhà chính của đối thủ.&amp;nbsp;&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;&lt;strong&gt;Tại sao bạn nên trải nghiệm Garena liên quân Mobile&lt;img alt=&quot;&quot; src=&quot;http://kiemtinh.com/wp-content/uploads/2020/07/image3.jpg&quot; style=&quot;height:804px; width:1430px&quot; /&gt;&lt;/strong&gt;&lt;/h2&gt;

&lt;p&gt;Có rất nhiều các tiêu chí khác nhau để mỗi người lựa chọn cho mình được một thể loại game mobile phù hợp với mục đích giải trí và sở thích cá nhân. Những ưu điểm tuyệt vời dưới đây của Garena có đủ khiến bạn cảm thấy game này hấp dẫn không, chúng ta cùng xem nhé.&lt;/p&gt;

&lt;ul&gt;
	&lt;li&gt;Garena có hỗ trợ tiếng việt. Đây chính là một ưu điểm tuyệt vời. Bởi trong game có rất nhiều tính năng khác nhau và được nâng cấp liên tục qua các phiên bản. Nhờ có giao diện tiếng việt, người chơi có thể dễ dàng nắm bắt các thay đổi cùng sử dụng các tính năng của trò chơi đầy đủ và đơn giản nhất. Đây chính là một tiêu chí giúp cho người chơi Việt cảm thấy trải nghiệm trò chơi trở nên đơn giản hơn.&lt;/li&gt;
	&lt;li&gt;Trong garena có rất nhiều chế độ chơi cho bạn thỏa sức thi đấu và so tài cùng bạn bè. Nhờ chế độ chơi linh động tạo ra lợi thế cho game. Nó không còn bó buộc là kiểu chơi một người hay kiểu chơi nhiều người cố định như các game khác.&lt;/li&gt;
	&lt;li&gt;Bạn có thể truy cập và chơi với garena mọi lúc mọi nơi mà không mất một đồng chi phí nào phát sinh từ game. Đây là game được nhiều người chơi đánh giá việc thắng bại hoàn toàn phụ thuộc vào kỹ năng mà người chơi tích lũy được.&lt;/li&gt;
	&lt;li&gt;Mọi thao tác chơi trong game vô cùng đơn giản, người chơi có thể dễ dàng làm được các thao tác mong muốn với hướng dẫn từ game.&lt;/li&gt;
	&lt;li&gt;Nhờ có khung chat tiện dụng, bạn có thể dễ dàng giao tiếp với những người chơi khác bằng khung chat hoặc sử dụng hệ thống đầu vào âm thanh để nói chuyện trực tiếp với nhau.&lt;/li&gt;
&lt;/ul&gt;

&lt;h2&gt;&lt;strong&gt;Những mẹo để chơi Garena liên quân mobile dễ dàng hơn&lt;/strong&gt;&lt;/h2&gt;

&lt;ul&gt;
	&lt;li&gt;Các vị tướng sẽ tạo ra hiệu ứng và uy lực sức mạnh trong Garena, bạn cần nắm bắt và sử dụng các vị tướng này phù hợp với từng mục đích khác nhau. Để biết các vị tướng sử dụng để làm gì, bạn hãy kích vào một vị tướng và đọc hướng dẫn chơi dành cho vị tướng đó. Trong đây, sẽ có tất cả các thông tin về kỹ năng, sức mạnh cùng những hướng dẫn cực kỳ chi tiết dành cho bạn để sử dụng tối ưu vị tướng mình đang nắm giữ.&lt;/li&gt;
	&lt;li&gt;Bạn hãy bao quát game và có cái nhìn tổng thể cùng những chiến thuật đúng đắn. Những kinh nghiệm dù là thắng hay thua trong quá trình chơi đều tạo ra cho bạn những kinh nghiệm quý báu. Hãy ghi nhớ nó và áp dụng vào các trận đấu sau.&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;Bạn còn phân vân gì mà không trải nghiệm ngay game Garena liên quân mobile với giao diện 3D đầy hấp dẫn và thú vị này ngay nhỉ.&lt;/p&gt;',
'22', '24', '27', '4', '1', '24', '2022-04-20 20:53:08');

INSERT INTO `posts` VALUES ('11', 'Bóng đá Việt Nam trước thềm SEA Games 31', 'Khó khăn về nhân sự khiến bóng đá Việt Nam đối diện những thách thức trong hành trình thực hiện nhiệm vụ ở đấu trường khu vực', 'https://www.vietnambooking.com/wp-content/uploads/2019/12/co-vu-bong-da-Viet-Nam.png', 'bong-da-viet-nam-truoc-them-sea-games-31', 'bóng đá, sea game 31', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.baohaugiang.com.vn/uploads/image/2022/03/22/SB3479-6-1.jpg&quot; /&gt;&lt;/p&gt;

&lt;p&gt;&lt;em&gt;Các cầu thủ trẻ của bóng đá Việt Nam sẽ có cơ hội &amp;ldquo;thử lửa&amp;rdquo; trước thềm SEA Games 31.&lt;/em&gt;&lt;/p&gt;

&lt;p&gt;Đối với tuyển Việt Nam, dù cơ hội đi tiếp tại vòng loại thứ 3 World Cup 2022 khu vực châu Á không còn, nhưng họ luôn đặt quyết tâm có điểm trước các đối thủ mạnh. Không có nhiều lựa chọn nhân sự do chấn thương và nhiễm Covid-19, khiến đội rơi vào tình thế bắt buộc phải thay đổi, với những phương án mới chưa kịp toan tính, cần chuẩn bị kỹ lưỡng. Tuyển được mong chờ mang đến một hàng phòng ngự, phản công mới mẻ, với các gương mặt trẻ sẵn sàng thay thế đàn anh. Có nhiều cầu thủ với ưu thế về thể hình được góp mặt sẽ khống chế tốt hơn các pha bóng bổng, thiên về sức mạnh mà đối thủ Oman hay dùng.&lt;/p&gt;

&lt;p&gt;Đội đến với 2 trận đấu còn lại ở vòng loại World Cup bằng tâm lý thoải mái, nhằm thử nghiệm về con người lẫn chiến thuật mà bỏ qua câu chuyện thành tích. Ông Park có dịp kiểm tra lực lượng, chứng thực tính hiệu quả trong các giải pháp, vận hành lối chơi mới với sự góp mặt của những nhân tố trẻ. Quan trọng là tuyển Việt Nam cần duy trì được đội hình và áp dụng chiến thuật thật trơn tru, bài bản.&lt;/p&gt;

&lt;p&gt;Còn ở Giải giao hữu U23 Dubai Cup chuẩn bị diễn ra tại UAE có ý nghĩa quan trọng trong quá trình chuẩn bị SEA Games 31, bài sát hạch cần thiết cho lứa cầu thủ được coi là tinh hoa của U23 Việt Nam. Tuy nhiên, U23 Việt Nam cũng gặp không ít khó khăn vì xáo trộn nhân sự do dịch, những đợt chọn lọc, thử nghiệm, trở thành &amp;ldquo;viện binh&amp;rdquo; đội tuyển quốc gia. Trong khi đó, lối chơi và đội hình hiện tại của U23 Việt Nam vẫn chưa thật sự kết dính do nhiều tuyển thủ ít có cơ hội tập luyện cùng nhau, nên dự đoán sẽ gặp không ít khó khăn tại giải sắp tới. Dù vậy, bài học thành công từ nỗ lực tuyệt vời của các cầu thủ trẻ ở Giải U23 Đông Nam Á vừa qua phần nào mang lại niềm tin cho U23 Việt Nam để vượt qua những đối thủ mạnh tại Dubai Cup.&lt;/p&gt;

&lt;p&gt;Sau hai giải đấu, huấn luyện viên Park Hang-seo sẽ đưa ra quyết định chọn nhân sự cho mục tiêu bảo vệ tấm huy chương vàng ở SEA Games 31. Bên cạnh Thái Lan, thời gian gần đây, các đội Indonesia, Malaysia, Campuchia,&amp;hellip; đều trình làng một thế hệ cầu thủ trẻ nhiều triển vọng, chất lượng. Trong khi, lớp trẻ bóng đá Việt Nam dù đảm bảo sự kế cận nhưng vẫn chưa có nhiều gương mặt nổi bật, đóng vai trò trụ cột và chiếm được vị trí chính thức của đội hình. Hành trình giành vàng của bóng đá Việt Nam ở SEA Games sắp tới sẽ vô cùng khó khăn, ông Park Hang-seo buộc phải cân nhắc lựa chọn 3 cầu thủ ngoài độ tuổi U23 phù hợp các tuyến để đảm bảo duy trì tính gắn kết. Họ có thể là những cầu thủ chơi đa năng nhằm thực hiện được nhiều bài chiến thuật do ban huấn luyện đề ra, vừa công - thủ toàn diện, đảm bảo sự dung hòa đội hình.&lt;/p&gt;

&lt;p&gt;Nhiều ý kiến cũng cho rằng: Ông Park cũng cần nắm bắt và phát triển những góc nhìn mới về định hướng tiếp cận trận đấu: dâng cao nhưng vẫn duy trì tốt cự ly đội hình; gây áp lực khi đối thủ triển khai bóng; sự đồng bộ, tập trung xuyên suốt, tính thông tin và cách tổ chức chiến thuật tốt&amp;hellip; Các cầu thủ cần tạo ra những cơ hội tấn công rõ rệt nhưng đảm bảo phòng ngự chặt chẽ. Đấu trường SEA Games 31 sẽ chứng kiến những cuộc ganh đua mạnh mẽ, ông Park nên tiếp tục chứng tỏ năng lực cầm quân và khả năng xoay chuyển tình thế của mình.&lt;/p&gt;',
'22', '23', '25', '4', '1', '33', '2022-04-20 20:58:09');

