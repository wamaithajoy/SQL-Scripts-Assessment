CREATE TABLE vaccines_child AS
SELECT
child_registrations.unique_id,
child_vaccinations.bcg,
child_vaccinations.hepb,
child_vaccinations.opv_1,
child_vaccinations.opv_2,
child_vaccinations.opv_3,
child_vaccinations.pcv_1,
child_vaccinations.pcv_2,
child_vaccinations.pcv_3,
child_vaccinations.penta_1,
child_vaccinations.penta_2,
child_vaccinations.penta_3,
child_vaccinations.rota_1,
child_vaccinations.rota_2,
child_vaccinations.yellow_fever


FROM
ona_analytics.analyst_intern.child_registrations

INNER JOIN ona_analytics.analyst_intern.child_vaccinations USING(unique_id)
ORDER BY
unique_id,
bcg,
hepb,
opv_1,
opv_2,
opv_3,
pcv_1,
pcv_2,
pcv_3,
penta_1,
penta_2,
penta_3,
rota_1,
rota_2,
yellow_fever

SELECT * FROM vaccines_child;

















