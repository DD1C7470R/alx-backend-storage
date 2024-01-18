-- an SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
-- SELECT band_name, SUM(select case (2022 - formed) IF split NOT NULL ELSE (split - formed)) AS "lifespan" FROM metal_bands WHERE style like '%Glam rock%' GROUP BY band_name ORDER BY lifespan DESC;
-- SELECT * FROM metal_bands WHERE style like "%Glam rock%";

SELECT
    band_name,
    (
		CASE WHEN split IS NULL THEN YEAR('2020-01-01') - formed
		ELSE split - formed END
    ) AS lifespan
FROM
    metal_bands
WHERE
    style LIKE '%Glam rock%'
ORDER BY
    lifespan DESC;

