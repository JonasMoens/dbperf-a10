USE testdbo;
SET STATISTICS TIME ON
SELECT customer.cu_id , invoice.in_id , invoicedetail.ind_qty , item.it_serialnumber , movement.mo_description , movement_details.mod_it_id , users.us_id , users.us_code , purchaseorder.po_description , supplier.su_name 
FROM customer , invoice , invoicedetail , item , movement , movement_details , users , purchaseorder , supplier
WHERE supplier.su_name = 'Mike' AND customer.cu_id = invoice.in_cu_id AND invoicedetail.ind_in_id = invoice.in_id AND invoicedetail.ind_it_id = item.it_id AND movement_details.mod_mo_id = movement.mo_id  AND movement.mo_us_id =  users.us_id  AND purchaseorder.po_us_id = users.us_id  AND purchaseorder.po_us_id = users.us_id AND purchaseorder.po_su_id AND supplier.su_id
SET STATISTICS TIME OFF
GO 40