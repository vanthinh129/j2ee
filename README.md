# j2ee
Chuyên đề J2EE - Đồ án Shop bán hàng online

Giáo viên hướng dẫn: Nguyễn Trác Thức

Thành viên: Nguyễn Văn Thịnh - 10520138, Phạm Hoàng Thiện - 13520818

Hướng dẫn cài đặt

	1/ Cài đặt Eclipse for EE: http://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/keplersr2
	2/ Khởi động Eclipse và Import project với file Shop.war: File->Import->Web->WAR file
	3/ Cài đặt Tomcat(7): Tải và giải nén https://tomcat.apache.org/download-70.cgi, sau đó khai báo trong Eclipse: Window->Preferences->Server->Runtime Enviroments->Add: Chọn Create a new local server->Next->Browse đến thư mục đã giải nén Tomcat
	4/ Database: Cài đặt mysql và import file shop.sql, cấu hình thông tin database trong file: Shop\src\connect\DBConnect.java
	5/ Run, truy cập vào địa chỉ http://localhost:8080/Shop/Index.jsp, trang quản lý: http://localhost:8080/Shop/Admin/index.jsp
Liên hệ: vanthinh291@gmail.com (Nguyễn Văn Thịnh)
