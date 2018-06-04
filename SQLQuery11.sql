SELECT t1.ProdName AS ProductName,
t2.ProdCategory AS ProductCategory
FROM dbo.Products t1 LEFT JOIN dbo.ProductsCategories ON dbo.ProductsCategories.ProdID = t1.ID
LEFT JOIN dbo.Categories t2 ON  t2.ID = dbo.ProductsCategories.CatID;