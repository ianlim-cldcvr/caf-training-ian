# PLAN
rover -lz /tf/caf/landingzones/caf_launchpad \
    -launchpad \
    -var-folder /tf/caf/caftraining101/configuration/level0/launchpad \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate launchpad.tfstate \
    -parallelism 30 \
    -level level0 \
    -env $CAF_ENVIRONMENT \
    -a plan

# APPLY
rover -lz /tf/caf/landingzones/caf_launchpad \
    -launchpad \
    -var-folder /tf/caf/caftraining101/configuration/level0/launchpad \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate launchpad.tfstate \
    -parallelism 30 \
    -level level0 \
    -env $CAF_ENVIRONMENT \
    -a apply

# DESTROY
rover -lz /tf/caf/landingzones/caf_launchpad \
    -launchpad \
    -var-folder /tf/caf/caftraining101/configuration/level0/launchpad \
    -tfstate_subscription_id $ARM_SUBSCRIPTION_ID \
    -target_subscription $ARM_SUBSCRIPTION_ID \
    -tfstate launchpad.tfstate \
    -parallelism 30 \
    -level level0 \
    -env $CAF_ENVIRONMENT \
    -a destroy