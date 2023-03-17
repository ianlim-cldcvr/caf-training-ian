# PLAN
rover -lz /tf/caf/landingzones/caf_solution \
    -var-folder /tf/caf/caftraining101/configuration/level2/ampls \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate ampls.tfstate \
    -parallelism 30 \
    -level level2 \
    -env $CAF_ENVIRONMENT \
    -a plan

# APPLY
rover -lz /tf/caf/landingzones/caf_solution \
    -var-folder /tf/caf/caftraining101/configuration/level2/ampls \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate ampls.tfstate \
    -parallelism 30 \
    -level level2 \
    -env $CAF_ENVIRONMENT \
    -a apply

# DESTROY
rover -lz /tf/caf/landingzones/caf_solution \
    -var-folder /tf/caf/caftraining101/configuration/level2/ampls \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate ampls.tfstate \
    -parallelism 30 \
    -level level2 \
    -env $CAF_ENVIRONMENT \
    -a destroy