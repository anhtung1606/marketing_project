#Gộp theo ID geography để tạo ra bảng mới chứa cả 2 thông tin
select CustomerID,CustomerName,Email,Gender,Coutry,City from customers as cu
left join
geography as ge
on ge.GeographyID = cu.GeographyID
#Nhóm theo giá tiền procducts table, bỏ category
select  ProductID, ProductName, Price,
case
when price < 50 then 'Low_price'
when price between 50 and 100 then 'Medium_price'
else 'High_price'
end as Categogy_price
from products
#Clean data : xoá khoảng trắng cho bảng customers_review
SELECT 
    ReviewID,  
    CustomerID,  
    ProductID, 
    ReviewDate,  
    Rating,  
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM customer_review


#Chuẩn hoá và làm sạch bảng engagement_data table
SELECT
EngagementID, 
ContentID,  
CampaignID,  
ProductID,  
UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,  
LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,  
RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks, 
-- chuyển định dạng cột EngagementDate to the dd.mm.yyyy format
FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate  -- Converts and formats the date as dd.mm.yyyy
FROM
dbo.engagement_data  
WHERE
ContentType != 'Newsletter';  

-- Bảng 4 -- 
WITH DuplicateRecords AS (
    SELECT 
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        Stage,
        Action,
        Duration,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
            ORDER BY JourneyID
        ) AS row_num
    FROM customer_journey
)
SELECT *
FROM DuplicateRecords
-- WHERE row_num > 1   -- bật dòng này nếu chỉ muốn xem duplicate
ORDER BY JourneyID;

# Phân tích
SELECT 
    JourneyID,
    CustomerID,
    ProductID,
    VisitDate,
    Stage,
    Action,
    -- thay NULL bằng avg theo ngày
    COALESCE(Duration, avg_duration) AS Duration
FROM (
    SELECT 
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        -- chuẩn hóa Stage
        UPPER(Stage) AS Stage,
        Action,
        Duration,
        -- tính avg duration theo ngày
        AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration,
        -- đánh số để loại duplicate
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action
            ORDER BY JourneyID
        ) AS row_num
    FROM customer_journey
) AS subquery
WHERE row_num = 1;