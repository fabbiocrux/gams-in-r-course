library(mgcv)
csale <- readRDS("csale.rds")
new_credit_data <- readRDS("new_credit_data.rds")
log_mod2 <- gam(purchase ~ s(n_acts) + s(bal_crdt_ratio) +
                  s(avg_prem_balance) + s(retail_crdt_ratio) +
                  s(avg_fin_balance)  + s(mortgage_age) + s(cred_limit),
                data = csale,
                family = binomial,
                method = "REML")

# Predict from the model
prediction_1 <- predict(log_mod2,
                        newdata = new_credit_data[1, ],
                        type = "terms")

# Inspect
prediction_1
