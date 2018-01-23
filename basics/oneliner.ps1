# small collection of powershell one liners

# create a new drive
New-PSDrive -Name docs -PSProvider FileSystem -Root (Resolve-Path ~/*Documents)