USE Testdbo;
SET STATISTICS TIME ON
DELETE FROM dbo.invoicedetail
WHERE dbo.invoicedetail.ind_id
    IN (SELECT in_id FROM dbo.invoice where invoice.in_description LIKE '%t%' )
  AND dbo.invoicedetail.ind_id
    IN (SELECT in_id FROM dbo.invoice where invoice.in_date > '1-1-2006' )
  AND dbo.invoicedetail.ind_id
    IN (SELECT in_id FROM dbo.invoice where invoice.in_date < '1-1-2007' )
SET STATISTICS TIME OFF
GO 40
