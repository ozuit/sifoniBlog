/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2015-09-14 17:31:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  FULLTEXT KEY `title` (`title`,`content`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Windows 10 bị tẩy chay vì xâm phạm riêng tư', 'Có vẻ như những cáo buộc về việc Windows 10 đang xâm phạm nghiêm trọng đến quyền riêng tư của người sử dụng đang khiến cho những trang chia sẻ Torrent như iTS, FSC cảm thấy cần phải dè chừng trong việc chọn lọc thành viên...', '<p><strong>Từ tuần trước, iTS đ&atilde; ngăn kh&ocirc;ng cho c&aacute;c th&agrave;nh vi&ecirc;n sử dụng hệ điều h&agrave;nh mới của Microsoft truy cập v&agrave;o trang web của m&igrave;nh.</strong></p>\r\n\r\n<p>Trang Gizmodo đưa tin, tr&ecirc;n mạng Internet c&oacute; một số trang web chia sẻ torrent với tất cả mọi người, như Pirate Bay, KAT, v&hellip;v&hellip; V&agrave; b&ecirc;n cạnh đ&oacute; cũng c&oacute; những &ldquo;hội k&iacute;n&rdquo; chỉ chia sẻ torrent của c&aacute;c bộ phim, đĩa nhạc mới nhất cho ri&ecirc;ng th&agrave;nh vi&ecirc;n của m&igrave;nh. Đương nhi&ecirc;n, những hội nh&oacute;m như vậy thường cực kỳ coi trọng vấn đề bảo mật dữ liệu, thậm ch&iacute; cực đoan đến mức n&oacute;i kh&ocirc;ng với c&aacute;c th&agrave;nh vi&ecirc;n sử dụng Windows 10.</p>\r\n\r\n<p>C&oacute; vẻ như những c&aacute;o buộc về việc Windows 10 đang x&acirc;m phạm nghi&ecirc;m trọng đến quyền ri&ecirc;ng tư của người sử dụng đang khiến cho những trang chia sẻ Torrent như iTS, FSC cảm thấy cần phải d&egrave; chừng trong việc chọn lọc th&agrave;nh vi&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"http://myblog.cu/img/articles/windows-10-bi-tay-chay-vi-xam-pham-rieng-tu_29118408.png\" style=\"height:202px; width:480px\" /></p>\r\n\r\n<p>Từ tuần trước, iTS đ&atilde; ngăn kh&ocirc;ng cho c&aacute;c th&agrave;nh vi&ecirc;n sử dụng hệ điều h&agrave;nh mới của Microsoft truy cập v&agrave;o trang web của m&igrave;nh, với l&yacute; do như sau: &quot;C&oacute; lẽ c&aacute;c bạn đều đ&atilde; được biết đến những ch&iacute;nh s&aacute;ch v&ocirc; c&ugrave;ng tệ hại của Windows 10 trong thời gian qua.</p>\r\n\r\n<p>Thật buồn l&agrave; Microsoft đ&atilde; quyết định từ chối việc bảo mật th&ocirc;ng tin, m&agrave; thay v&agrave;o đ&oacute; c&ograve;n đồng &yacute; chia sẻ những th&ocirc;ng tin m&agrave; họ thu thập được từ người sử dụng đến nhiều tổ chức kh&aacute;c.</p>\r\n\r\n<p>Trong số đ&oacute; phải kể đến tổ chức chống chia sẻ file bất hợp ph&aacute;p MarkMonitor. Ngo&agrave;i ra, Windows 10 c&ograve;n bị c&aacute;o buộc đ&atilde; gửi c&aacute;c th&ocirc;ng tin như ảnh chụp m&agrave;n h&igrave;nh, hay dữ liệu trong ổ cứng của bạn đến m&aacute;y chủ của họ. Điều n&agrave;y thực sự đ&atilde; đi qu&aacute; xa, v&agrave; trở th&agrave;nh mối đe dọa nghi&ecirc;m trọng đối với hoạt động của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>Bởi vậy, c&acirc;u trả lời của ch&uacute;ng t&ocirc;i l&agrave;: những người sử dụng Windows 10 sẽ kh&ocirc;ng thể truy cập v&agrave;o iTS được nữa. Thay v&agrave;o đ&oacute; họ sẽ được chuyển hướng sang một đoạn video giải th&iacute;ch những nguy cơ m&agrave; bạn c&oacute; thể gặp phải khi sử dụng hệ điều h&agrave;nh n&agrave;y&quot;.</p>\r\n\r\n<p>Windows 10 vấp phải nhiều vấn đề bởi việc chia sẻ qu&aacute; nhiều th&ocirc;ng tin c&aacute; nh&acirc;n của người sử dụng, từ mật khẩu Wi-fi, cho đến thu thập những g&igrave; được g&otilde; tr&ecirc;n b&agrave;n ph&iacute;m một c&aacute;ch qu&aacute; mức. Ngo&agrave;i ra điều khoản sử dụng một số dịch vụ của Windows như Skype, Cortana, hay Xbox Live c&ograve;n cho biết:</p>\r\n\r\n<p>&ldquo;Ch&uacute;ng t&ocirc;i c&oacute; thể tự động kiểm tra phi&ecirc;n bản của c&aacute;c phần mềm, tải về bản cập nhật mới nhất hay c&aacute;c bản v&aacute;. Điều n&agrave;y c&oacute; thể sẽ khiến bạn kh&ocirc;ng thể truy cập v&agrave;o dịch vụ, chơi game kh&ocirc;ng bản quyền, hay sử dụng những thiết bị ngoại vi kh&ocirc;ng được ph&eacute;p.&rdquo;</p>\r\n\r\n<p>Nếu hiểu theo đ&uacute;ng nghĩa đen, người sử dụng sẽ dễ d&agrave;ng đi đến kết luận rằng Microsoft thực sự đang kiểm tra ổ cứng của bạn, v&agrave; ngăn bạn chơi những tựa game lậu được c&agrave;i trong đ&oacute;. Tuy nhi&ecirc;n rất c&oacute; thể điều khoản n&agrave;y chỉ đ&uacute;ng với dịch vụ Xbox Live &ndash; dịch vụ n&agrave;y kh&ocirc;ng hỗ trợ những tựa game kh&ocirc;ng bản quyền.</p>\r\n\r\n<p>Cho đến b&acirc;y giờ, vẫn chưa c&oacute; những bằng chứng x&aacute;c thực rằng Microsoft đang &ldquo;lục lọi&rdquo; ổ cứng của bạn v&agrave; gửi dữ liệu về m&aacute;y chủ để kiểm tra. V&agrave; rất c&oacute; thể động th&aacute;i của những trang chia sẻ torrent đối với Windows 10 chỉ l&agrave; những phản ứng qu&aacute; mức thận trọng đối với hệ điều h&agrave;nh mới n&agrave;y.</p>\r\n\r\n<p><strong><em>Theo Genk</em></strong></p>\r\n', '2015-09-09 09:16:25', '1', 'windows-10-bi-tay-chay-vi-xam-pham-rieng-tu_29118408.png', 'windows 10, microsoft, cong nghe', 'windows-10-bi-tay-chay-vi-xam-pham-rieng-tu');
INSERT INTO `articles` VALUES ('2', 'Công nghệ biến màn hình điện thoại thành pin Mặt Trời trong suốt', 'Công ty Ubiquitous Energy có trụ sở tại Thung lũng Silicon, Mỹ đang có kế hoạch sản xuất một loại pin Mặt Trời mới trong suốt, phủ lên màn hình điện thoại và cửa sổ trong tương lai...', '<p>C&ocirc;ng ty Ubiquitous Energy c&oacute; trụ sở tại Thung lũng Silicon, Mỹ đang c&oacute; kế hoạch sản xuất một loại pin Mặt Trời mới trong suốt, phủ l&ecirc;n m&agrave;n h&igrave;nh điện thoại v&agrave; cửa sổ trong tương lai.</p>\r\n\r\n<p><img alt=\"\" src=\"http://myblog.cu/img/articles/pin-mat-troi.png\" style=\"height:320px; width:670px\" /></p>\r\n\r\n<p>Pin Mặt Trời ng&agrave;y c&agrave;ng phổ biến nhưng con người mới chỉ khai th&aacute;c được một phần rất nhỏ của nguồn năng lượng khổng lồ n&agrave;y. Hiệu suất chuyển h&oacute;a từ quang năng th&agrave;nh điện năng cao nhất mới chỉ đạt 20%. Song song với việc n&acirc;ng cao hiệu suất pin, c&aacute;c nh&agrave; khoa học cũng muốn mở rộng phạm vi lắp đặt v&agrave; ứng dụng c&aacute;c tấm pin. Với pin Mặt Trời trong suốt, thay v&igrave; chỉ c&oacute; thể lắp đặt tr&ecirc;n m&aacute;i nh&agrave;, c&oacute; thể d&ugrave;ng để phủ tr&ecirc;n cửa k&iacute;nh c&aacute;c t&ograve;a nh&agrave; cao tầng hay sử dụng cho c&aacute;c thiết bị điện tử như điện thoại di động.</p>\r\n\r\n<p>Nguy&ecirc;n l&yacute; hoạt động của pin Mặt Trời trong suốt rất đơn giản. &Aacute;nh s&aacute;ng Mặt Trời l&agrave; tập hợp của v&ocirc; số c&aacute;c bước xạ thuộc v&ugrave;ng kh&ocirc;ng nh&igrave;n thấy (hồng ngoại, tử ngoại) v&agrave; c&aacute;c bước xạ thuộc v&ugrave;ng nh&igrave;n thấy. Pin Mặt Trời trong suốt l&agrave; loại pin chỉ chuyển h&oacute;a năng lượng của c&aacute;c bức xạ hồng ngoại v&agrave; tử ngoại th&agrave;nh điện năng, cho &aacute;nh s&aacute;ng nh&igrave;n thấy đi qua. N&oacute;i c&aacute;ch kh&aacute;c, n&oacute; &quot;trong suốt&quot; với mắt người.</p>\r\n\r\n<p>Theo<em>&nbsp;National Geographic,</em>&nbsp;loại vật liệu sử dụng để chế tạo pin Mặt Trời trong suốt l&agrave; vật liệu hữu cơ.</p>\r\n\r\n<p>&quot;Ưu điểm của việc sử dụng vật liệu hữu cơ l&agrave; nguy&ecirc;n liệu lu&ocirc;n sẵn c&oacute; v&agrave; rất phong ph&uacute;,&quot; Nikos Kopidakis, một nh&agrave; nghi&ecirc;n cứu thuộc Ph&ograve;ng th&iacute; nghiệm năng lượng t&aacute;i tạo Mỹ (NREL), cho biết.</p>\r\n\r\n<p>Một ưu điểm nữa của pin vật liệu hữu cơ l&agrave; dễ chế tạo hơn pin Mặt Trời truyền thống. Với c&ocirc;ng nghệ chế tạo pin Mặt Trời hiện tại, cần phải c&oacute; buồng ch&acirc;n kh&ocirc;ng cao v&agrave; l&ograve; nung nhiệt độ cao, 300-400 độ C. Loại pin mới kh&ocirc;ng cần buồng ch&acirc;n kh&ocirc;ng v&agrave; c&oacute; thể chế tạo ở nhiệt độ thường. Với qu&aacute; tr&igrave;nh phủ phim ti&ecirc;u chuẩn hiện nay, c&aacute;c kỹ sư của Ubiquitous c&oacute; thể tạo ra c&aacute;c lớp quang điện hữu cơ c&oacute; độ d&agrave;y chỉ bằng 1/1000 độ d&agrave;y sợi t&oacute;c.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&oacute; một vấn đề với loại pin mới n&agrave;y l&agrave; hiệu suất chưa cao như pin truyền thống. V&igrave; vậy c&aacute;c nh&agrave; nghi&ecirc;n cứu của Ubiquitous sẽ chứng minh t&iacute;nh ứng dụng của pin Mặt Trời trong suốt ở quy m&ocirc; nhỏ trước. Cơ sở sản xuất thử nghiệm của c&ocirc;ng ty đặt tại th&agrave;nh phố Redwood, California hiện đang hợp t&aacute;c với những c&ocirc;ng ty kh&aacute;c để sản xuất c&aacute;c bản mẫu điện thoại th&ocirc;ng minh, đồng hồ v&agrave; thiết bị điện tử nhỏ, sử dụng c&ocirc;ng nghệ pin trong suốt của Ubiquitous. Nếu su&ocirc;n sẻ, trong tương lai, cửa sổ v&agrave; m&agrave;n h&igrave;nh điện thoại di động sẽ được phủ một lớp pin mỏng v&ocirc; h&igrave;nh.</p>\r\n\r\n<p style=\"text-align:right\"><strong>Theo: vnexpress.net</strong></p>\r\n', '2015-09-02 00:00:00', '1', 'pin-mat-troi.png', 'smarphone, cong nghe, battery', 'cong-nghe-bien-man-hinh-dien-thoai-thanh-pin-mat-troi-trong-suot');
INSERT INTO `articles` VALUES ('3', 'Win 10 có thể phát hiện và ngăn chặn bạn sử dụng phần mềm lậu', 'Theo nguồn tin mà blogchiasekienthuc.com cập nhật được thì mới đây, Microsoft đã có một điều khoản mới được thêm vào văn bản thỏa thuận người dùng EULA, áp dụng đối với những người sử dụng Windows 10...', '<p>Theo nguồn tin cập nhật được th&igrave; mới đ&acirc;y, Microsoft đ&atilde; c&oacute; một điều khoản mới được th&ecirc;m v&agrave;o văn bản thỏa thuận người d&ugrave;ng EULA, &aacute;p dụng đối với những người sử dụng Windows 10. Trong đ&oacute; Microsoft cho biết, họ sẽ kiểm tra to&agrave;n bộ hệ thống m&aacute;y t&iacute;nh của bạn để ph&aacute;t hiện c&aacute;c phần mềm c&oacute; bản cập nhật mới v&agrave; tự động tải về c&aacute;c bản cập nhật đ&oacute;.</p>\r\n\r\n<p>Tuy nhi&ecirc;n c&ugrave;ng với việc kiểm tra to&agrave;n bộ hệ thống, Microsoft sẽ ph&aacute;t hiện c&aacute;c phần mềm v&agrave; game kh&ocirc;ng c&oacute; bản quyền, cũng như c&aacute;c thiết bị ngoại vi tr&aacute;i ph&eacute;p. Từ đ&oacute; hệ điều h&agrave;nh n&agrave;y c&oacute; thể từ chối truy cập, cho đến khi bạn nhận được bản cập nhật mới nhất. Tất nhi&ecirc;n l&agrave; chỉ khi bạn đ&atilde; đăng k&yacute; sử dụng phần mềm v&agrave; game bản quyền.</p>\r\n\r\n<p><img alt=\"\" src=\"http://myblog.cu/img/articles/Tim-moi-ve-Windows-10.png\" style=\"height:320px; width:670px\" /></p>\r\n\r\n<p>Điều khoản mới n&agrave;y khiến kh&ocirc;ng &iacute;t người lo ngại việc sử dụng c&aacute;c phần mềm v&agrave; game lậu sẽ bị ph&aacute;t hiện. B&ecirc;n cạnh đ&oacute; điều khoản li&ecirc;n quan tới c&aacute;c thiết bị ngoại vi tr&aacute;i ph&eacute;p khiến nhiều người kh&oacute; hiểu, kh&ocirc;ng biết rằng c&aacute;c thiết bị trong danh s&aacute;ch n&agrave;y l&agrave; c&aacute;c thiết bị kh&ocirc;ng r&otilde; nguồn gốc hay bị liệt v&agrave;o danh s&aacute;ch mất cắp.</p>\r\n\r\n<p>Hiểu một c&aacute;ch r&otilde; r&agrave;ng hơn, Windows 10 sẽ qu&eacute;t to&agrave;n bộ hệ thống để ph&aacute;t hiện phần mềm n&agrave;o c&oacute; bản cập nhật mới v&agrave; sẽ tự động cập nhật. Từ đ&oacute; hệ thống c&oacute; thể ph&aacute;t hiện c&aacute;c phần mềm v&agrave; game lậu, do th&ocirc;ng thường c&aacute;c phần mềm lậu sẽ kh&ocirc;ng được nhận c&aacute;c bản update. Windows 10 sẽ ngừng truy cập v&agrave;o c&aacute;c phần mềm n&agrave;y cho đến khi n&oacute; được c&agrave;i đặt bản cập nhật mới nhất.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&ocirc;ng r&otilde; l&agrave; liệu Microsoft c&oacute; cung cấp th&ocirc;ng tin về việc sử dụng phần mềm lậu với c&aacute;c b&ecirc;n thứ 3 hay kh&ocirc;ng. V&igrave; điều n&agrave;y c&oacute; thể l&agrave; bằng chứng để c&aacute;c h&atilde;ng phần mềm khởi kiện việc d&ugrave;ng phần mềm kh&ocirc;ng c&oacute; bản quyền.</p>\r\n\r\n<p>Hiện tại Microsoft vẫn chưa đưa ra bất kỳ lời b&igrave;nh luận hay giải th&iacute;ch r&otilde; r&agrave;ng n&agrave;o về điều khoản mới n&agrave;y. R&otilde; r&agrave;ng l&agrave; c&aacute;c điều khoản n&agrave;y sẽ g&acirc;y ra c&aacute;c lo ngại đặc biệt nghi&ecirc;m trọng về quyền ri&ecirc;ng tư của người d&ugrave;ng. Thậm ch&iacute; tệ hơn l&agrave; ch&uacute;ng ta sẽ kh&ocirc;ng c&ograve;n được sử dụng c&aacute;c phần mềm cr@ck nữa.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-09-10 00:00:00', '3', 'Tim-moi-ve-Windows-10.png', 'win 10, thu thuat, microsoft', 'win-10-co-the-phat-hien-va-ngan-chan-ban-su-dung-phan-mem-lau');
INSERT INTO `articles` VALUES ('40', 'Tạo USB Recovery cho Windows 10', 'Nếu Windows 10 của bạn gặp vấn đề trong quá trình sử dụng, bạn có thể nhanh chóng sử dụng USB Recovery đã tạo trước đó để tiến hành phục hồi lại hệ thống Windows 10 của bạn về lại trạng thái bình thường lúc bạn khởi tạo thiết bị recovery...', '<p>Nếu Windows 10 của bạn gặp vấn đề trong qu&aacute; tr&igrave;nh sử dụng, bạn c&oacute; thể nhanh ch&oacute;ng sử dụng USB Recovery đ&atilde; tạo trước đ&oacute; để tiến h&agrave;nh phục hồi lại hệ thống Windows 10 của bạn về lại trạng th&aacute;i b&igrave;nh thường l&uacute;c bạn khởi tạo thiết bị recovery.</p>\r\n\r\n<p><img alt=\"\" src=\"http://sifoni.cc/uploads/img/articles/tao-usb-recovery-cho-windows-10.jpg\" style=\"height:398px; width:640px\" /></p>\r\n\r\n<p>Tương tự như Windows 8.1, Windows 10 cũng được trang bị t&iacute;nh năng khởi tạo USB Recovery để người d&ugrave;ng sử dụng khi cần thiết. Ưu điểm của t&iacute;nh năng n&agrave;y l&agrave; thời gian kh&ocirc;i phục nhanh v&agrave; vẫn giữ nguy&ecirc;n t&igrave;nh trạng đ&atilde; k&iacute;ch hoạt bản quyền trước đ&oacute;. Nếu bạn quan t&acirc;m, c&oacute; thể k&iacute;ch hoạt v&agrave; sử dụng t&iacute;nh năng n&agrave;y bằng c&aacute;ch l&agrave;m sau đ&acirc;y.</p>\r\n\r\n<p><strong>Hướng dẫn tạo USB Recovery để phục hồi hệ thống cho Windows 10</strong></p>\r\n\r\n<p>Kết nối USB v&agrave;o m&aacute;y t&iacute;nh, sau đ&oacute; bạn h&atilde;y truy cập v&agrave;o Control Panel &gt; Recovery hoặc nhập từ kh&oacute;a &quot;recovery&quot; v&agrave;o &ocirc; t&igrave;m kiếm v&agrave; nhấn v&agrave;o kết quả Recovery.</p>\r\n\r\n<p><img alt=\"\" src=\"http://sifoni.cc/uploads/img/articles/tao-usb-recovery-cho-windows-10.png\" style=\"height:526px; width:640px\" /></p>\r\n\r\n<p>Trong cửa sổ Recovery, bạn h&atilde;y nhấp v&agrave;o t&ugrave;y chọn Create a recovery drive.</p>\r\n\r\n<p><img alt=\"\" src=\"http://sifoni.cc/uploads/img/articles/tao-usb-recovery-cho-windows-10 (1).png\" style=\"height:351px; width:640px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-09-10 00:00:00', '3', 'tao-usb-recovery-cho-windows-10.jpg', 'recovery, thu thuat, USB, windows 10', 'tao-usb-recovery-cho-windows-10');
INSERT INTO `articles` VALUES ('41', 'Biến laptop đang chạy Windows 10 thành “trạm” phát sóng Wifi', 'Tương tự như Windows 8.1, Windows 10 vẫn cho phép người dùng thiết lập tính năng phát wifi để chia sẻ kết nối đến với các thiết bị không dây khác. Tuy nhiên, mặc định tính năng này đã bị ẩn, và bạn cần phải trải qua vài thao tác để có thể kích hoạt được nó...', '<p>Tương tự như Windows 8.1, Windows 10 vẫn cho ph&eacute;p người d&ugrave;ng thiết lập t&iacute;nh năng ph&aacute;t wifi để chia sẻ kết nối đến với c&aacute;c thiết bị kh&ocirc;ng d&acirc;y kh&aacute;c. Tuy nhi&ecirc;n, mặc định t&iacute;nh năng n&agrave;y đ&atilde; bị ẩn, v&agrave; bạn cần phải trải qua v&agrave;i thao t&aacute;c để c&oacute; thể k&iacute;ch hoạt được n&oacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://sifoni.cc/uploads/img/articles/bien-laptop-dang-chay-windows-10-thanh-tram-phat-song-wifi.png\" style=\"height:320px; width:640px\" /></p>\r\n\r\n<p>B&agrave;i viết n&agrave;y sẽ hướng dẫn bạn đọc c&aacute;ch k&iacute;ch hoạt t&iacute;nh năng ph&aacute;t wifi tr&ecirc;n laptop đang chạy Windows 10 theo phương ph&aacute;p thủ c&ocirc;ng v&agrave; bằng c&ocirc;ng cụ của b&ecirc;n thứ 3. Nếu quan t&acirc;m, mời bạn theo d&otilde;i sau đ&acirc;y.</p>\r\n\r\n<p><strong>C&aacute;ch thủ c&ocirc;ng</strong></p>\r\n\r\n<p>Nhấn phải chuột v&agrave;o n&uacute;t Start v&agrave; chọn lệnh Command Prompt (Admin).</p>\r\n\r\n<p>Hộp thoại Command Prompt xuất hiện, bạn h&atilde;y nhập v&agrave;o d&ograve;ng lệnh sau, trong đ&oacute; ten_wifi sẽ l&agrave; t&ecirc;n của s&oacute;ng wifi m&agrave; laptop bạn ph&aacute;t ra v&agrave; mat_khau l&agrave; kh&oacute;a bảo vệ m&agrave; bạn sẽ thiết lập để tr&aacute;nh c&aacute;c kết nối kh&ocirc;ng mong muốn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2015-09-13 00:00:00', '3', 'bien-laptop-dang-chay-windows-10-thanh-tram-phat-song-wifi.png', 'thu thuat, laptop, phat wifi, windows 10', 'bien-laptop-dang-chay-windows-10-thanh-tram-phat-song-wifi');
INSERT INTO `articles` VALUES ('42', 'Kinh nghiệm sử dụng Laptop và những thói quen xấu nên bỏ', 'Máy tính Laptop là một thiết bị không thể thiếu trong thời buổi công nghệ hiện nay, nó đáp ứng được hầu hết các như cầu cơ bản của bạn ví dụ như học tập, làm việc, giải trí…', '<p>M&aacute;y t&iacute;nh Laptop l&agrave; một thiết bị kh&ocirc;ng thể thiếu trong thời buổi c&ocirc;ng nghệ hiện nay, n&oacute; đ&aacute;p ứng được hầu hết c&aacute;c như cầu cơ bản của bạn v&iacute; dụ như&nbsp;học tập, l&agrave;m việc,&nbsp;giải tr&iacute;&hellip; So với m&aacute;y t&iacute;nh PC (m&aacute;y t&iacute;nh để b&agrave;n) th&igrave; Laptop được ưa chuộng hơn rất nhiều bởi t&iacute;nh&nbsp;linh hoạt, dễ d&agrave;ng di chuyển&nbsp;v&agrave;&nbsp;thuận tiện cho bạn c&oacute; thể l&agrave;m việc ở bất cứ đ&acirc;u m&agrave; bạn cảm thấy thỏa m&aacute;i nhất.</p>\r\n\r\n<p>Bất cứ một chiếc m&aacute;y m&oacute;c n&agrave;o, một thiết bị n&agrave;o,&nbsp;nếu như bạn t&igrave;m hiểu kỹ về ch&uacute;ng v&agrave; sử dụng n&oacute; một c&aacute;ch cẩn thận v&agrave; đ&uacute;ng c&aacute;ch th&igrave; thiết bị đ&oacute; sẽ&nbsp;rất bền, &ldquo;của bền tại người&rdquo; m&agrave; đ&uacute;ng kh&ocirc;ng&nbsp;.Ch&iacute;nh v&igrave; thế trong b&agrave;i viết n&agrave;y,&nbsp;blogchiasekienthuc.com&nbsp;sẽ chia sẻ với c&aacute;c bạn một số&nbsp;<strong>kinh nghiệm&nbsp;sử dụng laptop</strong>&nbsp;cũng như&nbsp;<strong>những th&oacute;i quen xấu khi sử dụng Laptop</strong>m&agrave; bạn n&ecirc;n bỏ hoặc thay đổi ngay để c&oacute; thể sử dụng Laptop đ&uacute;ng c&aacute;ch nhất.<br />\r\n<br />\r\n<img alt=\"\" src=\"http://sifoni.cc/uploads/img/articles/kinh-nghiem-su-dung-laptop-1.png\" style=\"height:320px; width:670px\" /></p>\r\n\r\n<h2><strong>Th&oacute;i quen xấu khi sử dụng Laptop</strong></h2>\r\n\r\n<p>Sau đ&acirc;y m&igrave;nh sẽ liệt k&ecirc; những th&oacute;i quen xấu&nbsp;khi sử dụng Laptop m&agrave; bạn n&ecirc;n thay đổi&nbsp;để c&oacute; được một chiếc Laptop lu&ocirc;n &ldquo;khỏe mạnh&rdquo; v&agrave; hoạt động ổn định nhất. C&ograve;n thiếu x&oacute;t g&igrave; th&igrave; c&aacute;c bạn đ&oacute;ng g&oacute;p th&ecirc;m nh&eacute;</p>\r\n\r\n<h3><strong>Kh&ocirc;ng sử dụng đế tản nhiệt</strong></h3>\r\n\r\n<p>Đ&acirc;y thực sự l&agrave; một th&oacute;i quen &ldquo;rất xấu&rdquo; chứ kh&ocirc;ng đơn thuần&nbsp;l&agrave; &ldquo;xấu&rdquo; nữa. M&agrave; o&aacute;i oăm một điều l&agrave; hầu như ai cũng mắc phải, rất &iacute;t người c&oacute; th&oacute;i quen sử dụng đế tản nhiệt. Sau một khoảng thời gian hoạt động,&nbsp;Laptop của bạn sẽ bị n&oacute;ng dần l&ecirc;n, điều n&agrave;y sẽ c&oacute; rất nhiều t&aacute;c hại, v&iacute; dụ:</p>\r\n\r\n<ul>\r\n	<li>G&acirc;y cảm gi&aacute;c kh&oacute; chịu khi l&agrave;m việc, v&igrave; 2 tay của bạn sẽ tỳ l&ecirc;n Laptop trong qu&aacute; tr&igrave;nh sử dụng. M&agrave; laptop n&oacute;ng th&igrave; sẽ g&acirc;y cảm gi&aacute;c rất kh&oacute; chịu đ&uacute;ng kh&ocirc;ng, c&aacute;i n&agrave;y kh&ocirc;ng cần n&oacute;i th&igrave; bạn cũng biết</li>\r\n	<li>Hao Pin v&agrave; nhanh bị chai Pin hơn &gt; nhanh hỏng.</li>\r\n	<li>Hỏng phần cứng&hellip; một khi m&aacute;y t&iacute;nh n&oacute;ng th&igrave; sẽ bị ảnh hưởng đến c&aacute;c linh kiện b&ecirc;n trong Laptop &gt; nhanh hỏng.</li>\r\n	<li>&hellip;&hellip; v&agrave; nhiều ảnh hưởng xấu kh&aacute;c.</li>\r\n</ul>\r\n', '2015-09-10 00:00:00', '3', 'kinh-nghiem-su-dung-laptop-1.png', 'thu thuat, laptop', 'kinh-nghiem-su-dung-laptop-va-nhung-thoi-quen-xau-nen-bo');

-- ----------------------------
-- Table structure for articles_tags
-- ----------------------------
DROP TABLE IF EXISTS `articles_tags`;
CREATE TABLE `articles_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `articles_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  CONSTRAINT `articles_tags_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles_tags
-- ----------------------------
INSERT INTO `articles_tags` VALUES ('18', '2', '4');
INSERT INTO `articles_tags` VALUES ('19', '2', '2');
INSERT INTO `articles_tags` VALUES ('20', '2', '5');
INSERT INTO `articles_tags` VALUES ('57', '1', '9');
INSERT INTO `articles_tags` VALUES ('58', '1', '3');
INSERT INTO `articles_tags` VALUES ('59', '1', '2');
INSERT INTO `articles_tags` VALUES ('87', '3', '1');
INSERT INTO `articles_tags` VALUES ('88', '3', '6');
INSERT INTO `articles_tags` VALUES ('89', '3', '3');
INSERT INTO `articles_tags` VALUES ('94', '40', '8');
INSERT INTO `articles_tags` VALUES ('95', '40', '6');
INSERT INTO `articles_tags` VALUES ('96', '40', '7');
INSERT INTO `articles_tags` VALUES ('97', '40', '9');
INSERT INTO `articles_tags` VALUES ('106', '42', '6');
INSERT INTO `articles_tags` VALUES ('107', '42', '10');
INSERT INTO `articles_tags` VALUES ('108', '41', '6');
INSERT INTO `articles_tags` VALUES ('109', '41', '10');
INSERT INTO `articles_tags` VALUES ('110', '41', '11');
INSERT INTO `articles_tags` VALUES ('111', '41', '9');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Khoa học - Công nghệ', 'khoa-hoc-cong-nghe');
INSERT INTO `categories` VALUES ('3', 'Thủ thuật máy tính', 'thu-thuat-may-tinh');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `article_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_ID` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('3', 'thế này thì ae khổ rồi :v', '2015-09-03 00:00:00', '2', '3');
INSERT INTO `comments` VALUES ('6', 'this is a test', '2015-09-14 00:00:00', '2', '2');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('3', 'Tống Duy Tân', 'duytan.uit@gmail.com', '01284 090 893', 'TP.Hồ Chí Minh', 'Nội dung còn khá ít :D');
INSERT INTO `contact` VALUES ('4', 'Đỗ Bảo Thành', 'thanhdb@gmail.com', '01284 475 890', 'TP.Hồ Chí Minh', 'Nhìn cũng được ak :v');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bill` float NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_book` datetime NOT NULL,
  `number` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`title`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payments
-- ----------------------------
INSERT INTO `payments` VALUES ('32', '560000', '2', 'Love you forever', '2015-09-03 00:00:00', '1', 'đang giao hàng');
INSERT INTO `payments` VALUES ('33', '440000', '2', 'Sinh nhật hồng', '2015-09-03 00:00:00', '1', 'chờ xét duyệt...');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float(10,0) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('3', 'lan_ho_diep_mini_1.jpg', 'Lan hồ điệp mini', '600000', '<h4><span style=\"color:#008000\">LAN HỒ ĐIỆP MINI 1</span></h4>\r\n\r\n<p>Lan hồ điệp 2 v&ograve;i - 2 chậu<br />\r\nNguyệt quế - 2 chậu<br />\r\nChậu sứ&nbsp;<br />\r\n<br />\r\nM&atilde; sản phẩm :&nbsp;WNMPA0013</p>\r\n\r\n<p>M&agrave;u :&nbsp;T&iacute;m</p>\r\n');
INSERT INTO `products` VALUES ('4', 'huong_duong_hoong_cam.jpg', 'Mặt trời bé con', '700000', '<h4><span style=\"color:#008000\">NHỮNG MẶT TRỜI B&Eacute; CON</span></h4>\r\n\r\n<p>Hướng dương - 5 c&agrave;nh<br />\r\nHoa hồng v&agrave;ng - 10 c&agrave;nh<br />\r\nHoa hồng cam - 10 c&agrave;nh&nbsp;<br />\r\nSao t&iacute;m -1 b&oacute;<br />\r\nĐu&ocirc;i chồn - 1 b&oacute;<br />\r\nDương xỉ- 10 c&agrave;nh<br />\r\nHộp gỗ, foam</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WBDAR0017</p>\r\n\r\n<p>M&agrave;u :&nbsp;V&agrave;ng</p>\r\n');
INSERT INTO `products` VALUES ('5', 'hong_cam_chung.jpg', 'Giao hưởng mùa xuân', '450000', '<h4><span style=\"color:#008000\">GIAO HƯỞNG M&Ugrave;A XU&Acirc;N</span></h4>\r\n\r\n<p>Bao gồm:<br />\r\n<br />\r\nHoa hồng - 10 c&agrave;nh<br />\r\nCẩm chướng nh&aacute;nh - 20 c&agrave;nh<br />\r\nKỳ l&acirc;n - 10 c&agrave;nh<br />\r\nL&aacute; chanh - 10 c&agrave;nh<br />\r\nGiỏ bố</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WNMAR0021</p>\r\n\r\n<p>M&agrave;u :&nbsp;Hồng / T&iacute;m</p>\r\n');
INSERT INTO `products` VALUES ('6', 'cam_chuong_calimero_trang.jpg', 'Sinh nhật hồng', '440000', '<h4><span style=\"color:#008000\">SINH NHẬT HỒNG</span></h4>\r\n\r\n<p>B&igrave;nh hoa bao gồm:<br />\r\n<br />\r\nHoa hồng hồng - 20 c&agrave;nh<br />\r\nCẩm chướng đơn đỏ - 20 c&agrave;nh<br />\r\nCalimero trắng - 10 c&agrave;nh<br />\r\nL&aacute; chanh - 10 c&agrave;nh<br />\r\nB&igrave;nh sứ, phụ liệu</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WBDAR0015</p>\r\n\r\n<p>M&agrave;u :&nbsp;Hồng</p>\r\n');
INSERT INTO `products` VALUES ('7', 'hong_tim_cuc_1.jpg', 'Lời chúc đặc biệt', '360000', '<h4><span style=\"color:#008000\">LỜI CH&Uacute;C ĐẶC BIỆT</span></h4>\r\n\r\n<p>Hoa hồng m&agrave;u hồng - 10 c&agrave;nh<br />\r\nHoa hồng t&iacute;m - 10 c&agrave;nh<br />\r\nC&uacute;c xanh - 5 c&agrave;nh<br />\r\nC&aacute;t tường - 5 c&agrave;nh<br />\r\nLan chi - 1 b&oacute;<br />\r\nĐế nhựa<br />\r\nGiấy g&oacute;i, nơ</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WCGBQ0015</p>\r\n');
INSERT INTO `products` VALUES ('8', 'binh_hoa_s.jpg', 'Mẹ tuyệt nhất', '400000', '<h4><span style=\"color:#008000\">MẸ TUYỆT NHẤT!</span></h4>\r\n\r\n<p>Thủy ti&ecirc;n -10 c&agrave;nh<br />\r\nCẩm chướng đơn v&agrave;ng - 10 c&agrave;nh<br />\r\nCalimero trắng - 10 c&agrave;nh<br />\r\nGreen Wicky - 5 c&agrave;nh<br />\r\nL&aacute; chanh - 10 c&agrave;nh<br />\r\nB&igrave;nh, foam</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WMDAR0003</p>\r\n\r\n<p>M&agrave;u :&nbsp;Trắng / V&agrave;ng</p>\r\n');
INSERT INTO `products` VALUES ('9', 'hong_tim_cat_tuong_tim.jpg', 'Nỗi nhớ dịu êm', '280000', '<h4><span style=\"color:#008000\">NỖI NHỚ DỊU &Ecirc;M</span></h4>\r\n\r\n<p>Hoa hồng t&iacute;m - 10 c&agrave;nh<br />\r\nSao biển - 10 c&agrave;nh<br />\r\nC&aacute;t tường trắng viền t&iacute;m - 5 c&agrave;nh<br />\r\nLan chi - 1 b&oacute;<br />\r\nĐế nhựa<br />\r\nGiấy b&aacute;o, nơ</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WLRBQ0015</p>\r\n\r\n<p>M&agrave;u :&nbsp;T&iacute;m</p>\r\n');
INSERT INTO `products` VALUES ('10', 'hong_trang_ky_lan2.jpg', 'Dẫn lối con tim', '520000', '<h4><span style=\"color:#008000\">DẪN LỐI CON TIM</span></h4>\r\n\r\n<p>Hoa hồng trắng - 20 c&agrave;nh<br />\r\nKỳ L&acirc;n - 20 c&agrave;nh<br />\r\nLan chi - 1 b&oacute;<br />\r\nL&aacute; chanh - 10 c&agrave;nh<br />\r\nDương xỉ - 20 c&agrave;nh<br />\r\nĐế nhựa<br />\r\nGiấy g&oacute;i, nơ</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WLRBQ0013</p>\r\n\r\n<p>M&agrave;u :&nbsp;T&iacute;m / Trắng</p>\r\n');
INSERT INTO `products` VALUES ('11', 'cat_tuong_hong_vang.jpg', 'Tình yêu màu xanh', '440000', '<h4><span style=\"color:#008000\">T&Igrave;NH Y&Ecirc;U M&Agrave;U XANH</span></h4>\r\n\r\n<p>Hoa hồng v&agrave;ng - 10 c&agrave;nh<br />\r\nGreen Wicky - 5 c&agrave;nh<br />\r\nKiết tường trắng - 5 c&agrave;nh<br />\r\nCalimero v&agrave;ng - 10 c&agrave;nh<br />\r\nCẩm chướng đơn xanh - 10 c&agrave;nh<br />\r\nL&aacute; chanh - 10 c&agrave;nh<br />\r\nGiỏ m&acirc;y, foam</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WLRAR0016</p>\r\n\r\n<p>M&agrave;u :&nbsp;Trắng / V&agrave;ng / Xanh l&aacute;</p>\r\n');
INSERT INTO `products` VALUES ('12', 'dsc_3209.jpg', 'Khúc nhạc vui', '360000', '<h4>KH&Uacute;C NHẠC VUI</h4>\r\n\r\n<p>Hướng dương - 10 b&ocirc;ng<br />\r\nKiết tường - 5 c&agrave;nh<br />\r\nL&aacute; chanh - 10 l&aacute; chanh<br />\r\nSao t&iacute;m<br />\r\nChậu sứ nhỏ</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WWDAR0007</p>\r\n\r\n<p>M&agrave;u :&nbsp;Hồng / V&agrave;ng</p>\r\n');
INSERT INTO `products` VALUES ('13', 'banh_hoa_sinh_nhat.jpg', 'Chiếc bánh hoa độc đáo', '376000', '<h4><span style=\"color:#008000\">CHIẾC B&Aacute;NH HOA ĐỘC Đ&Aacute;O</span></h4>\r\n\r\n<p>Chiếc b&aacute;nh sinh nhật đặc biệt l&agrave;m từ c&aacute;c loại hoa sẽ l&agrave; một bất ngờ dễ thương d&agrave;nh cho người th&acirc;n khi họ bước sang một tuổi mới.&nbsp;<br />\r\n<br />\r\nVui l&ograve;ng đặt trước 2 ng&agrave;y đối với mẫu n&agrave;y.</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WBDAR0005</p>\r\n\r\n<p>M&agrave;u :&nbsp;Hồng / T&iacute;m / Trắng</p>\r\n');
INSERT INTO `products` VALUES ('14', 'red_naomi.jpg', 'Love you forever', '560000', '<h4><span style=\"color:#008000\">LOVE YOU FOREVER</span></h4>\r\n\r\n<p>Rose Red Naomi - 20 c&agrave;nh<br />\r\nKiết tuờng t&iacute;m - 10 c&agrave;nh<br />\r\nChuỗi ngọc - 10 c&agrave;nh<br />\r\nDuơng sĩ - 20 c&agrave;nh<br />\r\nĐế nhựa<br />\r\nGiấy g&oacute;i, nơ</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WLRBQ0014</p>\r\n\r\n<p>M&agrave;u :&nbsp;Đỏ</p>\r\n');
INSERT INTO `products` VALUES ('15', 'hoa_hong_tim_do_small.png', 'Cuộc sống tươi đẹp', '320000', '<h4><span style=\"color:#008000\">CUỘC SỐNG TƯƠI ĐẸP</span></h4>\r\n\r\n<p>Cuộc sống tươi đẹp được x&acirc;y đắp n&ecirc;n từ t&igrave;nh y&ecirc;u v&agrave; nếu bạn đang thực sự hạnh ph&uacute;c trong t&igrave;nh y&ecirc;u, h&atilde;y thể hiện điều n&agrave;y bằng một b&oacute; hoa hồng đầy sắc m&agrave;u của Dalat Hasfarm để n&oacute;i với những người phụ nữ của m&igrave;nh điều đ&oacute;<br />\r\n&nbsp;</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WWDBQ0001</p>\r\n\r\n<p>M&agrave;u :&nbsp;T&iacute;m / Đỏ</p>\r\n');
INSERT INTO `products` VALUES ('16', 'hong_vang_cat_tuong_trang.jpg', 'Chân trời tươi sáng', '280000', '<h4><span style=\"color:#008000\">CH&Acirc;N TRỜI TƯƠI S&Aacute;NG</span></h4>\r\n\r\n<p>Hoa hồng v&agrave;ng - 10 c&agrave;nh<br />\r\nC&aacute;t tường trắng - 5 c&agrave;nh<br />\r\nSao biển - 10 c&agrave;nh<br />\r\nLan chi - 1 b&oacute;<br />\r\nĐế nhựa<br />\r\nGiấy g&oacute;i, nơ</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WCGBQ0013</p>\r\n\r\n<p>M&agrave;u :&nbsp;Trắng / V&agrave;ng / Xanh l&aacute;</p>\r\n');
INSERT INTO `products` VALUES ('18', 'gio_hong_calimero.jpg', 'Lời tỏ tình', '300000', '<h4><span style=\"color:#008000\">LỜI TỎ T&Igrave;NH</span></h4>\r\n\r\n<p>Hồng đỏ - 10 c&agrave;nh<br />\r\nCalimero trắng - 10 c&agrave;nh<br />\r\nDương sĩ - 10 c&agrave;nh<br />\r\nĐế nhựa<br />\r\nGiấy g&oacute;i, nơ</p>\r\n\r\n<p>M&atilde; sản phẩm :&nbsp;WNMBQ0017</p>\r\n\r\n<p>M&agrave;u :&nbsp;Trắng / Đỏ</p>\r\n');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'win 10', 'win-10');
INSERT INTO `tags` VALUES ('2', 'cong nghe', 'cong-nghe');
INSERT INTO `tags` VALUES ('3', 'microsoft', 'microsoft');
INSERT INTO `tags` VALUES ('4', 'smarphone', 'smarphone');
INSERT INTO `tags` VALUES ('5', 'battery', 'battery');
INSERT INTO `tags` VALUES ('6', 'thu thuat', 'thu-thuat');
INSERT INTO `tags` VALUES ('7', 'USB', 'usb');
INSERT INTO `tags` VALUES ('8', 'recovery', 'recovery');
INSERT INTO `tags` VALUES ('9', 'windows 10', 'windows-10');
INSERT INTO `tags` VALUES ('10', 'laptop', 'laptop');
INSERT INTO `tags` VALUES ('11', 'phat wifi', 'phat-wifi');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`,`body`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'MySQL Tutorial', 'DBMS stands for DataBase ...');
INSERT INTO `test` VALUES ('2', 'How To Use MySQL Well', 'After you went through a ...');
INSERT INTO `test` VALUES ('3', 'Optimizing MySQL', 'In this tutorial we will show ...');
INSERT INTO `test` VALUES ('4', '1001 MySQL Tricks', '1. Never run mysqld as root. 2. ...');
INSERT INTO `test` VALUES ('5', 'MySQL vs. YourSQL', 'In the following database comparison ...');
INSERT INTO `test` VALUES ('6', 'MySQL Security', 'When configured properly, MySQL ...');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'duytan.uit@gmail.com', '398e41332ec453c17cb7db40ed34f04f', 'tan_ozu', '01284 090 893', 'xã Bạch Đằng, thị xã Tân Uyên, tỉnh Bình Dương', 'Tống Duy Tân');
INSERT INTO `users` VALUES ('3', 'thanhdb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'thanhdb', '01284 475 890', 'Đắc-Lắck', 'Đỗ Bảo Thành');
INSERT INTO `users` VALUES ('5', 'phuonglv94@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'phuongvl', '01284 475 890', 'Trà Vinh', 'Lâm Vĩ Phượng');
INSERT INTO `users` VALUES ('6', 'mymy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'mimi', '01283 940 209', 'Phú Yên', 'Dương Thị Mỹ');
INSERT INTO `users` VALUES ('7', 'hungtm@gmail.com', 'c33367701511b4f6020ec61ded352059', 'baobao', '01284 475 890', 'Quảng Bình', 'Trần Mạnh Hùng');
INSERT INTO `users` VALUES ('10', 'tantd.uit@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', '01284 090 893', 'Bình Dương', 'Tống Duy Tân');
