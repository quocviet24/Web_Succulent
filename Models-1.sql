USE [master]
GO
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Succulent')
BEGIN
	ALTER DATABASE Succulent SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE Succulent SET ONLINE;
	DROP DATABASE Succulent;
END

GO

CREATE DATABASE Succulent

GO
USE Succulent
GO

/*******************************************************************************
	Drop tables if exists
*******************************************************************************/
 

/*******************************************************************************
	Create table
*******************************************************************************/

CREATE TABLE Accounts(
	Username nvarchar(30) PRIMARY KEY,
	Password nvarchar(30),
	Role int
)



SELECT * FROM Succulents WHERE NameSucculent COLLATE Vietnamese_CI_AS LIKE N'%n%';

	update Succulent set name=?, mark=? where rollno=?

CREATE TABLE Succulents(
	IDSu int IDENTITY(1, 1) PRIMARY KEY,
	[NameSucculent] nvarchar(40),
	Quantity int,
	Price decimal(10,2),
	Describe nvarchar(MAX),
	img nvarchar(300),
	category int,
	meaning nvarchar(MAX),
	grow nvarchar(MAX)
)

update Succulents set NameSucculent='TEST!', Quantity=15 , Price=16 , Describe='xinchao', img='co', category=2, meaning='xinchao', grow='xinchao' where IDSU=20

select * from Succulents where IDSu=2

CREATE TABLE Orders(
	Order_ID int IDENTITY (1, 1) PRIMARY KEY,
	Username nvarchar(30),
	IDSu int,
	Quantity int,
	price decimal(10,2)
)
CREATE TABLE Bill(
	Bill_ID int IDENTITY(1, 1) PRIMARY KEY,
	Username nvarchar(30),
	IDSu INT foreign key(IDSu) references Succulents(IDSu),
	Quantity int,
	Price decimal(10,2)
)
CREATE TABLE Category(
	IDC int,
	category nvarchar(40)
)
select * from Bill

select * from Orders where Username = 'adminViet'

delete from Orders where IDSu=4 AND Username = 'adminViet'

Insert into Bill values('adminViet',12,1,20000)

Insert into Orders values('adminViet',12,1,20000)

delete from Orders


------------------Trigger------------------
-- Thay đổi số lượng sản phẩm khi bán đi hoặc thêm vào
create or alter trigger QuantityChange_WhenSale on Bill
After insert
AS
BEGIN
	DECLARE @quantity int, @IDSu int;
	SELECT @quantity = i.Quantity, @IDSu = i.IDSu
	FROM inserted i;

	UPDATE Succulents
	set Quantity = Quantity - @quantity
	where IDSu = @IDSu
END

CREATE OR ALTER TRIGGER QuantityChange_WhenAddMore 
ON Succulents
AFTER INSERT
AS
BEGIN
    DECLARE @quantity int, @name nvarchar(20), @price decimal(10,2),@ID int, @img nvarchar(50), @des nvarchar(MAX), @cate int, @mean nvarchar(MAX), @grow nvarchar(MAX);
    SELECT @quantity = i.Quantity, @name = i.NameSucculent, @price = i.Price, @ID = i.IDSu, @img = i.img, @des = i.Describe, @cate = i.category, @mean = i.meaning, @grow = i.grow 
    FROM inserted i;

	delete from Succulents where IDSu = @ID

    IF EXISTS (SELECT 1 FROM Succulents WHERE NameSucculent = @name)
    BEGIN
        UPDATE Succulents
        SET Quantity = Quantity + @quantity
        WHERE NameSucculent = @name AND Price = @price;
    END
    ELSE
    BEGIN
        INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning, grow)
        VALUES (@name, @quantity, @price,@des,@img,@cate,@mean,@grow);
    END
END;


 --------------------------------- insert data -----------------------------
 
 -- Insert ADMIN ACCOUNT
INSERT INTO Accounts(Username, Password, Role) VALUES ('adminViet', '123', 1);
INSERT INTO Accounts(Username, Password, Role) VALUES ('clientViet', '123', 2);

select * from Accounts

-- Insert Succulent
	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning, grow) VALUES (N'Hồng Mập', 20, 20000, N'Sen Đá Hồng Mập là một loài cây thuộc họ Bỏng. Nghĩ tới loài cây này là nghĩ ngay tới những cánh sen đá mọng nước. Phần gốc có màu xanh tía kéo dài đến ngọn là màu hồng bóng mượt rất đẹp. Cây thường mọc thành đài lớn, các cánh sen được xếp sát nhau xoay đều quanh trục tạo thành hình bông hoa sen rất đẹp mắt',
	'https://sendakimcuong.com/wp-content/uploads/2022/09/unnamed-5-2.jpg',1,N'Mặc dù có thân hình nhỏ bé nhưng có loại cây này rất nhiều ý nghĩa ẩn chứa bên trong. <br>Nó thể hiện sự thuỷ chung, vĩnh cửu, tượng trưng cho một mối quan hệ gắn bó bền chặt. Đại diện cho tình yêu chân thành, trường tồn với thời gian. <br>Với màu hồng tím đầy độc đáo, nó còn có ý nghĩa là yêu từ cái nhìn đầu tiên. Vì vậy, nó thường được dùng để trang trí và quà tặng cho những người yêu nhau hoặc dành cho những người mình thương mến.'
	,N'Đây là một loại cây khá dễ trồng và dễ chăm sóc. Giống như những loại Sen Đá khác, cây có thể lai ghép cấy được. Bạn có thể dùng nhánh lá của cây trồng vào một chậu đất nhỏ, chăm sóc tưới nước đều đặn, cố gắng dữ cho đất đủ độ ẩm. Khoảng 1 tháng sau nhánh lá sẽ từ từ mọc rễ và trong một khoảng thời gian đủ dài nhánh lá đó sẽ lớn thành cây mới giống y hệt cây mẹ. Sau đây là các bước cơ bản để trồng em nó tại nhà:
<br>– Bước 1: Cho một ít đất nung lót xuống đáy chậu, thêm một ít đất trồng lên trên.
<br>– Bước 2: Tách cây khỏi bầu, rũ sạch đất.
<br>– Bước 3: Cho cây vào chậu và bổ sung thêm đất và trải tiếp một lớp đất nung lên bề mặt.
<br>
<br>Đất trồng
<br>Sen Đá Hồng Mập có một bộ rễ chùm khoẻ mạnh. Cần chọn loại đất xốp, thoát nước tốt để không gây thối rễ. Khi trồng có thể trộn đất với trấu và các loại phân bón khác để cây có nhiều chất dinh dưỡng để phát triển.
<br>
<br>Ánh sáng
<br>Là một trong những loại cây để bàn có thể sống trong nhiều môi trường ánh sáng khác nhau. Tuy nhiên để phát triển tốt, sen đá cần nhiều ánh sáng. Nếu để trong phòng thì 2 ngày phải mang ra phơi sáng một lần và tránh ánh nắng trực tiếp của mặt trời. Những thay đổi nhiều về ánh sáng có thể khiến cây bị sốc nhiệt.
<br>
<br>Nước tưới
<br>Sen đá có thể chịu được nắng nhưng không chịu được úng. Chính vì vậy bạn cần điều chỉnh lượng nước phù hợp với cây sen đá. Tránh tình trạng thừa nước cây sẽ bị thối vì ngập úng. Ngoài ra, nên dùng nước sạch để tưới cho cây, không tưới bất kỳ hoá chất không rõ nguồn gốc.
<br>
<br>Phân bón
<br>Không cần quá chú trọng đến phân bón vì cây vẫn có thể sống ở điều kiện ít dưỡng chất. Tuy nhiên để lên màu đẹp, ít bệnh và phát triển tốt, ta lên trộn các loại phân hữu cơ đã được xử lý vào trong đất lúc mới trồng. Ngoài ra, có thể bổ sung thêm các chất dinh dưỡng cần thiết khác cho cây trong giai đoạn cây phát triển mạnh.
<br>
<br>Nhiệt độ, độ ẩm
<br>Cây Sen Đá Hồng Mập ưa mát mẻ có nhiệt độ từ 15 – 25 độ C. Độ ẩm từ 35 – 75%.');

	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (N'Chuỗi Ngọc Bi', 10, 25000, N'Mũm mĩn và đầy đặn đó là 2 từ rất hợp lý và chính xác để miêu tả sen đá chuỗi ngọc bi. Là một trong những loại sen đá khi lớn có khả năng rủ xuống và ra hoa, nên nó khiến nhiều người thích ngay từ cái nhìn đầu tiên. Cây phù hợp trồng trong chậu treo để ngoài hàng lang, cửa sổ, sân…', 
	'https://th.bing.com/th/id/R.098d1584608b3e9a632c6a2ab0568fd7?rik=BKpsjIbVR7AQmQ&pid=ImgRaw&r=0',3
	,N' Sen chuỗi ngọc bi tượng trưng cho sự sắt son, thủy chung trong tình yêu và tình bạn. Màu xanh ngọc đẹp mắt, mơn mởn của cây mang đến cảm giác tinh khiết; trong sáng của tình cảm không vụ lợi, toan tính. Sen chuỗi ngọc đứng tượng trưng cho sức sống; niềm hứng khởi, và sự trung thành.'
	,N'CÁCH CHĂM SÓC SEN ĐÁ CHUỖI NGỌC BI
<br>Là loại sen đá mọng nước, nên chuỗi ngọc bi rất ít phải chăm sóc và tưới nước, chỉ cần loại đất có độ mùn và tơi xốp là bạn đã có thể yên tâm, cây phù hợp để nơi bán râm, như hiên, cửa sổ có mái che, dàn sân…
<br>
<br>Nước
<br>Một tuần bạn chỉ cần tưới nước một lần cho cây để đam bảo sự sinh trưởng và phát triển tốt.
<br>
<br>Đất trồng
<br>Loại tơi xốp dễ thoát nước, có thể bạn trộn thêm với tro, chấu, mùn để có loại đất ưa thích cho sen đá chuỗi ngọc bi.
<br>Ánh sáng
<br>Ánh sáng luôn rất cần đối với các loại cây và sen đá chuỗi ngọc bi cũng không là ngoại lệ, nó thích ánh sáng nhất là ánh sáng buổi sớm, nhưng nên tránh những nơi có ánh nắng gắt như buổi trưa trời mùa hè sẽ khiến cây nhanh chóng khô héo.
<br>
<br>Nhân giống
<br>Là loại phát triển rất nhanh sen đá chuỗi ngọc bi có thể nhân giống từ lá hoặc giâm cành đều có thể phát triển thành cây.');

	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (N'Đế Vương', 15, 15000, N'Sen đá đế vương đỏ thuộc họ bỏng là một trong những dòng sen với màu sắc lạ mắt và thu hút người nhìn nhất. 

<br>✦
Lá cây có màu đỏ rực, khi mọc nhìn gần giống hoa thị. 

<br>✦
Hoa đá đế vương đỏ có thân cây màu ngả vàng, đỏ tùy vào kích thước của lá cây mà thân cây cũng to dần. Cây đế vương có lá xếp lên nhau tạo thành hình bông hoa. Khi nở, nhìn cây sẽ như hoa trong hoa. 

<br>✦
Rễ sen đá đế vương đỏ thuộc rễ chùm, toả ra xung quanh vùng đất, giúp thân cây hút đầy đủ chất dinh dưỡng để phát triển. Sen đế vương đỏ có thể mọc tạo thành bụi, khi nó đủ lớn sẽ mọc thành các bụi lớn hơn.', 
	'https://th.bing.com/th/id/R.17a5c6c754aa29919f8bbbe6ee8fa6d7?rik=Kl0JlrqUsscIEw&riu=http%3a%2f%2fvuoncaysenda.com%2fuploads%2fpro_photos%2fsen-da-97-15935967530.jpg&ehk=ykTUPdm5f5%2bmoXGfc3dGgI2Lwx8rWmc9LVUxFol4rgk%3d&risl=&pid=ImgRaw&r=0',2
	,N'Theo các nhà phong thủy học, hình dáng của hoa đá tựa như  đài sen phật của quan âm bồ tát. Do đó cây sen đá đế vương trong phong thủy luôn tượng trưng cho sự may mắn, phú quý, phát tài phát lộc.<br>Nếu bạn sử dụng sen đá để trang trí trên bàn làm việc, loài cây này sẽ tượng trưng cho niềm hy vọng mong muốn sự nghiệp thăng tiến,
	cải thiện quan hệ giữa bạn và sếp, dễ dàng gắn kết với đồng nghiệp.<br>Ngoài ra, cây sen đá đế vương còn mang lại không gian tươi mát cho ngôi nhà của bạn, xua tan phiền muộn lo toan trong cuộc sống, giúp cho gia đình ngày càng hạnh phúc.'
	,N'Đất: Sen đá là loại cây phù hợp với đất có khả năng thoát nước, thoát khí tốt, và tơi xốt. Một số loại đất được nhiều gia đình ưa chuộng khi chăm sóc sen đá đế vương có thể kể đến như: đất tribat dễ thoát nước, xỉ than tổ ong đập vụn và trộn đều với tro.

<br>✦
Nước: Sen đá không phải là loại cây cần tưới nước quá nhiều. Thông thường, bạn chỉ cần tưới nước khoảng 2 lần/tuần, đặc biệt nên tưới nước vào buổi tối mát để tránh tình trạnh cây bị sốc nhiệt. 

<br>✦
Ánh sáng: Đây là một trong những điều kiện tự nhiên quan trọng phục vụ cho quá trình quang hợp và phát triển của cây. Bạn nên cho cây sen đá đế vương tiếp xúc với ánh nắng nhẹ vào buổi sáng sớm hoặc chiều mát để cây không gặp phải tình trạng bị cháy nắng.

<br>✦
Phân bón: Phân bón sẽ đảm bảo cho cây có đủ chất dinh dưỡng cần thiết trong quá trình sinh trưởng. Tuy nhiên, bạn cũng không nên bón quá nhiều cho cây mà chỉ nên bón định kỳ khoảng 3 – 6 tháng/lần để cây không bị sốc chất dinh dưỡng.
Dưới đây là một số lưu ý hữu ích dành cho bạn khi chăm sóc cây hoa đá đế vương:

<br>✦
Bạn nên tưới nước vào buổi sáng sớm hoặc buổi tối vì trời mát sẽ tránh gây ra trường hợp cây bị sốc nhiệt.

<br>✦
Sau khi tưới nước, bạn cũng nên kiểm tra lại xem nước còn đọng lại trên kẽ hay nách lá hay không. Nếu có, bạn có thể dùng giấy khô để lau cho cây, tránh xảy ra tình trạng cây bị úng lá. 

<br>✦
Mỗi lần tưới, bạn chỉ nên tưới vừa đủ để đảm bảo đất có đủ độ ẩm chứ không nên tưới quá nhiều, tránh gây ra tình trạng cây sen đá đế vương bị úng.');
	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (N'Sen đá Phật bà', 20, 20000, N'Sen đá phật bà hay còn gọi sen đá quan âm, cây liên đài là một loại sen đá thuộc họ Bỏng, có tên khoa học là Sempervivum Calcareum. Chúng là cây lâu năm, mọng nước và có nguồn gốc tự nhiên từ châu Âu, tùy vào điều kiện sinh sống cây sẽ có kích thước khác nhau. Một số đặc điểm nổi bật của sen đá quan âm:

<br>Mỗi cây liên đài có kích thước trung bình từ 5 – 7cm, khá nhỏ so với các loại cây cảnh khác.
<br>Lá cây nhỏ, có màu xanh nhạt, chúng mọc san sát nhau và xoay quanh thân cây hết lớp này đến lớp khác như một đóa hoa sen rực rỡ.
<br>Phần đầu lá thuôn nhọn, mép đỉnh đầu có màu tím, đỏ tím, hoặc hồng tùy vào điều kiện ánh sáng cung cấp cho cây.  Ngoài ra, nếu bạn nhìn kỹ, ở phần viền ngoài phiến lá sẽ thấy lông tơ nhỏ. ', 'https://caycanhcala.com/wp-content/uploads/2019/12/c%C3%A2y-sen-%C4%91%C3%A1-ph%E1%BA%ADt-b%C3%A0.jpg',1,
N'Sen đá quan âm có sức sống rất mãnh liệt, và được xem như là biểu tượng của một tình bạn và tình yêu bền đẹp, vĩnh cửu không đổi thay. Bên cạnh đó, cây sen đá này còn mang tài lộc, may mắn, bình an và hạnh phúc cho người trồng như được quan âm bên cạnh phù hộ.
<br>Với ý nghĩa tốt đẹp, sen đá quan âm thường được dùng làm quà tặng cho những người thân yêu hoặc làm vật dụng trang trí góc học tập, bàn làm việc, quán cafe, khách sạn,..
<br>Tác dụng của sen đá quan âm
<br>Sen đá quan âm không chỉ mang đến nhiều ý nghĩa, mà còn có nhiều tác dụng khác khiến bạn không ngờ đến như:
<br>
<br>Hút bức xạ máy tính: Chậu sen đá quan âm không chỉ có tác dụng trang trí, mà còn giúp hút các tia bức xạ có hại từ máy tính, điện thoại, bộ đàm,… bảo vệ làn da và hệ thần kinh của người trồng.
<br>Tăng cường trí nhớ: Theo một nghiên cứu, màu xanh từ lá cây sen đá quan âm để bàn có thể giúp người trồng giảm stress, tăng cường trí nhớ và tăng hiệu quả làm việc.
<br>Thanh lọc không khí: đặt chậu sen đá quan âm để bàn còn giúp không khí được thanh lọc sạch sẽ và trở nên thoáng mát hơn.',N'Trước khi tiến hành nhân giống sen đá quan âm, bạn cần chuẩn bị phần đất trồng thật tốt để cây con mau phát triển. Dù loại sen đá này không kén đất, nhưng bạn hãy cho thêm một ít phân chuồng vào đất để tăng thêm dinh dưỡng và giúp cây con mau bén rễ. Ngoài ra, có thể trộn thêm tro và xơ dừa vào đất để tăng độ tơi xốp và giúp đất mau thoát nước. Đồng thời chọn chậu có lỗ thoát nước để tránh cây bị ngập úng chết. 
<br>Hiện nay có rất nhiều cách trồng sen đá phật bà, nhưng phương pháp giâm lá và tách cây con là hai cách phổ biến, không tốn nhiều công sức và được nhiều người sử dụng nhất.
<br>
<br>Giâm lá
<br>Đây là phương pháp trồng sen đá quan âm dễ thực hiện tại nhà và đem lại hiệu quả cao. Đầu tiên, bạn chọn một lá to khỏe, không bị sâu bệnh và không quá già từ cây mẹ, tiếp đến cắt sát gốc lá và đặt ở nơi khô thoáng từ 2 -3 ngày cho khô vết cắt.
<br>
<br>Sau đó nhúng lá vào dung dịch kích rễ và đem trồng 1/3 lá vào chậu đất đã được chuẩn bị trước, lưu ý là nên nén đất cho chặt và tưới nước cho ẩm đất. Sau khoảng 10 ngày lá sẽ bén rễ và phát triển như một cây sen đá mới.
<br>
<br>Tách cây con
<br>Tương tự như phương pháp giâm lá, để thực hiện theo phương pháp tách cây con, đầu tiên bạn cần chọn một chồi non phát triển tốt từ cây mẹ. Sau đó cắt và đem trồng vào chậu đất đã được chuẩn bị và tưới nước thường xuyên để cây con mau ra rễ và phát triển. ');
	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (N'Đá cam', 20, 20000, N'Cây đá cam', 'https://cayxinh.vn/wp-content/uploads/2018/01/sen-da-cam-300820-5.jpg',3,N'',N'');
	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (N'Sỏi hồng', 30, 30000, N'Mô tả', 'https://img.meta.com.vn/Data/image/2021/04/17/sen-da-soi-hong-9.jpg',1,N'',N'');
	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (N'Nhất mạt hương', 10, 20000, N'Mô tả', 'https://th.bing.com/th/id/OIP.sZQL6P7LVbDR8ahz-wK2zQHaJ4?w=794&h=1059&rs=1&pid=ImgDetMain',3,N'',N'');
	INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (N'Sen đá đô la', 20, 20000, N'Mô tả', 'https://th.bing.com/th/id/R.1c484d9c6533dc9f4b4153d9d04ad799?rik=HC7LFBAu2OeUVw&pid=ImgRaw&r=0',3,N'',N'');

	

	

	delete from Succulents where IDSu = 18

	select * from Succulents 

delete from Succulents

-- Insert Category
	INSERT INTO Category(IDC,category) VALUES (0,N'Tất cả');
	INSERT INTO Category(IDC,category) VALUES (1,N'Sen đài size nhỏ');
	INSERT INTO Category(IDC,category) VALUES (2,N'Sen đài size trung');
	INSERT INTO Category(IDC,category) VALUES (3,N'Sen thân dài');
	INSERT INTO Category(IDC,category) VALUES (4,N'Sen mix');
	INSERT INTO Category(IDC,category) VALUES (5,N'Sen gốc thụ');
	INSERT INTO Category(IDC,category) VALUES (8,'Thằng Trung Đức ở nhà ngủ ngù khò');
	delete from Category
	select * from Category

	select * from Succulents where category = 1


-- 

