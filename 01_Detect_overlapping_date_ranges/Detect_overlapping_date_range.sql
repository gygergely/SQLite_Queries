
SELECT 
    cp1.ID AS CP1_ID,
    cp1.CustomerName AS CP1_Customer,
    cp1.ProductName AS CP1_Product,
    cp1.UnitPrice AS CP1_Price,
    cp1.ValidFrom AS CP1_ValidFrom,
    cp1.ValidTo AS CP1_ValidTo,

    cp2.ID AS CP2_ID,
    cp2.CustomerName AS CP2_Customer,
    cp2.ProductName AS CP2_Product,
    cp2.UnitPrice AS CP2_Price,
    cp2.ValidFrom AS CP2_ValidFrom,
    cp2.ValidTo AS CP2_ValidTo
FROM 
    customer_prices AS cp1
JOIN
    -- self join customer_prices table on CustomerName and ProductName
    customer_prices AS cp2 
    ON cp1.CustomerName = cp2.CustomerName
        AND cp1.ProductName = cp2.ProductName
        -- detect date range overlaps
        AND (cp1.ValidFrom <= cp2.ValidTo AND cp2.ValidFrom <= cp1.ValidTo)
        -- additional conditions to exclude 'self' hits, but include 
        -- those where the ValidFrom or ValidTo is identical
        -- if you have a primary key or unique ID per record instead of the below
        -- you can use Note1 (it is applicable in this example)
        AND ((cp1.ValidFrom = cp2.ValidFrom AND cp1.ValidTo != cp2.ValidTo)
            OR (cp1.ValidFrom != cp2.ValidFrom AND cp1.ValidTo = cp2.ValidTo)
            OR (cp1.ValidFrom != cp2.ValidFrom AND cp1.ValidTo != cp2.ValidTo));
        /*Note1:
        AND cp1.ID != cp2.ID*/
