$Location="northeurope"
$ResourceGroupName="web-grp"
New-AzResourceGroup -Name $ResourceGroupName -Location $Location 

$AppServicePlanName="learningplan"

New-AzAppservicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName `
-Location $Location -Tier Free

$AppName ="learningapp1127"

New-AzWebApp -ResourceGroupName $ResourceGroupName -Location $Location -Name $AppName `
-AppServicePlan $AppServicePlanName