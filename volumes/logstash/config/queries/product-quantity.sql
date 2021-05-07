SELECT
	`p`.`ProductID` AS `ProductID`,
	`p`.`Name` AS `Name`,
	`p`.`ProductNumber` AS `ProductNumber`,
	`p`.`MakeFlag` AS `MakeFlag`,
	`p`.`FinishedGoodsFlag` AS `FinishedGoodsFlag`,
	`p`.`Color` AS `Color`,
	`p`.`SafetyStockLevel` AS `SafetyStockLevel`,
	`p`.`ReorderPoint` AS `ReorderPoint`,
	`p`.`StandardCost` AS `StandardCost`,
	`p`.`ListPrice` AS `ListPrice`,
	`p`.`Size` AS `Size`,
	`p`.`SizeUnitMeasureCode` AS `SizeUnitMeasureCode`,
	`p`.`WeightUnitMeasureCode` AS `WeightUnitMeasureCode`,
	`p`.`Weight` AS `Weight`,
	`p`.`DaysToManufacture` AS `DaysToManufacture`,
	`p`.`ProductLine` AS `ProductLine`,
	`p`.`Class` AS `Class`,
	`p`.`Style` AS `Style`,
	`p`.`ProductSubcategoryID` AS `ProductSubcategoryID`,
	`p`.`ProductModelID` AS `ProductModelID`,
	`p`.`SellStartDate` AS `SellStartDate`,
	`p`.`SellEndDate` AS `SellEndDate`,
	`p`.`DiscontinuedDate` AS `DiscontinuedDate`,
	`p`.`ModifiedDate` AS `ModifiedDate`,
	count( `i`.`Quantity` ) AS `Quantity` 
FROM
	(
		`adventure.product` `p`
		LEFT JOIN `adventure.productinventory` `i` ON ((
				`p`.`ProductID` = `i`.`ProductID` 
			))) 
GROUP BY
	`p`.`ProductID`