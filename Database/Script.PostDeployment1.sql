﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/


IF NOT EXISTS(SELECT 1 FROM dbo.Setting s
          WHERE s.[Key] = N'ShowCallForAssistanceBtn')
BEGIN
    INSERT INTO dbo.Setting VALUES('1','ShowCallForAssistanceBtn')
END

--IF EXISTS(SELECT 1 FROM dbo.Setting s WHERE s.[Key] = N'SeedMe')
--BEGIN
    TRUNCATE TABLE dbo.Product
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350073010042','Öl','','Citra Öl Stard 3,5%','33cl','Adelsö','Sverige','0',3.5,'','','Empty','A:19',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('73120070','Öl','Lager','Carlsberg 3,5% ÅP','50 cl','Carlsberg','Sverige','0',3.5,'','','Low','A:20',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('18200001680','Öl','Lager','Budweiser 3,5% EG','33 cl','Budweiser','Storrbritanien','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/0018200001680.jpg','','Full','A:21',3.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310070003355','Öl','Lager','Öl Lager 3.5%','35.5cl','Brooklyn','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310070004239.jpg','','Empty','A:22',0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('3347970011306','Öl','Ale','Ale 3,5% Glut.fri','25cl','Grain d´´Orge','Frankrike','1',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/3347970011306.jpg','','Low','A:23',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310070004208','Öl','Lager','Öl Alkoholfri EG','33cl','Brooklyn','Sverige','0',0.3,'https://assets.icanet.se/t_product_large_v1,f_auto/7310070004208.jpg','','Full','A:24',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('4260310552682','Öl','','Ginger Beer','200ml','Thomas Henry','England','0',0,'','','Empty','A:25',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401034799','Öl','Ale','Öl Full of IPA','33 cl','Brutal Brewing','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401039657.jpg','','Low','A:26',0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('5010134913935','Öl','','Ginger Beer','33cl','Ginger Joe','Usa','0',0,'','','Full','A:27',0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('5011885012724','Öl','Ale','London Pride','33cl','Fuller´s','Storrbritanien','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/5011885012724.jpg','','Empty','A:28',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('5023625004319','Öl','Ale','Hobgoblin Ale 3,5%','50 cl','Hobgoblin','Storrbritanien','0',3.5,'','','Low','B:1',1.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('5029396222334','Öl','Other','Ginger Beer','275ml','Fentimans Ginger Bee','Storrbritanien','0',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/5029396222334.jpg','','Full','B:2',2.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('5060108450348','Öl','Other','Ginger Beer','20cl','Fever-Tree','Storrbritanien','0',0,'https://assets.icanet.se/t_product_large_v1,f_auto/5060108450348.jpg','','Empty','B:3',4.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310070002396','Öl','Lager','Alkoholfri Öl EKO','33cl','Carlsberg','Sverige','1',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310070002396.jpg','','Low','B:4',0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('5704255103923','Öl','Ale','In The Sun 0,3%','33cl','Mikkeller','Danmark','0',0.3,'','','Full','B:5',2.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310070761255','Öl','Lager','Carlsberg Öl 3,5%','33 cl','Carlsberg','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310070761255.jpg','','Empty','B:6',2.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072000369','Öl','Lager','Öl EKO 3,5% 6p','6x33cl','Carlsberg','Sverige','1',3.5,'','','Low','B:7',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072000468','Öl','Lager','Öl 3.5% 4p','4x50cl','Carlsberg','Sverige','0',3.5,'','','Full','B:8',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072000482','Öl','Lager','Afri Öl EKO 6p','6x33cl','Carlsberg','Sverige','1',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310072000482.jpg','','Empty','B:9',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('40534695','Öl','Lager','Öl Alkoholfri EG','33 cl.','Clausthaler','Tyskland','0',0,'https://assets.icanet.se/t_product_large_v1,f_auto/0000040534695.jpg','Ett aromatiskt, alkoholfritt öl med humlesötma, maltsmak och tydlig beska i eftersmaken. Doften är frisk med inslag av citrus, malt och humle.','Low','B:10',2.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('4053400268545','Öl','Lager','Öl Lemon Alkoh.fri','33 cl.','Clausthaler','Tyskland','0',0,'https://assets.icanet.se/t_product_large_v1,f_auto/4053400268545.jpg','Alkoholfri shandy dvs öl med smak av citron. Består av 60% alkoholfri läsk med citronsmak och 40% alkoholfri öl. God till mat och umgänge.','Full','B:11',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('75037062','Öl','lager','Corona Öl 3,2%','33 cl','Corona','Mexico','0',3.2,'','Lager med lätt karaktär och inslag av majs och citrus. Passar till kryddstarka rätter som t ex tacos och chiligryta.','Empty','B:12',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('4002103266242','Öl','Veteöl','Öl Alkoholfri','33cl','Erdinger','Tyskland','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/4002103266242.jpg','Fräsch alkoholfri veteöl med karamellig maltighet, svag ton av humle och inslag av vanilj och honung. Fin till mycket, gärna asiatiskt, fisk och skaldjur.','Low','B:13',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310070752116','Öl','Stout & Porter','Porter 3,5% RG','50 cl','Carnegie','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310070752116.jpg','','Full','B:14',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072000475','Öl','Lager','Öl 3.5% 4p','4x50cl','Eriksberg','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310072000475.jpg','Ett fylligt lageröl på 3.5% med tydlig maltkaraktär och inslag av nyslaget hö, blommiga örter och citrus. En brödig smak och markerad beska med en härlig lång, maltig eftersmak som balanserar upp den likaledes långa efterbeskan.','Empty','C:1',4.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072000079','Öl','Lager','Smakfull Öl alkfri','6x33cl','Falcon','sverige','0',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310072000079.jpg','Falcon Smakfull Alkoholfri Lager är ett utmärkt alkoholfritt måltidsöl (≤0,5%). Rostad malt ger en mörkare färg och en fyllig kropp som elegant matchar stekt och grillad mat, fylliga grytor, men också chiliheta rätter, som tacos och chiligrytor. Förvaras mörkt och svalt för bästa hållbarhet. Serveras vid 8-10˚C, väl upphälld i glas till modern husmanskost. Förslagsvis till rätter med stekyta eller fylliga rätter, som grillat, mustiga grytor och gratänger.','Low','C:2',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072766227','Öl','Lager','Bayerskt Öl 3,5%','6x50cl','Falcon','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310072766227.jpg','Falcon Bayerskt är ett klassiskt svenskt mellanmörkt lageröl. Rostad malt ger en djupare färg och en fyllig smak, medan en måttlig beska ger en nästan söt karaktär åt ölet. Falcon Bayerskt serveras kylkåpskall, upphälld i glas. Utmärkt både som sällskapsdryck och måltidsöl. Klassisk till kräftor. Förvaras mörkt och svalt för bästa hållbarhet.','Full','C:3',4.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401037622','Öl','Lager','Öl 3,5%','33cl','Gotlands Bryggeri','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401037622.jpg','','Empty','C:4',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072766050','Öl','Lager','Pripps Blå 3,5% B','6x50 cl','Pripps Blå','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310072766029.jpg','Pripps Blå är en klassisk ljus enkel och okomplicerad lager, med anor från Göteborg. Kanske är det Sveriges mest klassiska sommaröl, mycket tack vare sin enkla och fräscha smakprofil. Pripps Blå har en balanserad beska och en uppfriskande karaktär, som gör att ölet passar utmärkt till svensk husmanskost och till buffébordet där många smaker finns. Pripps Blå fungerar också fint till lite starkare rätter, trevliga traditioner och i goda vänners sällskap.','Low','C:5',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('3261570004837','Öl','Lager','Öl Glutfri EKO','25cl','Grain d´´Orge','Frankrike','1',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/3261570004837.jpg','','Full','C:6',2.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072766296','Öl','Lager','Beer 2,8% B','6x50cl','Falcon','Sverige','0',2.8,'https://assets.icanet.se/t_product_large_2x_v1,f_auto/7310072766296.jpg','Falcon är ett klassiskt svenskt lageröl som bryggs på rent källvatten i Falkenberg. Ölet är smakrikt, men balanserat, med en uppfriskande beska. Falcon serveras väl kyld och upphälld i glas med en generös skumkrona. Passar som sällskapsdryck eller till salta snacks och buffébord.','Empty','C:7',1.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310072766326','Öl','Lager','Extra Brew 3,5%B','6x50 cl','Falcon','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_2x_v1,f_auto/7310072766326.jpg','Falcon är ett klassiskt svenskt lageröl som bryggs på rent källvatten i Falkenberg. Ölet är smakrikt, men balanserat, med en uppfriskande beska. Falcon serveras väl kyld och upphälld i glas med en generös skumkrona. Passar som sällskapsdryck eller till salta snacks och buffébord.','Low','C:8',1.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('5000213015155','Öl','Stout & Porter','Guiness Öl 3,5%','4x44 cl','Guinness','Irland','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/5000213015155.jpg','Fyllig och torr smak av rostat korn, med inslag av kaffe och choklad. Flaskans kork hjälper till att ge den vita skumkronan. Gott till skaldjur!','Full','C:9',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401000732','Öl','Lager','Öl 3,5%','33cl','Heineken','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401000732.jpg','År 1873 skapades detta öl som skulle komma att bli världens största och mest framgångsrika internationella ölvarumärke. Än idag bryggs Heineken enligt samma oförändrade recept. Passar till: De tillfällen du vill njuta av perfektion.','Empty','C:10',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401005843','Öl','Lager','Heineken Öl 3,5%EG','50 cl','Heineken','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401005843.jpg','År 1873 skapades detta öl som skulle komma att bli världens största och mest framgångsrika internationella ölvarumärke. Än idag bryggs Heineken enligt samma oförändrade recept.Ursprung: Heineken, Nederländerna.Öltyp: ljus lager.Humle: Magnum och Spalter Selecthumle.Malt: pilsnermalt.Doft: lättare maltaromatisk doft med tydlig fruktighet.Smak: balanserad och något lättare fyllighet med avstämd humlebeska och något längre fruktig eftersmak.Passar till: de tillfällen du vill njuta av perfektion.','Low','C:11',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310070002914','Öl','Veteöl','Alkoholfri öl','25cl','Kronenbourg','Frankrike','0',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310070002914.jpg','','Full','C:12',2.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401024851','Öl','Lager','Easy Rider Alkofri','33cl','Gotlands Bryggeri','Sverige','0',0.4,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401024851.jpg','Öl alkoholfri Easy Rider Bulldog 0,4%','Empty','C:13',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310400022629','Öl','Lager','Öl 3,5%','50 cl','Mariestads','Sverige','0',3.5,'','','Low','C:14',3,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401003634','Öl','Lager','Öl 3,5% EG','33 cl','Mariestads','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401003634.jpg','Mariestads Bryggeri grundades 1848 och var ett av de första lagerbryggerierna i Sverige. Man började använda tekniken att brygga öl med långsam jäsning i låg temperatur som hämtats hem från Tyskland bara några år tidigare. Det gamla svenska surölet ersattes snabbt med det nya, friska ölet som dessutom kunde lagras till en lager. Det nya ölet blev snabbt populärt och många bryggerier följde Mariestads exempel. Mariestads är en bärnstensfärgad och karaktärsfull öl, som har uppskattats av stora personligheter under lång tid.Ölets unika smak kommer från en aningen bränd malt samt humlesorterna Perle och Spalter Select. Resultatet är en mustig, maltig och brödig öl med kraftigt markerad beska som du kan njuta vid alla tillfällen.Doft: Maltaromatisk doft med inslag av honung, ljust bröd och citrus. Smak: Tydlig maltig smak med balanserad sötma.','Full','C:15',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401009551','Öl','Lager','Öl Alkoholfri','33 cl','Mariestads','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401009551.jpg','Mariestads Alkoholfri är en maltig och humlearomatisk öl som passar utmärkt både till mat och i sällskap med goda vänner. Vi brygger det med samma smak- och kvalitetskrav som våra andra öl för att alla, oavsett tillfälle eller plats, ska kunna njuta en Mariestads. Mariestads Alkoholfri är ett underjäst lageröl. Doft: Doften är kryddig och maltig med inslag av en friskt blommig humlearom. Smak: En påtalig maltig smak som balanseras upp med en lätt markerad beska. Passar till: Lika bra till buffébordet som festminglet. Passar extra fint till lättare rätter med kyckling, fisk eller en matig sallad.','Empty','D:1',3.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310402006795','Öl','Lager','Norrl Guld 3,5%B','6x50 cl','Norrlands Guld','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310402006795.jpg','Ölet ger en förnimmelse av guldet från det rena norrländska naturen! Norrlands Guld gör sig alldeles utmärkt till grillade kötträtter, men också med bara ett par ölkorvar som tilltugg. Doft: Frisk maltaromatisk doft med moderat inslag av humlearom Smak: Milt öl av Dortmundertyp. Fylligt med viss beska.','Low','D:2',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310402014370','Öl','Lager','Mariestad Öl 2,8%','6x50cl','Mariestads','Sverige','0',2.8,'https://assets.icanet.se/t_product_large_v1,f_auto/7310402014370.jpg','','Full','D:3',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310402027356','Öl','Lager','Alkoholfri Öl','6x33cl','Mariestads','Sverige','0',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310402027356.jpg','Mariestads Alkoholfri är en maltig och humlearomatisk öl som passar utmärkt både till mat och i sällskap med goda vänner. Vi brygger det med samma smak- och kvalitetskrav som våra andra öl för att alla, oavsett tillfälle eller plats, ska kunna njuta en Mariestads. Mariestads Alkoholfri är ett underjäst lageröl. Doft: Doften är kryddig och maltig med inslag av en friskt blommig humlearom. Smak: En påtalig maltig smak som balanseras upp med en lätt markerad beska. Passar till: Lika bra till buffébordet som festminglet. Passar extra fint till lättare rätter med kyckling, fisk eller en matig sallad.','Empty','D:4',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7330591001333','Öl','Lager','ÖL Lager alk.fri','33cl','Nils Oscar','Sverige','0',0.4,'','','Low','D:5',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7330104000440','Öl','Lager','Gyllene Lager 3,5%','33cl','Jämtlands Bryggeri','Sverige','0',3.5,'','','Full','D:6',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7330591000695','Öl','Ale','Pale Ale Alkofri','33cl','Nils Oscar','Sverige','0',0.4,'https://assets.icanet.se/t_product_large_v1,f_auto/7330591000695.jpg','Ljust bärnstensfärgad alkoholfri öl i Pale-Ale stil med mycket smak och karaktär, den låga alkoholhalten till trots.','Empty','D:7',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7330591000756','Öl','Lager','Bordslager 3,5%Eko','33cl','Nils Oscar','Sverige','0',3.5,'','','Low','D:8',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310401018829','Öl','Lager','Öl Ljus Eko 3,5%EG','33cl','Norrlands Guld','Sverige','1',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7310401018829.jpg','Det här är ett ljust öl som snabbt släcker törsten, men själv stannar kvar en stund. Ett öl som är genuint uppfriskande, utan att sticka under stol med sin naturliga beska. Ett öl som är friskt och lätt, utan att glömma var det kommer från. Från riktig malt, rejäl humle och klart källvatten. Inget annat tjafs.Smaken har en lätt kropp, är maltig och balanseras väl av en mycket utsökt beska.','Full','D:9',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350011640560','Öl','Lager','IPA Spinnaker 3,5%','33cl','Nynäshamns Ångbrygg','Sverige','0',3.5,'','','Empty','D:10',3.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350016990806','Öl','Lager','Sess Pale Ale 3,5%','33cl','Oppigårds','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/7350016991889.jpg','','Low','D:11',4.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350044680014','Öl','Lager','Folklig Ale Bo 3,5%','33cl','Hantverksbryggeriet','Sverige','0',3.5,'','','Full','D:12',4.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350052900159','Öl','Lager','Grönskär Lager 0,5%','33cl','Värmdö Bryggeri','Sverige','0',0.5,'','','Empty','D:13',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310402018521','Öl','Lager','Öl Alkoholfri B','6x33cl','Norrlands Guld','Sverige','0',0,'','','Low','E:1',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350060690271','Öl','Ale','IPA Södra 3,5%','33cl','Södra Maltfabriken','Sverige','0',3.5,'','','Full','E:2',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350072400011','Öl','Ale','Enskede Pala Ale','330ml','Ga Enskede Bryggeri','Sverige','0',3.5,'','','Empty','E:3',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350072400066','Öl','Lager','Fågelkärrs Bitter','330ml','Ga Enskede Bryggeri','Sverige','0',3.5,'','','Low','E:4',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350073010035','Öl','Ale','Pale Ale Redem 3,5%','33cl','Adelsö','Sverige','0',3.5,'','','Full','E:5',3.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310070766014','Öl','Lager','Lättöl 2,2% B','33cl','Pripps Blå','Sverige','0',2.2,'','','Empty','E:6',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7310402007020','Öl','Lager','Lager Öl 2,8%B','6x33cl','Spendrups','Sverige','0',2.8,'https://assets.icanet.se/t_product_large_v1,f_auto/7310402007020.jpg','Detta är ett resultat av över hundra års tradition och hantverkskunnande med de tyska renhetslagarna från år 1516 i botten. Lagen stipulerar attölet endast ska bryggas på malt, humle och vatten där inga tillsatser får användas.Doft: Frisk humlearomatisk doft med inslag av ljus malt.Smak: Något lättare fyllighet med avstämd humlebeska och liten mustig avslutning.','Low','E:7',1.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350089280163','Öl','Ale','Pale Ale 3.5%','33cl','Nacka Bryggeri','Sverige','0',3.5,'','','Full','E:8',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350089280187','Öl','Lager','Nacka Lager 3,5%','33cl','Nacka Bryggeri','Sverige','0',3.5,'','','Empty','E:9',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350089280248','Öl','Lager','222:an Alkoholfri','33cl','Nacka Bryggeri','Sverige','0',0,'','','Low','E:10',1.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('8593868001422','Öl','Lager','Staropramen Öl3,5%','33 cl','Staropramen','Tjeckien','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/8593868001422.jpg','Tjeckisk pilsner med frisk och fyllig smak samt fin beska av Saazhumle i eftersmaken. Uppfriskande en varm dag, eller väl kylt till grillat och husman.','Full','E:11',4.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('8414100346944','Öl','','Premium Ginger Beer','20cl','Schweppes','Sverige','0',0,'','','Empty','E:12',5.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('8593868002832','Öl','Lager','Öl Non Alcoholic','33cl','Staropramen','Tjeckien','0',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/8593868002832.jpg','Lager med tydlig brödighet, stram beska samt blommiga och örtiga inslag. Servera till fetare rätter som carbonara eller wallenbergare.','Low','E:13',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('8593868003952','Öl','Lager','Öl 3.5% B 4p','4x50cl','Staropramen','Sverige','0',3.5,'https://assets.icanet.se/t_product_large_v1,f_auto/8593868003952.jpg','Tjeckisk pilsner med frisk och fyllig smak samt fin beska av Saazhumle i eftersmaken. Uppfriskande en varm dag, eller väl kylt till grillat och husman.','Full','E:14',2.5,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('4014807051260','Öl','Lager','Öl Alkoholfri Krav','33 cl.','Störtebeker','Tyskland','1',0.5,'https://assets.icanet.se/t_product_large_v1,f_auto/4014807051260.jpg','Ekologiskt öl med bara 0,5% alkohol. Brödig smak med ton av honung, citrus och örter. Alkoholen ångas bort vilket bevarar aromerna. Gärna till mat.','Empty','E:15',3.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('8712000050146','Öl','Lager','Heineken Alkoholfr','33cl','Heineken','Nederländerna','0',0,'https://assets.icanet.se/t_product_large_v1,f_auto/8712000050146.jpg','År 1873 skapades detta öl som skulle komma att bli världens största och mest framgångsrika internationella ölvarumärke. Än idag bryggs Heineken enligt samma oförändrade recept. Doft: Lättare maltaromatisk doft med tydlig fruktighet. Smak: Balanserad och något lättare fyllighet med avstämd humlebeska och något längre fruktig eftersmak. Passar till: De tillfällen du vill njuta av perfektion.','Low','E:16',4.0,'')
    INSERT INTO dbo.Product (EAN, Category,Type,Name,Volume,Producer,Country,IsEco,AlcoholPercentage,ImageUrl,Description, StockStatus, Shelf, Rating, GTIN) Values('7350052900272','Öl','Ale','Värmdö Öl IPA 0,5%','33cl','Värmdö Bryggeri','Sverige','0',0.5,'','','Full','E:17',2.0,'')
--END