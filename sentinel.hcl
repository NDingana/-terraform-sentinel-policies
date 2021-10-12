
/*

This is the main file where you need to define all the policies you intend to use for your project.
Any policy not defined here, will not be used to check your code and this will not be used at all. 


Once a policy is added to an organization it is enforced on all runs.
The policy check will occur immediately after a plan is successfully executed in the run.
If the plan fails, the policy check will not be performed. 


All hard mandatory and soft mandatory policies must pass 
in order for the run to continue to the "Confirm & Apply" state.


If a soft mandatory policy fails, users with permission to override policies will be presented 
with an "Override & Continue" button in the run. They have the ability to override the failed check 
and continue the execution of the run. This will not have any impact on future runs. 
*/


# Every policy refferenced here to be used, must define a Source and enforcement_level


# "check-terraform-version" is the name of one of the policies we created in folder terraform-sentinel-policies
policy "check-terraform-version" {
    source            = "./check-terraform-version.sentinel"        
    enforcement_level = "hard-mandatory"
}

# "restrict-s3-buckets" is the name of one of the policies we created in folder terraform-sentinel-policies
policy "restrict-s3-buckets" {
    source            = "./restrict-s3-buckets.sentinel"           
    enforcement_level = "soft-mandatory"
}