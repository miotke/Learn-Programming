#!/usr/bin/python
# Must run as Python 3 because of the formatted strings
import os

# Invokes the jamf recon command
jamf_recon = "sudo jamf recon"
# Asks for the department and asset number to be passed into the command line arguments
get_department = input("Department: ")
get_asset_number = input("Asset Tag: ")

# Takes in the department and asset tag number and inserts them into the jamf_recon command
def main(): 
    # os.system(f"{jamf_recon} -assetTag {get_asset_number} -department {get_department}")
    print(f"\u2713 Department set: {get_department}")
    print(f"\u2713 Asset tag set: {get_asset_number}")

if __name__ == '__main__':
    main()
