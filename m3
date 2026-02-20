Comments






This captures how much a claim’s length of stay deviates from the average LOS for similar DRG cases. It helps identify unusually short or long stays relative to peer claims.
This flag highlights claims where severity is high but the stay is unusually short, which may indicate a mismatch between assigned severity and actual utilization.


This flag identifies claims where severity is high but the number of complication codes is low. It helps capture cases where severity and coding pattern may not align.
"In APR-DRG, severity increases based on complications. Coding density helps us detect whether complication coding is proportionate to overall case complexity. For instnace: If a claim has 3 CCs out of 12 diagnoses, that’s 25% density. If another has 3 CCs out of 4 diagnoses, that’s 75% density.The second claim has a much higher complication concentration, even though the CC count is the same. Two claims may have the same CC count,
but very different overall coding volume."
Two claims may have the same total payment, but very different lengths of stay. Dividing payment by LOS helps identify differences in payment intensity. $50,000 for a 20-day ICU stay → may be normal but $50,000 for a 1-day stay → unusual
We calculate each provider’s historical find rate within client and apply smoothing so small sample providers don’t appear artificially high or low risk. This ensures stability while capturing provider behavior. Provider Historical Overpayment Rate is a provider-level feature calculated within each client and adjusted toward the client’s baseline hit rate to ensure stability.
Some providers systematically code higher severity.
Since we are combining multiple clients with potentially different audit behaviors and baseline find rates, including client_id ensures the model adjusts for client-specific variation while still learning common clinical patterns.
