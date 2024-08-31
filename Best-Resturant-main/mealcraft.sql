-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 08:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mealcraft`
--

-- --------------------------------------------------------

--
-- Table structure for table `liked_recipes`
--

CREATE TABLE `liked_recipes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_label` longtext NOT NULL,
  `recipe_data` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `recipe_image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `liked_recipes`
--

INSERT INTO `liked_recipes` (`id`, `user_id`, `recipe_label`, `recipe_data`, `created_at`, `recipe_image`) VALUES
(17, 1, 'Apple & blueberry Bircher', '{\"uri\":\"http://www.edamam.com/ontologies/edamam.owl#recipe_48b9bd2b3487d17fa7e8f87080cd5514\",\"label\":\"Apple & blueberry Bircher\",\"image\":\"https://edamam-product-images.s3.amazonaws.com/web-img/340/340bc6ce5f396151a0f58da90d7a3102.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjELv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQC52GCWLpkjRMCLQO9zSYYfH%2F8%2FvUXGPHfni8p50AsYtgIhAMZIomvY5cN1kC7XpaN7KC5xiFoGi3V207DZDsRM0SZkKsIFCJP%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMMTg3MDE3MTUwOTg2IgzuAk%2FQS2ubTA6d%2BuwqlgW7LRAPcCFy6rpIcCBm2Y7MfUEOp4VHjxXmuGlh5frJw%2FgUsuz4ZU5xesS969XnnyFTeyecoH43IfUWIDtULbBgGgKLh0ljiO2yS%2FIjxEWEN81tAsRqZXrtRSaK8dHhD71m7Jfz4at%2Bj6oAJw4iev4C70CUQoqjS7F1EuknX2IAsR0P2rWKk4o6CVoDVxzINQcXFnkaTYY8%2FHmHlNtSpsmwg01Qr0oX6tAWvbUFduoQ53cvr1VvMpypkrE%2B9FSI0gONKAIMYaI%2BNVwAYIL%2FEtJnM53Ws3rVQ3Z3kksKCPxaVgL9CUITtKD8dzFaJY60B7t%2BS%2BmSxMVFVKUe0iHtUFiyHqH%2FI84maqIp5yLdtP1nyhPU2F7z3ONz9mmQVP1915FTQasywpWhcULmimQru%2BeJLHL%2BF90SbSTZ%2FsBgMVClr%2BeLN0AY9wGuE107rFAgLV%2FzdVh5e684uf2zvtvz5YuMfy7roJ39N12mkZEn0twk7spqviWWo2%2BdEaXRXXh0M%2BNl6wzCJWNUM5ZJLTvWbm8yplJL3%2F48hH8tkcjDQbG0%2FkRHqch9%2F91U%2BLB%2BhRLqb%2Foc%2FqY1CiWGJeRhdJalj3Z%2Bm5ie6i2sD4Yvc%2BdVqPio%2BPRpBLTV5xiG%2BV9D%2B4nYS%2BB%2F8i8Cr0cpG%2BW%2F5yRBC9vly%2BYuZPmE40InSrdKYco7bA1k%2BDmhOR8ZMRgh%2Bbk197NjEo%2FWU7qNMF5cfyleyMFl1yR%2BA0RRe7Tt%2BHUmyya%2Ba9nAQhr3tbPszYm%2FJo7H4c9nmX6ieVk9cZwVnNl%2FHd0nrQ6xZJDUddrwsVxiGZr%2FSTy1du%2Bu7ag1BzNeKw9FwrO%2FVN%2BlcS0J8sCRbUe9U%2Be7OMWu6%2BNpN4qjL2VLMF8ehvT3IpCA6TC36f%2B0BjqwAcndiv6Y0sgzRYnuTP8GLZLdKx0mHpIpTuY3fCZAvbmYKq0Idc82fKrs76KWkNare%2FK1aJMjaShi59Q9mFqQffeHtUoMee5YfRypKIoSyYc6wAehUzK34AkziE%2FCZrAhFsSS7TpG0Ct7wie09prC0E29sITmMExGSdgvVPT54pQq6CNl5iduBCtfTVZJoyhPYGOCR2OQ4ZJ9wPn9L8ESTP24hh2NpN%2B7SY8xcger9io8&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240723T191659Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFMWAQSMZF%2F20240723%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=d04a6f25f75def9a330cbb91203c7d95a11d2b9b43eadc16c696569eb3058d54\",\"source\":\"BBC Good Food\",\"url\":\"http://www.bbcgoodfood.com/recipes/1755652/apple-and-blueberry-bircher\",\"shareAs\":\"http://www.edamam.com/recipe/apple-blueberry-bircher-48b9bd2b3487d17fa7e8f87080cd5514/apple\",\"yield\":4,\"dietLabels\":[\"High-Fiber\",\"Low-Fat\",\"Low-Sodium\"],\"healthLabels\":[\"Vegan\",\"Vegetarian\",\"Pescatarian\",\"Mediterranean\",\"DASH\",\"Dairy-Free\",\"Gluten-Free\",\"Wheat-Free\",\"Egg-Free\",\"Peanut-Free\",\"Tree-Nut-Free\",\"Soy-Free\",\"Fish-Free\",\"Shellfish-Free\",\"Pork-Free\",\"Red-Meat-Free\",\"Crustacean-Free\",\"Celery-Free\",\"Mustard-Free\",\"Sesame-Free\",\"Lupine-Free\",\"Mollusk-Free\",\"Alcohol-Free\",\"No oil added\",\"Sulfite-Free\",\"Kosher\",\"Immuno-Supportive\"],\"cautions\":[\"Gluten\",\"Wheat\",\"Sulfites\"],\"ingredientLines\":[\"200g porridge oats\",\"½ tsp ground cinnamon\",\"500ml apple juice\",\"4 apples, grated\",\"200g blueberries\"],\"ingredients\":[{\"text\":\"200g porridge oats\",\"quantity\":200,\"measure\":\"gram\",\"food\":\"oats\",\"weight\":200,\"foodCategory\":\"grains\",\"foodId\":\"food_bbx4dfgbzjecp8bkewhz5b1lp5ky\",\"image\":\"https://www.edamam.com/food-img/c3a/c3a47df1c9be12cb3d9091a841d37680.jpg\"},{\"text\":\"½ tsp ground cinnamon\",\"quantity\":0.5,\"measure\":\"teaspoon\",\"food\":\"ground cinnamon\",\"weight\":1.3,\"foodCategory\":\"Condiments and sauces\",\"foodId\":\"food_atjxtznauw5zabaixm24xa787onz\",\"image\":\"https://www.edamam.com/food-img/d4d/d4daa18b92c596a1c99c08537c38e65b.jpg\"},{\"text\":\"500ml apple juice\",\"quantity\":500,\"measure\":\"milliliter\",\"food\":\"apple juice\",\"weight\":524.1173518785664,\"foodCategory\":\"fruit\",\"foodId\":\"food_ai7w4okaoeknd5b5j9o66bm6nu10\",\"image\":\"https://www.edamam.com/food-img/324/32497d8cd6291a6f03acc032e1da7676.jpg\"},{\"text\":\"4 apples, grated\",\"quantity\":4,\"measure\":\"<unit>\",\"food\":\"apples\",\"weight\":728,\"foodCategory\":\"fruit\",\"foodId\":\"food_a1gb9ubb72c7snbuxr3weagwv0dd\",\"image\":\"https://www.edamam.com/food-img/42c/42c006401027d35add93113548eeaae6.jpg\"},{\"text\":\"200g blueberries\",\"quantity\":200,\"measure\":\"gram\",\"food\":\"blueberries\",\"weight\":200,\"foodCategory\":\"fruit\",\"foodId\":\"food_bgkl0cuasoeomtbolalmcauhha54\",\"image\":\"https://www.edamam.com/food-img/f55/f55705a2a9ea9f7abf449a05fa968139.png\"}],\"calories\":1514.8649818641406,\"totalWeight\":1653.4173518785665,\"totalTime\":10,\"cuisineType\":[\"american\"],\"mealType\":[\"breakfast\"],\"dishType\":[\"cereals\"],\"totalNutrients\":{\"ENERC_KCAL\":{\"label\":\"Energy\",\"quantity\":1514.8649818641406,\"unit\":\"kcal\"},\"FAT\":{\"label\":\"Fat\",\"quantity\":16.395072557442138,\"unit\":\"g\"},\"FASAT\":{\"label\":\"Saturated\",\"quantity\":2.8196308174132843,\"unit\":\"g\"},\"FATRN\":{\"label\":\"Trans\",\"quantity\":0,\"unit\":\"g\"},\"FAMS\":{\"label\":\"Monounsaturated\",\"quantity\":4.539605041112715,\"unit\":\"g\"},\"FAPU\":{\"label\":\"Polyunsaturated\",\"quantity\":5.94856976723264,\"unit\":\"g\"},\"CHOCDF\":{\"label\":\"Carbs\",\"quantity\":322.337060762278,\"unit\":\"g\"},\"CHOCDF.net\":{\"label\":\"Carbohydrates (net)\",\"quantity\":277.1265260585209,\"unit\":\"g\"},\"FIBTG\":{\"label\":\"Fiber\",\"quantity\":45.21053470375713,\"unit\":\"g\"},\"SUGAR\":{\"label\":\"Sugars\",\"quantity\":146.0802992507181,\"unit\":\"g\"},\"PROCNT\":{\"label\":\"Protein\",\"quantity\":37.74878735187856,\"unit\":\"g\"},\"CHOLE\":{\"label\":\"Cholesterol\",\"quantity\":0,\"unit\":\"mg\"},\"NA\":{\"label\":\"Sodium\",\"quantity\":34.374694075142656,\"unit\":\"mg\"},\"CA\":{\"label\":\"Calcium\",\"quantity\":218.60938815028533,\"unit\":\"mg\"},\"MG\":{\"label\":\"Magnesium\",\"quantity\":429.38586759392825,\"unit\":\"mg\"},\"K\":{\"label\":\"Potassium\",\"quantity\":2325.921525397352,\"unit\":\"mg\"},\"FE\":{\"label\":\"Iron\",\"quantity\":11.610700822254278,\"unit\":\"mg\"},\"ZN\":{\"label\":\"Zinc\",\"quantity\":8.679813470375715,\"unit\":\"mg\"},\"P\":{\"label\":\"Phosphorus\",\"quantity\":1187.6002146314997,\"unit\":\"mg\"},\"VITA_RAE\":{\"label\":\"Vitamin A\",\"quantity\":28.035,\"unit\":\"µg\"},\"VITC\":{\"label\":\"Vitamin C\",\"quantity\":57.654456166907096,\"unit\":\"mg\"},\"THIA\":{\"label\":\"Thiamin (B1)\",\"quantity\":1.8341106438944992,\"unit\":\"mg\"},\"RIBF\":{\"label\":\"Riboflavin (B2)\",\"quantity\":0.6389129498193563,\"unit\":\"mg\"},\"NIA\":{\"label\":\"Niacin (B3)\",\"quantity\":3.820375666871353,\"unit\":\"mg\"},\"VITB6A\":{\"label\":\"Vitamin B6\",\"quantity\":0.736875123338142,\"unit\":\"mg\"},\"FOLDFE\":{\"label\":\"Folate equivalent (total)\",\"quantity\":145.918,\"unit\":\"µg\"},\"FOLFD\":{\"label\":\"Folate (food)\",\"quantity\":145.918,\"unit\":\"µg\"},\"FOLAC\":{\"label\":\"Folic acid\",\"quantity\":0,\"unit\":\"µg\"},\"VITB12\":{\"label\":\"Vitamin B12\",\"quantity\":0,\"unit\":\"µg\"},\"VITD\":{\"label\":\"Vitamin D\",\"quantity\":0,\"unit\":\"µg\"},\"TOCPHA\":{\"label\":\"Vitamin E\",\"quantity\":2.5329717351878562,\"unit\":\"mg\"},\"VITK1\":{\"label\":\"Vitamin K\",\"quantity\":55.02160000000001,\"unit\":\"µg\"},\"WATER\":{\"label\":\"Water\",\"quantity\":1270.4173043568958,\"unit\":\"g\"}},\"totalDaily\":{\"ENERC_KCAL\":{\"label\":\"Energy\",\"quantity\":75.74324909320704,\"unit\":\"%\"},\"FAT\":{\"label\":\"Fat\",\"quantity\":25.223188549910983,\"unit\":\"%\"},\"FASAT\":{\"label\":\"Saturated\",\"quantity\":14.098154087066423,\"unit\":\"%\"},\"CHOCDF\":{\"label\":\"Carbs\",\"quantity\":107.44568692075933,\"unit\":\"%\"},\"FIBTG\":{\"label\":\"Fiber\",\"quantity\":180.84213881502853,\"unit\":\"%\"},\"PROCNT\":{\"label\":\"Protein\",\"quantity\":75.49757470375712,\"unit\":\"%\"},\"CHOLE\":{\"label\":\"Cholesterol\",\"quantity\":0,\"unit\":\"%\"},\"NA\":{\"label\":\"Sodium\",\"quantity\":1.4322789197976107,\"unit\":\"%\"},\"CA\":{\"label\":\"Calcium\",\"quantity\":21.860938815028533,\"unit\":\"%\"},\"MG\":{\"label\":\"Magnesium\",\"quantity\":102.23473037950673,\"unit\":\"%\"},\"K\":{\"label\":\"Potassium\",\"quantity\":49.487692029730894,\"unit\":\"%\"},\"FE\":{\"label\":\"Iron\",\"quantity\":64.50389345696821,\"unit\":\"%\"},\"ZN\":{\"label\":\"Zinc\",\"quantity\":78.90739518523377,\"unit\":\"%\"},\"P\":{\"label\":\"Phosphorus\",\"quantity\":169.65717351878567,\"unit\":\"%\"},\"VITA_RAE\":{\"label\":\"Vitamin A\",\"quantity\":3.115,\"unit\":\"%\"},\"VITC\":{\"label\":\"Vitamin C\",\"quantity\":64.06050685211899,\"unit\":\"%\"},\"THIA\":{\"label\":\"Thiamin (B1)\",\"quantity\":152.84255365787493,\"unit\":\"%\"},\"RIBF\":{\"label\":\"Riboflavin (B2)\",\"quantity\":49.14714998610433,\"unit\":\"%\"},\"NIA\":{\"label\":\"Niacin (B3)\",\"quantity\":23.877347917945958,\"unit\":\"%\"},\"VITB6A\":{\"label\":\"Vitamin B6\",\"quantity\":56.68270179524169,\"unit\":\"%\"},\"FOLDFE\":{\"label\":\"Folate equivalent (total)\",\"quantity\":36.4795,\"unit\":\"%\"},\"VITB12\":{\"label\":\"Vitamin B12\",\"quantity\":0,\"unit\":\"%\"},\"VITD\":{\"label\":\"Vitamin D\",\"quantity\":0,\"unit\":\"%\"},\"TOCPHA\":{\"label\":\"Vitamin E\",\"quantity\":16.88647823458571,\"unit\":\"%\"},\"VITK1\":{\"label\":\"Vitamin K\",\"quantity\":45.851333333333336,\"unit\":\"%\"}},\"digest\":[{\"label\":\"Fat\",\"tag\":\"FAT\",\"schemaOrgTag\":\"fatContent\",\"total\":16.395072557442138,\"hasRDI\":true,\"daily\":25.223188549910983,\"unit\":\"g\",\"sub\":[{\"label\":\"Saturated\",\"tag\":\"FASAT\",\"schemaOrgTag\":\"saturatedFatContent\",\"total\":2.8196308174132843,\"hasRDI\":true,\"daily\":14.098154087066423,\"unit\":\"g\"},{\"label\":\"Trans\",\"tag\":\"FATRN\",\"schemaOrgTag\":\"transFatContent\",\"total\":0,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"},{\"label\":\"Monounsaturated\",\"tag\":\"FAMS\",\"schemaOrgTag\":null,\"total\":4.539605041112715,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"},{\"label\":\"Polyunsaturated\",\"tag\":\"FAPU\",\"schemaOrgTag\":null,\"total\":5.94856976723264,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"}]},{\"label\":\"Carbs\",\"tag\":\"CHOCDF\",\"schemaOrgTag\":\"carbohydrateContent\",\"total\":322.337060762278,\"hasRDI\":true,\"daily\":107.44568692075933,\"unit\":\"g\",\"sub\":[{\"label\":\"Carbs (net)\",\"tag\":\"CHOCDF.net\",\"schemaOrgTag\":null,\"total\":277.1265260585209,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"},{\"label\":\"Fiber\",\"tag\":\"FIBTG\",\"schemaOrgTag\":\"fiberContent\",\"total\":45.21053470375713,\"hasRDI\":true,\"daily\":180.84213881502853,\"unit\":\"g\"},{\"label\":\"Sugars\",\"tag\":\"SUGAR\",\"schemaOrgTag\":\"sugarContent\",\"total\":146.0802992507181,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"},{\"label\":\"Sugars, added\",\"tag\":\"SUGAR.added\",\"schemaOrgTag\":null,\"total\":0,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"}]},{\"label\":\"Protein\",\"tag\":\"PROCNT\",\"schemaOrgTag\":\"proteinContent\",\"total\":37.74878735187856,\"hasRDI\":true,\"daily\":75.49757470375712,\"unit\":\"g\"},{\"label\":\"Cholesterol\",\"tag\":\"CHOLE\",\"schemaOrgTag\":\"cholesterolContent\",\"total\":0,\"hasRDI\":true,\"daily\":0,\"unit\":\"mg\"},{\"label\":\"Sodium\",\"tag\":\"NA\",\"schemaOrgTag\":\"sodiumContent\",\"total\":34.374694075142656,\"hasRDI\":true,\"daily\":1.4322789197976107,\"unit\":\"mg\"},{\"label\":\"Calcium\",\"tag\":\"CA\",\"schemaOrgTag\":null,\"total\":218.60938815028533,\"hasRDI\":true,\"daily\":21.860938815028533,\"unit\":\"mg\"},{\"label\":\"Magnesium\",\"tag\":\"MG\",\"schemaOrgTag\":null,\"total\":429.38586759392825,\"hasRDI\":true,\"daily\":102.23473037950673,\"unit\":\"mg\"},{\"label\":\"Potassium\",\"tag\":\"K\",\"schemaOrgTag\":null,\"total\":2325.921525397352,\"hasRDI\":true,\"daily\":49.487692029730894,\"unit\":\"mg\"},{\"label\":\"Iron\",\"tag\":\"FE\",\"schemaOrgTag\":null,\"total\":11.610700822254278,\"hasRDI\":true,\"daily\":64.50389345696821,\"unit\":\"mg\"},{\"label\":\"Zinc\",\"tag\":\"ZN\",\"schemaOrgTag\":null,\"total\":8.679813470375715,\"hasRDI\":true,\"daily\":78.90739518523377,\"unit\":\"mg\"},{\"label\":\"Phosphorus\",\"tag\":\"P\",\"schemaOrgTag\":null,\"total\":1187.6002146314997,\"hasRDI\":true,\"daily\":169.65717351878567,\"unit\":\"mg\"},{\"label\":\"Vitamin A\",\"tag\":\"VITA_RAE\",\"schemaOrgTag\":null,\"total\":28.035,\"hasRDI\":true,\"daily\":3.115,\"unit\":\"µg\"},{\"label\":\"Vitamin C\",\"tag\":\"VITC\",\"schemaOrgTag\":null,\"total\":57.654456166907096,\"hasRDI\":true,\"daily\":64.06050685211899,\"unit\":\"mg\"},{\"label\":\"Thiamin (B1)\",\"tag\":\"THIA\",\"schemaOrgTag\":null,\"total\":1.8341106438944992,\"hasRDI\":true,\"daily\":152.84255365787493,\"unit\":\"mg\"},{\"label\":\"Riboflavin (B2)\",\"tag\":\"RIBF\",\"schemaOrgTag\":null,\"total\":0.6389129498193563,\"hasRDI\":true,\"daily\":49.14714998610433,\"unit\":\"mg\"},{\"label\":\"Niacin (B3)\",\"tag\":\"NIA\",\"schemaOrgTag\":null,\"total\":3.820375666871353,\"hasRDI\":true,\"daily\":23.877347917945958,\"unit\":\"mg\"},{\"label\":\"Vitamin B6\",\"tag\":\"VITB6A\",\"schemaOrgTag\":null,\"total\":0.736875123338142,\"hasRDI\":true,\"daily\":56.68270179524169,\"unit\":\"mg\"},{\"label\":\"Folate equivalent (total)\",\"tag\":\"FOLDFE\",\"schemaOrgTag\":null,\"total\":145.918,\"hasRDI\":true,\"daily\":36.4795,\"unit\":\"µg\"},{\"label\":\"Folate (food)\",\"tag\":\"FOLFD\",\"schemaOrgTag\":null,\"total\":145.918,\"hasRDI\":false,\"daily\":0,\"unit\":\"µg\"},{\"label\":\"Folic acid\",\"tag\":\"FOLAC\",\"schemaOrgTag\":null,\"total\":0,\"hasRDI\":false,\"daily\":0,\"unit\":\"µg\"},{\"label\":\"Vitamin B12\",\"tag\":\"VITB12\",\"schemaOrgTag\":null,\"total\":0,\"hasRDI\":true,\"daily\":0,\"unit\":\"µg\"},{\"label\":\"Vitamin D\",\"tag\":\"VITD\",\"schemaOrgTag\":null,\"total\":0,\"hasRDI\":true,\"daily\":0,\"unit\":\"µg\"},{\"label\":\"Vitamin E\",\"tag\":\"TOCPHA\",\"schemaOrgTag\":null,\"total\":2.5329717351878562,\"hasRDI\":true,\"daily\":16.88647823458571,\"unit\":\"mg\"},{\"label\":\"Vitamin K\",\"tag\":\"VITK1\",\"schemaOrgTag\":null,\"total\":55.02160000000001,\"hasRDI\":true,\"daily\":45.851333333333336,\"unit\":\"µg\"},{\"label\":\"Sugar alcohols\",\"tag\":\"Sugar.alcohol\",\"schemaOrgTag\":null,\"total\":0,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"},{\"label\":\"Water\",\"tag\":\"WATER\",\"schemaOrgTag\":null,\"total\":1270.4173043568958,\"hasRDI\":false,\"daily\":0,\"unit\":\"g\"}],\"tags\":[\"Vegetarian\",\"Healthy\"]}', '2024-07-23 19:17:27', ''),
(56, 48, 'Old-Fashioned Fans, Meet The American Trilogy recipes', '\"http://www.foodrepublic.com/recipes/old-fashioned-fans-meet-the-american-trilogy/\"', '2024-07-24 09:12:02', ''),
(120, 36, 'Apple Fennel Granita', '\"https://www.epicurious.com/recipes/food/views/apple-fennel-granita-106539\"', '2024-07-28 09:22:21', 'https://edamam-product-images.s3.amazonaws.com/web-img/b3e/b3e4b20261a59e7fc2b96e5fce20a2c9.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjECgaCXVzLWVhc3QtMSJGMEQCIC4Z5vp44O4KBka6PjT%2FU%2B5I513RvfflrUZ0o%2BelsAIIAiAL3%2BphkPmpH2uff0uSVPHPHogBJ0zlTa2lmN44HyMptiq4BQgREAAaDDE4NzAxNzE1MDk4NiIMGrxJ3TzzfCH4nwVJKpUFwIp0zfg5FBBzxUm4e1cJOczfx5DEhvL%2F%2BLmYDUvClKSAb7U2HkRQufjPmEggDBCBksGRJnhFeNf9vl2RJuEs8LhOdrIjj7yECFvvOaU9PMrBOEFoKt0xysVXTeGsVbWtk4bpiNoQL7DVT2RwNR3NkpUVCqQFG8925nabmmUuDCZJC4G9IOrAiAz5xrueC2cjDjLko5pUADwmcVKnPSE4Qom%2FqmBsRRhJ7l6g9FqsczwqM3dYU3svEV5uxc8yL2XS0%2BWFc4EHAkP47HDJnxb%2FXmi6WFaJizqOu3w2kbv5erX3JF3%2FzsgQy7ZFw8lx47dKmt9Lxk%2FFrWATxizZ4gZ%2FlywMXJTuUbxfQZgcv%2F66R%2BTB63TAOcLD9zfvHcNSBmFZUVPwvHCOphcYMu4AyCCJKu%2Bw1Xh94yZR9S3V9IGV%2BXgN5LHLVcecT05gtA%2FgJM6Pbc80BxaKPBJbS4JPTOcTucmD05YfHPK7lNksffugahIW%2BBXDcWxp223uLRe6f22x%2B%2FMefczSqplA3cOxPo%2FhC10640YlGp2kKAAYkw0E7pKlF2bw659qdBJJqhFI30%2FNQ0vVHinGezkJyt7bp5%2BP0HELKAUKsrXkUxCc0KST3ZvVURq7VK8n4q1Yyo5fPQk0DMIwpGcbW2JQrEuBYwA3uGRlP%2BK4jPniE2rLkgq%2FkRccTZQIdDsnk5FjQcLNJWGHRv5Cn6Wk1%2FzxKBS9wBLf%2F3mG61R83UAsang08HQzQHeyJZ90JvZOovi4%2Fyvs3BTLi7oxqoYyRWPcan1ioRm6H9UNjPVMkGPuo1DYx1rWFs%2BiRKe%2FezWRfJ%2Bry4O4XTzuOLL8PZ9t2k65tXCM7vyk2dXSxalHXil%2BpJZs6uQEKdtytA4XWzCj6Ze1BjqyAdIzP9rRaFwHx9G%2Fb%2BS8kb0ONpCzHKwVwHstsE5TT04%2FAutspXa%2BmPz9WhFX4bEITwUDP2G%2BTPmt2ScmQK0TV8Y6v7zJH2fehzZIv2O6YKM6lOq%2FpXIsferXOr%2FJsorzG47mhrYASiCiUC1VEMsxzx8VmfkdHfAYAddXuE5LzcimNwjb%2ByF5rwAhPPal0%2BT1pj4M%2BaUIBJgE0TMLyzJdoKn7EzC8SFf96JbiDkzqim6sUog%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240728T085706Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3599&X-Amz-Credential=ASIASXCYXIIFGJRVJBP4%2F20240728%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=c1f200a62358f33e09b7349318c0f209ace73128d3815dda295550451f2228d5'),
(121, 36, 'Apple Butter', '\"https://www.bonappetit.com/recipe/apple-butter\"', '2024-07-28 09:22:55', 'https://edamam-product-images.s3.amazonaws.com/web-img/1ae/1ae60dc947c773498aba984e4ae9e221.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjECgaCXVzLWVhc3QtMSJGMEQCIC4Z5vp44O4KBka6PjT%2FU%2B5I513RvfflrUZ0o%2BelsAIIAiAL3%2BphkPmpH2uff0uSVPHPHogBJ0zlTa2lmN44HyMptiq4BQgREAAaDDE4NzAxNzE1MDk4NiIMGrxJ3TzzfCH4nwVJKpUFwIp0zfg5FBBzxUm4e1cJOczfx5DEhvL%2F%2BLmYDUvClKSAb7U2HkRQufjPmEggDBCBksGRJnhFeNf9vl2RJuEs8LhOdrIjj7yECFvvOaU9PMrBOEFoKt0xysVXTeGsVbWtk4bpiNoQL7DVT2RwNR3NkpUVCqQFG8925nabmmUuDCZJC4G9IOrAiAz5xrueC2cjDjLko5pUADwmcVKnPSE4Qom%2FqmBsRRhJ7l6g9FqsczwqM3dYU3svEV5uxc8yL2XS0%2BWFc4EHAkP47HDJnxb%2FXmi6WFaJizqOu3w2kbv5erX3JF3%2FzsgQy7ZFw8lx47dKmt9Lxk%2FFrWATxizZ4gZ%2FlywMXJTuUbxfQZgcv%2F66R%2BTB63TAOcLD9zfvHcNSBmFZUVPwvHCOphcYMu4AyCCJKu%2Bw1Xh94yZR9S3V9IGV%2BXgN5LHLVcecT05gtA%2FgJM6Pbc80BxaKPBJbS4JPTOcTucmD05YfHPK7lNksffugahIW%2BBXDcWxp223uLRe6f22x%2B%2FMefczSqplA3cOxPo%2FhC10640YlGp2kKAAYkw0E7pKlF2bw659qdBJJqhFI30%2FNQ0vVHinGezkJyt7bp5%2BP0HELKAUKsrXkUxCc0KST3ZvVURq7VK8n4q1Yyo5fPQk0DMIwpGcbW2JQrEuBYwA3uGRlP%2BK4jPniE2rLkgq%2FkRccTZQIdDsnk5FjQcLNJWGHRv5Cn6Wk1%2FzxKBS9wBLf%2F3mG61R83UAsang08HQzQHeyJZ90JvZOovi4%2Fyvs3BTLi7oxqoYyRWPcan1ioRm6H9UNjPVMkGPuo1DYx1rWFs%2BiRKe%2FezWRfJ%2Bry4O4XTzuOLL8PZ9t2k65tXCM7vyk2dXSxalHXil%2BpJZs6uQEKdtytA4XWzCj6Ze1BjqyAdIzP9rRaFwHx9G%2Fb%2BS8kb0ONpCzHKwVwHstsE5TT04%2FAutspXa%2BmPz9WhFX4bEITwUDP2G%2BTPmt2ScmQK0TV8Y6v7zJH2fehzZIv2O6YKM6lOq%2FpXIsferXOr%2FJsorzG47mhrYASiCiUC1VEMsxzx8VmfkdHfAYAddXuE5LzcimNwjb%2ByF5rwAhPPal0%2BT1pj4M%2BaUIBJgE0TMLyzJdoKn7EzC8SFf96JbiDkzqim6sUog%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240728T085706Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3599&X-Amz-Credential=ASIASXCYXIIFGJRVJBP4%2F20240728%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=263090f6b52f7a25d8d22e4166a54214074c3d8b203cb694e89100710d6966bc'),
(122, 36, 'Apple Martini', '\"https://food52.com/recipes/87040-apple-martini\"', '2024-07-28 09:22:57', 'https://edamam-product-images.s3.amazonaws.com/web-img/f8b/f8ba108a8c69f8d8db233fa58dc03834.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjECgaCXVzLWVhc3QtMSJGMEQCIC4Z5vp44O4KBka6PjT%2FU%2B5I513RvfflrUZ0o%2BelsAIIAiAL3%2BphkPmpH2uff0uSVPHPHogBJ0zlTa2lmN44HyMptiq4BQgREAAaDDE4NzAxNzE1MDk4NiIMGrxJ3TzzfCH4nwVJKpUFwIp0zfg5FBBzxUm4e1cJOczfx5DEhvL%2F%2BLmYDUvClKSAb7U2HkRQufjPmEggDBCBksGRJnhFeNf9vl2RJuEs8LhOdrIjj7yECFvvOaU9PMrBOEFoKt0xysVXTeGsVbWtk4bpiNoQL7DVT2RwNR3NkpUVCqQFG8925nabmmUuDCZJC4G9IOrAiAz5xrueC2cjDjLko5pUADwmcVKnPSE4Qom%2FqmBsRRhJ7l6g9FqsczwqM3dYU3svEV5uxc8yL2XS0%2BWFc4EHAkP47HDJnxb%2FXmi6WFaJizqOu3w2kbv5erX3JF3%2FzsgQy7ZFw8lx47dKmt9Lxk%2FFrWATxizZ4gZ%2FlywMXJTuUbxfQZgcv%2F66R%2BTB63TAOcLD9zfvHcNSBmFZUVPwvHCOphcYMu4AyCCJKu%2Bw1Xh94yZR9S3V9IGV%2BXgN5LHLVcecT05gtA%2FgJM6Pbc80BxaKPBJbS4JPTOcTucmD05YfHPK7lNksffugahIW%2BBXDcWxp223uLRe6f22x%2B%2FMefczSqplA3cOxPo%2FhC10640YlGp2kKAAYkw0E7pKlF2bw659qdBJJqhFI30%2FNQ0vVHinGezkJyt7bp5%2BP0HELKAUKsrXkUxCc0KST3ZvVURq7VK8n4q1Yyo5fPQk0DMIwpGcbW2JQrEuBYwA3uGRlP%2BK4jPniE2rLkgq%2FkRccTZQIdDsnk5FjQcLNJWGHRv5Cn6Wk1%2FzxKBS9wBLf%2F3mG61R83UAsang08HQzQHeyJZ90JvZOovi4%2Fyvs3BTLi7oxqoYyRWPcan1ioRm6H9UNjPVMkGPuo1DYx1rWFs%2BiRKe%2FezWRfJ%2Bry4O4XTzuOLL8PZ9t2k65tXCM7vyk2dXSxalHXil%2BpJZs6uQEKdtytA4XWzCj6Ze1BjqyAdIzP9rRaFwHx9G%2Fb%2BS8kb0ONpCzHKwVwHstsE5TT04%2FAutspXa%2BmPz9WhFX4bEITwUDP2G%2BTPmt2ScmQK0TV8Y6v7zJH2fehzZIv2O6YKM6lOq%2FpXIsferXOr%2FJsorzG47mhrYASiCiUC1VEMsxzx8VmfkdHfAYAddXuE5LzcimNwjb%2ByF5rwAhPPal0%2BT1pj4M%2BaUIBJgE0TMLyzJdoKn7EzC8SFf96JbiDkzqim6sUog%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240728T085706Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFGJRVJBP4%2F20240728%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=04faf10d796969354b813f2becd16f0c1b6661d62ffc94a0a0fd8447aad6ba0d');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `userid`, `title`, `ingredients`, `video`, `image`, `created_at`) VALUES
(7, 36, 'befor login', 'done', 'm', 'uploads/Screenshot 2024-03-22 231347.png', '2024-07-15 17:45:39'),
(9, 48, '1111111', 'dddddddd', 'dd', 'uploads/Screenshot 2024-03-22 171217.png', '2024-07-16 17:26:50'),
(10, 48, 'test', 'test', 'https://youtu.be/QQUNOcy_i6A?si=vP4o6hFq8-VnwiQ_', 'uploads/Screenshot 2024-04-22 201853.png', '2024-07-16 17:27:35'),
(11, 48, 'dddddd', 'dddd', '\"D:Full Stack5 WebCH7 JavaScript2.mp4\"', 'uploads/Screenshot 2024-03-14 222109.png', '2024-07-16 17:28:43'),
(14, 36, 'Mansaf', 'Mansaf', '', 'uploads/Screenshot 2024-03-28 005058.png', '2024-07-16 20:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `confirm_password`, `created_at`, `profile_picture`) VALUES
(34, 'sajeda amjad alquraan', 'alquraansajeda@gmail.com', '0772420654', 'Sajeda123', 'Sajeda123', '2024-07-09 14:23:05', 'default.png'),
(36, 'sajeda amjad alquraan', 'sajedaalquraan1@gmail.com', '0772420654', 'Sajeda123', 'Sajeda123', '2024-07-09 14:40:43', 'Screenshot 2024-03-14 222059_5.png'),
(47, 'mo', 'mo@gmail.com', '077777', 'Mo741741', 'Mo741741', '2024-07-13 16:22:43', 'default.png'),
(48, 'Mohammed ', 'mohammed@gmail.com', '077555555', 'IT123456', 'IT123456', '2024-07-16 17:19:30', 'Screenshot 2024-04-25 191823.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `liked_recipes`
--
ALTER TABLE `liked_recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `liked_recipes`
--
ALTER TABLE `liked_recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
