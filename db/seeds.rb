# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
Atmosphere.create(name: 'Scenic views')
Atmosphere.create(name: 'Gardens')
Atmosphere.create(name: 'Casual')
Atmosphere.create(name: 'Upscale')
Atmosphere.create(name: 'Indoor')
Atmosphere.create(name: 'Outdoor')
Atmosphere.create(name: 'Vineyard access')

# 1
WineType.create(name: 'Red')
# 2
WineType.create(name: 'White')
# 3
WineType.create(name: 'Other')

Varietal.create(name: 'Aglianico', wine_type_id: 1, bio: '("ahl-yah-nee-koe") Dark, concentrated, & ageworthy Southern Italian red with firm tannins and high acidity. Also found in Australia & California. Red & dark fruits, savory/earthy spices & herbs, licorice, menthol, graphite, chocolate, plum. Also referred to as the "Barolo of the South".')
Varietal.create(name: 'Barbera', wine_type_id: 1, bio: '("Bar-bare-ah") Light to Medium bodied, versatile, fresh & fruit-forward Italian red grape with low tannins & high acidity. Most widely planted in Piemonte. Dark cherry, dried strawberry, plum, blackberry, violet, lavender, dried leaves, vanilla, nutmeg, anise. Traditionally best when consumed young. Also found in Australia & California.')
Varietal.create(name: 'Cabernet Sauvignon', wine_type_id: 1, bio:'("Cab-er-nay Saw-ving-yon") One of the world\'s most widely recognized & planted red varieties. Deep in color, full-bodied & structured, age-worthy, with med-high tannins & med-high acidity. Commonly blended with Merlot, Cabernet Franc, Petit Verdot, and other Bordeaux varieties. Cassis, black cherry, blackcurrent, green/black pepper, cedar, tobacco, & vanilla. Originally from Bordeaux, France but also commonly found in California, Washington, Spain, South America, Australia, Italy, & other regions. ')
Varietal.create(name: 'Cab Franc', wine_type_id: 1, bio: '("Cab-er-nay Fronk") Aromatic, light-medium bodied red variety with light-med tannins & acidity. Most commonly appears in blended red wines, where it adds herbaceous accents of tobacco and dark spice along with cassis & floral aromas. Also known for its vegetal characteristics, in particular green bell peppers. Originally from Bordeaux, France but also found in the Loire Valley, California, Australia, South America, and Canada.')
Varietal.create(name: 'Carignane', wine_type_id: 1, bio: '("Care-ing-non") Aka Carignan, Mazuelo, Cariñena. Deeply colored red variety, high in tannins & acidity. Often blended with Syrah, Grenache, & Cinsault. Dark and black fruits, pepper, licorice, and spicy and savory accents. Widely planted in the southern France, also found in California, Spain, Italy.')
Varietal.create(name: 'Cinsault', wine_type_id: 1, bio: '("Sin-So") Aka Cinsaut, Ottavianello. Light-skinned and fresh with a soft perfume, it is particularly suitable for rosés and fruity, early-drinking reds. Traditionally, Cinsault has been used to add perfume and fruit to Rhone-style blends, but is gaining popularity as a varietal wine. Widely planted throughout Southern France, also seen in Italy, California, Lebanon, and South Africa.')
Varietal.create(name: 'Dolcetto', wine_type_id: 1, bio: '("Dole-chetto") Dolcetto means "little sweet one" because of its soft, fruit-forward profile. Typically low acidity & tannins with color varying from deep ruby to purple. Red & dark fruit (sometimes described as slightly bitter), licorice, sweet spices with earthy/nutty undertones. Originally from northwestern Italy but also found in California. Best consumed young.')
Varietal.create(name: 'Grenache', wine_type_id: 1, bio: '("Greh-nosh") Aka: Cannonau (Italy), Garnacha (Spain). Thrives in dry, hot climates such as south of France, Spain, California, Australia. Light in color, low-med tannins & acidity. Sometimes high in alcohol depending on where it\'s grown. Often blended with Syrah, Carignan, Tempranillo, and Cinsaut. Candied strawberry, black cherry, raspberry, anise, tobacco, leather, dried herbs, citrus rind, cinnamon.')
Varietal.create(name: 'Merlot', wine_type_id: 1, bio: '("Mer-low") One of the most widely planted red varieties in the world. Often blended with Cabernet Sauvignon and other tannic/structured Bordeaux varieties to provide softness and fruit. New world examples have lush, velvety tannins with intense, plum and blackberry fruit. Old world examples have higher acidity, medium body, fresh red fruit flavors, and potentially leafy/vegetal notes.')
Varietal.create(name: 'Malbec', wine_type_id: 1, bio: '("Mall-beck") Aka: Cot or Auxerrois. Dark, inky color. New world examples have juicy, ripe fruit & softer tannins. Old world examples are more structured, rustic, and savory. Plum, blackberry, tobacco, dried herbs, violet. Originally a blending grape in Bordeaux and made as a varietal wine in other parts of France. Has thrived in Mendoza, Argentina where a nostalgic French botanist planted it by order of the mayor in 1868.')
Varietal.create(name: 'Mourvedre', wine_type_id: 1, bio: '("More-ved") Aka: Mataro, Monastrell. Intensely colored, structured, & full-bodied with high tannins & alcohol, moderate acidity. Blueberry, blackberry, plum, black pepper, violet, smoke, gravel, meat/game, leather, & earth. Often blended with grenache & syrah. Found widely throughout southern France & Spain, also Australia, California, Washington.  Fun Fact: due to its mouth-drying tannins, the French have nicknamed this grape "Etrangle-Chien" (the dog strangler).')
Varietal.create(name: 'Petite Sirah', wine_type_id: 1, bio: '("Peh-teet Seer-ah") Aka: Durif, Petite Syrah. "Petite" here refers to the small, intensely colored berries that make Petite Sirah such a distinctive grape variety. Dark & structured with high tannins, acidity, & alcohol, excellent potential for aging. Blackberry, blueberry, chocolate, black pepper, licorice, herbs. Originally from France, but now almost exclusively planted in California, to a lesser extent Australia. Not the same grape as Syrah.')
Varietal.create(name: 'Petit Verdot', wine_type_id: 1, bio: '("Peh-teet Vare-doe") Dense, inky, violet-black color with high tannins & acidity due to the small ("petit") sized berries. Vanilla, smoke, spice, cedar, molasses, tar, dark fruit such as blackberry, black cherry, plum. Originally a blending grape in Bordeaux, France but now made as a single varietal wine in other areas such as California, Australia, Spain, & South America.')
Varietal.create(name: 'Pinot Noir', wine_type_id: 1, bio: '("Pee-no No-wahr") Aka: Spätburgunder, Pinot Nero. The main red grape of Burgundy (and blending component of Champagne), also grown in other cool-climate areas in California, Oregon, Germany, New Zealand, & Chile. Highly "terroir-sensitive" with a range of expressions depending on where it is grown. Can be light-bodied & pale or darker and med-bodied. Light-med tannins, med-high acidity. Strawberry, cherry, cranberry, raspberry, clove, mushroom, cola, vanilla, forest floor, black pepper, violets, sometimes approaching the flavor spectrum of Syrah.')
Varietal.create(name: 'Primitivo', wine_type_id: 1, bio: '("Prim-eh-teevo") Dark-skinned grape known for producing inky, tannic, flavorful, high alcohol wines. Aromas include wild/brambly fruit, plum, clove, exotic spice, lavender/violet. Originally from Greece and southern Italy with a history dating back thousands of years. Shares its DNA with Zinfandel (both are clones of a Croatian grape called Crljenak). Heavily debated until recently, but now widely accepted as being identical to Zinfandel.')
Varietal.create(name: 'Red Blend', wine_type_id: 1, bio: 'When done well, red blends show great complexity, epitomizing "the whole is greater than the sum of its parts". Common red blends include Cabernet Sauvignon/Merlot/Cabernet Franc/Petit Verdot (Bordeaux blend); Grenache/Syrah/Mourvedre (GSM or Rhone blend); Sangiovese/Cabernet Sauvignon/Syrah/Merlot (Super Tuscan). In California, winemakers commonly blend Zinfandel and Petit Sirah with other red varieties for a completely unique wine not found in other parts of the world.')
Varietal.create(name: 'Red Dessert', wine_type_id: 1, bio: 'Sweet dessert wine is produced when fermentation is stopped before the yeast turns all the natural grape sugar into alcohol, either by adjusting the fermentation temperature or adding brandy to wine (fortifying). Dessert wines can be sparkling or still. Common red dessert wines include Port, Sherry, Madeira, Recioto, Vin Doux Naturel, and "late harvest" varietal wines made from Zinfandel, Cabernet Sauvignon, and other red grapes.')
Varietal.create(name: 'Sangiovese', wine_type_id: 1, bio: '("San-geo-vay-say") The definitive grape of Italy with a range of expressions. Marked by its high tannins & acidity. High quality examples have robust structure, rustic flavors, and great aging potential, while entry-level examples are fresh and juicy. Tart cherry, red plum, strawberry, fig, roasted pepper, stewed tomatoes, leather, tobacco, smoke, dried flowers/herbs. Also seen in California.')
Varietal.create(name: 'Syrah', wine_type_id: 1, bio: '("Sear-ah") Aka: Shiraz. Dark-skinned, full-bodied with med-high tannins, med-high acidity, med-high alcohol. Can be quite floral in its youth, developing more peppery and herbaceous notes as it ages. Blueberry, blackberry, plum, meat/bacon fat, black pepper, chocolate, licorice, smoke/tobacco, olive. Native to the Northern Rhone of France, also found in California, Australia, Italy, South America and elsewhere. Often blended with other red grapes.')
Varietal.create(name: 'Tempranillo', wine_type_id: 1, bio: '("Temp-rah-nee-oh") Aka: Tinto del Toro, Tinta Fina & Tinto del Pais (Spain); Tinta Roriz & Aragonez (Portugal). Extremely versatile, food-friendly, and easy to drink. Smooth & medium bodied with medium tannins and alcohol. Red fruit/cherry, plum, tomato, leather, tobacco, vanilla, and clove. Flagship red grape of Spain, often blended with garnacha/grenache. Also found in California, Australia.')
Varietal.create(name: 'Zinfandel', wine_type_id: 1, bio: '("Zin-fan-dell") Med-full bodied red wine with med-high alcohol, moderate tannins and high acidity. Jammy/brambly/candied fruit, licorice, spice, tobacco/smoke. The all-American success story... until only recently, Zinfandel was California\'s "mystery grape" because its origins were unknown. DNA fingerprinting has confirmed that Italy\'s Primitivo and Crljenak Kastelanski, an ancient Croatian variety, are genetically identical to Zinfandel grapes.')
Varietal.create(name: 'Sparking / Champagne', wine_type_id: 3, bio: 'Champagne is a sparkling wine from the Champagne region of France. The name is protected by law in the EU. Some new world producers use the name "champagne" on their label as a marketing technique, although it is incorrect. Therefore, Champagne is a sparkling wine, but not all sparkling wines are Champagne. Sparkling (bubbly) wines are produced in just about every country that makes wine, and they come in a wide range of styles, quality levels, and prices. Sparkling wines are distinguishable from other wines by the presence of carbon dioxide (bubbles) in the wine. Many regions require that the bubbles be a natural by-product of fermentation in order for a wine to be considered a high-quality sparkling wine, but there are alternate methods of introducing bubbles into wine. Other sparkling wine terms include Crémant, Cava, Sekt, Espumante, Spumante, Frizzante, Pétillant.')
Varietal.create(name: 'Albarino', wine_type_id: 2, bio: '("Al-bah-ree-nyoh") Aka: Albariño, Alvarinho. A green-skinned grape high in acidity and aromatics; Can be produced in a light or fuller-bodied style, with oak or lees aging adding to the texture and richness. Peach/stone fruit, citrus, almond, grass, mineral. Best consumed young. Native to Galicia on the north Atlantic coast of Spain and the key grape variety in the Rias Baixas. Often used as a component of Vinho Verde in Portugal. Also found in California.')
Varietal.create(name: 'Chardonnay', wine_type_id: 2, bio: '("Shar-doh-nay") Chardonnay is dramatically affected by differences in soil, climate, and winegrowing/winemaking practices, and therefore, comes in a wide range of styles. When made with little or no oak it can reveal crisp acidity, green apple, citrus, and stone fruit, along with flinty or mineral characters. Alternatively, it can be full-bodied and lush with notes of butter, cream, hazelnut, tropical fruit, vanilla, toast, & coconut. The white grape of Burgundy, but widely planted all over the world.')
Varietal.create(name: 'Chenin Blanc', wine_type_id: 2, bio: '("Chen-in-blonk") Native to France\'s Loire region, Chenin blanc is one of the most versatile of all wine varieties. Crisp, dry table wines, light sparkling wines, long-lived, unctuous, nectar-like dessert wines, and even brandy are all produced in various areas of the wine world using Chenin Blanc. No matter the style, Chenin blanc is distinguishable by a floral, honeyed character, along with zesty acidity.')
Varietal.create(name: 'Gewürztraminer', wine_type_id: 2, bio: '("Guh-vertz-trah-mee-ner") Highly aromatic & spicy white wine with med-high alcohol, med-full body, and low acidity. Usually made with some sweetness but many Gewürztraminers taste sweeter than they actually are due to their exotic aromas. Lychee, grapefruit, pineapple, peach, apricot, rose, honey, ginger, cinnamon, smoke. Thrives in France\'s Alsace region & Germany. Also made in northern Italy, California, & New Zealand.')
Varietal.create(name: 'Grenache Blanc', wine_type_id: 2, bio: '("Greh-nosh blonk") Aka Garnacha blanca. Straw-colored white wine, high in alcohol & acid, med-full bodied. Bright green apple, peach, mandarin orange, mineral, licorice. Although it can stand confidently on its own, its crispness and long finish make it a tremendous blending component. Originated in Spain and spread to the south of France in the Rhône valley. Also found in California.')
Varietal.create(name: 'Marsanne', wine_type_id: 2, bio: '("Mar-sahn") Aka: Ermitage. White wine that generally has good weight and structure, but often lacks complex aromatics and flavors. Therefore, often blended with its more aromatic cousin Roussanne. Good examples show melon, honeysuckle, and mineral notes. Native to France\'s Rhone Valley, but also found in Switzerland, California, & Australia.')
Varietal.create(name: 'Pinot Blanc', wine_type_id: 2, bio: '("Pee-no blonk") Aka: Pinot Bianco, Weissburgunder. A versatile white-wine grape variety that is used in the production of still, sparkling, and dessert wines. Med-full bodied, with med-high acidity, responds well to oak maturation. Like Chardonnay, it is a "blank canvas" for winemaker intervention, so styles are heavily dependant on winemaking and region. Apple, almond, subtle smokiness.')
Varietal.create(name: 'Pinot Gris', wine_type_id: 2, bio: '("Pee-no Gree") Aka: Pinot Grigio, Grauburgunder. Pinot Gris is naturally low in acidity and high in sugar and so it thrives in cool climates where alcohol and sugar levels are tamed. Flavors and aromas vary greatly from region to region, but are typically pears, apples, stone fruit, sweet spices, flint, wet wool. Originally from Burgundy, but now found in wine regions all over the world. In Italy, it is produced in a pale, refreshing light style. Can be made in full-bodied or dessert styles as well.')
Varietal.create(name: 'Riesling', wine_type_id: 2, bio: '("Reez-ling") A light-skinned, highly aromatic, highly acidic grape of German origin which many wine experts and collectors believe is the world\'s finest white-wine grape variety. Though people assume Riesling is always sweet, Riesling comes in a range of styles, including bone dry and sparkling. High quality Riesling has the potential to age for decades, while entry-level examples should be enjoyed young. Apricot, nectarine, peach, apple, citrus, honey, petrol, ginger, citrus blossom, lanolin/wool.')
Varietal.create(name: 'Rosé', wine_type_id: 3, bio: 'The development of Rosé wine perhaps started with the popularity of Claret (“klar- ETT”) – a style of very light red Bordeaux during the 1800’s. Today, Rosé is made a wide range of colors & flavor profiles and has earned itself a huge following. Despite what many people think, dry Rosé is the most common style produced today, although sweeter examples do exist. France and Spain lead the way in Rosé wine production, but it is produced all over the world. Dry Rosé is one of the most refreshing and food-friendly wines on the market. It\'s the summer beverage of choice throughout the south of France!')
Varietal.create(name: 'Roussanne', wine_type_id: 2, bio: '("Rue-sahn") A white-wine grape native to France\'s Rhone Valley where it is blended with Marsanne. Usually has a rich, sometimes oily texture. Med-high acidity & alcohol. Melon, pear, spiced apricot, herbal tea, honey. It is named after its skin color - when ripe it takes on a reddish-gold pigment that equates to the French word "roux" (meaning "russet", or reddish-brown). Also found in California.')
Varietal.create(name: 'Sauvignon Blanc', wine_type_id: 2, bio: '("Saw-ving-yon blonk") Aka: Fumé Blanc. White wine grape variety, typically made in a crisp, light, dry style with high acidity, but can be made more full-bodied or with a touch of sweetness. Lime, green apple, passion fruit, white peach, gooseberry, tarragon/dried herbs, grass, mineral. Less commonly cream, butter, vanilla. Native to France\'s Bordeaux and Loire regions, but now one of the most widely planted wine grapes in the world with a wide range of styles and flavors. Often blended with Semillon.')
Varietal.create(name: 'Semillon', wine_type_id: 2, bio: '("Sem-ee-on") Med-full bodied, low-med acidity (although acidity can be high depending on where its made). Semillon is one of the wine world\'s most underappreciated white wine grape varieties. This gold-skinned grape produces France\'s most famous and revered sweet wine - Sauternes. Sweet wine made from Semillon can take on a multitude of flavors, particularly apricot, peach, nectarine, mango, citrus, nut, and honey. In other parts of France and the world, it produces wonderful dry wines with a rich texture. Often blended with Sauvignon Blanc.')
Varietal.create(name: 'Vermentino', wine_type_id: 2, bio: '("Ver-men-tee-no") Aka Rolle, Pigato. Light, aromatic, and mineral-driven with refreshing acidity. Aromas of peach, lemon peel, dried herbs, and saline. Most commonly planted in Northern Italy & Southern France, but also found in California & Australia.')
Varietal.create(name: 'Viognier', wine_type_id: 2, bio: '("Vee-on-yay") A highly aromatic, full-bodied white wine with low-med acidity and med-high alcohol. Can be made dry or sweet/late harvest style. Apricot, peaches, white flower, lemon curd, steel, chamomile, lavender, thyme, pine, honey.')
Varietal.create(name: 'White Blend', wine_type_id: 2, bio: 'When done well, white blends show great complexity, epitomizing "the whole is greater than the sum of its parts". Common white blends include Sauvignon Blanc/Semillon (Bordeaux blend); Marsanne/Roussanne/Grenache Blanc/Viognier (Rhone blend); Verdejo/Garnacha Blanca/Malvasia (White Rioja blend). In California, winemakers commonly blend Chardonnay with other varieties for a completely unique wine not found in other parts of the world.')
Varietal.create(name: 'White Dessert', wine_type_id: 2, bio: 'Sweet dessert wine is produced when fermentation is stopped before the yeast turns all the natural grape sugar into alcohol, either by adjusting the fermentation temperature or adding brandy to wine (fortifying). Dessert wines can be sparkling or still. Common white dessert wines include "late harvest" or botrytised ("noble rot") varietal wines made from Riesling, Muscat, Sauvignon Blanc, Chenin Blanc, & Semillon. The terms vin santo, ice wine, white port, and vin doux naturel are also used for white dessert wines.')

# 1
AttributeCategory.create(name: 'Appearance')
# 2
AttributeCategory.create(name: 'Nose')
# 3
AttributeCategory.create(name: 'Palate')
# 4
AttributeCategory.create(name: 'Overall')

# 1
AttributeSubCategory.create(name: 'Clarity', geek_level: 2)
# 2
AttributeSubCategory.create(name: 'Intensity', geek_level: 2)
# 3
AttributeSubCategory.create(name: 'Color', geek_level: 2)
# 4
AttributeSubCategory.create(name: 'Condition', geek_level: 2)
# 5
AttributeSubCategory.create(name: 'Aroma', geek_level: 1)
# 6
AttributeSubCategory.create(name: 'Sweetness', geek_level: 1)
# 7
AttributeSubCategory.create(name: 'Acidity', geek_level: 2)
# 8
AttributeSubCategory.create(name: 'Tannin', geek_level: 2)
# 9
AttributeSubCategory.create(name: 'Body', geek_level: 1)
# 10
AttributeSubCategory.create(name: 'Flavor', geek_level: 1)
# 11
AttributeSubCategory.create(name: 'Finish', geek_level: 2)
# 12
AttributeSubCategory.create(name: 'Quality', geek_level: 1)

TastingAttribute.create(name: 'Fruity', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'apple, berry, citrus, tropical, currant, pear')
TastingAttribute.create(name: 'Floral', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'violet, rose petal, lavendar, white flower')
TastingAttribute.create(name: 'Spicy', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'black/white pepper, cinnamon, jalepeno')
TastingAttribute.create(name: 'Vegetal', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'green pepper, celery, fennel, herbs')
TastingAttribute.create(name: 'Earthy', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'mushroom/truffle, forest floor, tar, dried or damp leaves, dirt, smoke')
TastingAttribute.create(name: 'Animal', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'leather, wool, meat, bacon fat, cat pee')
TastingAttribute.create(name: 'Mineral', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'graphite, chalk, wet rock, petrol, slate, salt/saline')
TastingAttribute.create(name: 'Oaky', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'wood, toast, brioche, vanilla, chocolate, caramel, butterscotch')
TastingAttribute.create(name: 'Faulty', attribute_category_id: 2, attribute_sub_category_id: 5, bio: 'mustiness, barnyard, wet cardboard, band-aid, diaper, sulphur, rubbing alcohol, overly jammy/"baked" fruit, or no smell/muted')

TastingAttribute.create(name: 'Dry', attribute_category_id: 3, attribute_sub_category_id: 6, bio: 'when all of the grape sugar is converted to alcohol during fermentation and there is no perceptible taste of sugar')
TastingAttribute.create(name: 'Medium', attribute_category_id: 3, attribute_sub_category_id: 6, bio: 'a hint of sweetness, but not at the level of a dessert wine')
TastingAttribute.create(name: 'Sweet', attribute_category_id: 3, attribute_sub_category_id: 6, bio: 'noticeable sugar (think cola or liquid honey) typical of sweet or dessert wines')

TastingAttribute.create(name: 'Light', attribute_category_id: 3, attribute_sub_category_id: 9, bio: 'similar mouthfeel to skim milk')
TastingAttribute.create(name: 'Medium', attribute_category_id: 3, attribute_sub_category_id: 9, bio: 'similar mouthfeel to 2% milk')
TastingAttribute.create(name: 'Full', attribute_category_id: 3, attribute_sub_category_id: 9, bio: 'similar mouthfeel to whole milk')

TastingAttribute.create(name: 'Fruity', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'apple, berry, citrus, tropical, currant, pear')
TastingAttribute.create(name: 'Floral', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'violet, rose petal, lavendar, white flower')
TastingAttribute.create(name: 'Spicy', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'black/white pepper, cinnamon, jalepeno')
TastingAttribute.create(name: 'Vegetal', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'green pepper, celery, fennel, herbs')
TastingAttribute.create(name: 'Earthy', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'mushroom/truffle, forest floor, tar, clay, dirt, smoke')
TastingAttribute.create(name: 'Animal', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'leather, meat, bacon fat')
TastingAttribute.create(name: 'Mineral', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'graphite, chalk, wet rock, petrol, slate, salt/saline')
TastingAttribute.create(name: 'Oaky', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'wood, toast, brioche, vanilla, chocolate, caramel, butterscotch')
TastingAttribute.create(name: 'Faulty', attribute_category_id: 3, attribute_sub_category_id: 10, bio: 'vinegar, overly jammy, "baked" fruit, sulphur, or no taste/flat')

TastingAttribute.create(name: 'Poor', attribute_category_id: 4, attribute_sub_category_id: 12, bio: '1 star rating')
TastingAttribute.create(name: 'Acceptable', attribute_category_id: 4, attribute_sub_category_id: 12, bio: '2 star rating')
TastingAttribute.create(name: 'Average', attribute_category_id: 4, attribute_sub_category_id: 12, bio: '3 star rating')
TastingAttribute.create(name: 'Good', attribute_category_id: 4, attribute_sub_category_id: 12, bio: '4 star rating')
TastingAttribute.create(name: 'Outstanding', attribute_category_id: 4, attribute_sub_category_id: 12, bio: '5 star rating')

TastingAttribute.create(name: 'Clear', attribute_category_id: 1, attribute_sub_category_id: 1, bio: 'no or very little visible matter; fined and filtered')
TastingAttribute.create(name: 'Hazy', attribute_category_id: 1, attribute_sub_category_id: 1, bio: 'has small amounts of visible matter; unfined and unfiltered; may also indicate a faulty wine')

TastingAttribute.create(name: 'Pale', attribute_category_id: 1, attribute_sub_category_id: 2, bio: 'light in color, almost or entirely translucent in the glass; usually a light-bodied wine')
TastingAttribute.create(name: 'Medium', attribute_category_id: 1, attribute_sub_category_id: 2, bio: 'slightly opaque')
TastingAttribute.create(name: 'Deep', attribute_category_id: 1, attribute_sub_category_id: 2, bio: 'opaque')

TastingAttribute.create(name: 'Lemon', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 2, bio: '')
TastingAttribute.create(name: 'Gold', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 2, bio: '')
TastingAttribute.create(name: 'Amber', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 2, bio: '')
TastingAttribute.create(name: 'Pink', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 3, bio: '')
TastingAttribute.create(name: 'Salmon', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 3, bio: '')
TastingAttribute.create(name: 'Orange', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 3, bio: '')
TastingAttribute.create(name: 'Purple', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 1, bio: '')
TastingAttribute.create(name: 'Ruby', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 1, bio: '')
TastingAttribute.create(name: 'Garnet', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 1, bio: '')
TastingAttribute.create(name: 'Tawny', attribute_category_id: 1, attribute_sub_category_id: 3, wine_type_id: 1, bio: '')

TastingAttribute.create(name: 'Clean', attribute_category_id: 2, attribute_sub_category_id: 4, bio: 'free of faulty aromas')
TastingAttribute.create(name: 'Unclean', attribute_category_id: 2, attribute_sub_category_id: 4, bio: 'contains faulty aromas')

TastingAttribute.create(name: 'Light', attribute_category_id: 2, attribute_sub_category_id: 2, bio: 'very subtle aromas, not easily identified')
TastingAttribute.create(name: 'Medium', attribute_category_id: 2, attribute_sub_category_id: 2, bio: 'some aromas are easily identified immediately but not overwhelming')
TastingAttribute.create(name: 'Pronounced', attribute_category_id: 2, attribute_sub_category_id: 2, bio: 'very aromatic; aromas are easily identifiable and strong')

TastingAttribute.create(name: 'Low', attribute_category_id: 3, attribute_sub_category_id: 7, bio: 'lacks tartness and feels flat, soft, or lush in the mouth; aka. "flabby" or "fat"')
TastingAttribute.create(name: 'Medium', attribute_category_id: 3, attribute_sub_category_id: 7, bio: 'some tartness and bite, but not astringent')
TastingAttribute.create(name: 'High', attribute_category_id: 3, attribute_sub_category_id: 7, bio: 'noticeable tartness and can taste refreshing and lively but too high can be harsh and unpleasant')

TastingAttribute.create(name: 'Low', attribute_category_id: 3, attribute_sub_category_id: 8, bio: 'feels soft or silky in the mouth')
TastingAttribute.create(name: 'Medium', attribute_category_id: 3, attribute_sub_category_id: 8, bio: 'feels somewhat soft & silky in the mouth, but has a slight bite or "grip" that is felt on the side of the cheeks')
TastingAttribute.create(name: 'High', attribute_category_id: 3, attribute_sub_category_id: 8, bio: 'aggressive bite or "grip" that is felt on the side of the cheeks')

TastingAttribute.create(name: 'Short', attribute_category_id: 3, attribute_sub_category_id: 11, bio: 'flavors disappear immediately after swallowing')
TastingAttribute.create(name: 'Medium', attribute_category_id: 3, attribute_sub_category_id: 11, bio: 'flavors linger for several seconds after swallowing, but not longer')
TastingAttribute.create(name: 'Long', attribute_category_id: 3, attribute_sub_category_id: 11, bio: 'flavors linger for more than several seconds, perhaps even minutes, after swallowing')
