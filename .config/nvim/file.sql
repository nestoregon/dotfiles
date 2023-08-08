-- DWH_Result
with CCM_menu as (
    SELECT t.country,
           t.index,
           t.week,
           t.charge_amount,
           r.title
    FROM fact_tables.recipe_in_menu t
             LEFT JOIN dimensions.recipe_dimension r ON r.sk_recipe = t.fk_recipe
    WHERE t.country IN ('NL', 'BE', 'LU')
      AND t.week between %(start_week)s and %(end_week)s
      AND t.product like '%%modularity%%'
    ORDER BY t.product, t.index ASC
)
SELECT rm.yearweek,
       rm.country,
       replace(replace(rm.regioncode,'-FL',''),'LUX','LU') as regioncode,
       rm.slotnumber,
       rm.product,
       rc.cost_2p,
       CCM_menu.charge_amount as ccm_costs

FROM materialized_views.int_scm_analytics_remps_menu AS rm

LEFT JOIN materialized_views.int_scm_analytics_remps_recipe AS rr
    ON rm.slot_recipe = rr.id

LEFT JOIN materialized_views.remps_recipe_recipecost AS rc
    ON rc.recipe_cost__recipe= rr.id

LEFT JOIN CCM_menu on CCM_menu.index=rm.slotnumber
                          and CCM_menu.country=replace(replace(rm.regioncode,'-FL',''),'LUX','LU')
                          and CCM_menu.week = rm.yearweek

where rm.country = 'BNLF'
and rm.product like '%%modularity%%'
and rm.regioncode not in ('FR','BE-WA')
and rm.yearweek between %(start_week)s and %(end_week)s

ORDER BY rm.yearweek, rm.country, rm.regioncode,
rm.slotnumber, rm.product, rc.cost_2p, CCM_menu.charge_amount
Footer
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
