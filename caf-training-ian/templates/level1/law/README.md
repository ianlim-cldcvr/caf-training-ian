# PLAN
rover -lz /tf/caf/landingzones/caf_solution \
    -var-folder /tf/caf/caftraining101/configuration/level1/law \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate law.tfstate \
    -parallelism 30 \
    -level level1 \
    -env $CAF_ENVIRONMENT \
    -a plan

# APPLY
rover -lz /tf/caf/landingzones/caf_solution \                  
    -var-folder /tf/caf/caftraining101/configuration/level1/law \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate law.tfstate \
    -parallelism 30 \
    -level level1 \
    -env $CAF_ENVIRONMENT \
    -a apply

# DESTROY
rover -lz /tf/caf/landingzones/caf_solution \
    -var-folder /tf/caf/caftraining101/configuration/level1/law \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate law.tfstate \
    -parallelism 30 \
    -level level1 \
    -env $CAF_ENVIRONMENT \
    -a destroy