# Section_02 GRC Homework

## **Part 1**
### 1. Identify at least three potential attacks that can be carried out.

1) **Lost or stolen device** - A personal device may be lost or stolen giving potential bad actors access to whatever information that device has access too.

2) **Malware** - Another potential risk. Mobile devices are increasingly becoming targets of malware often embedded in apps that can be purchased through an app store. Android is at a much higher risk because of the open source nature of its OS as well as the large proportion of market share that Android has.

3) **Data theft** - This can occur both maliciously and otherwise. An internal threat can use their personal device to download company data and simply smuggle it out of the network. Alternatively, employees may decide to download copies of company data locally to their device without company knowledge. They may do this to speed up their productivity but may unintentionally expose that data if they lose their device or it is infected with malware.


### 2. What is the preferred employee behavior?

1) All devices should have PIN/Password or biometric protrection to access company apps and data at a minimum. Minimum 6 digit pin or password conforming to approved password policy. Employees must report lost or stolen device within 24 hours to SOC team.

2) Apps should only be downloaded from approved app stores and should be on IT's approved app list. All other apps should be approved by IT prior to download.

3) No company data is allowed to be stored locally on BYOD devices. Information should only be access through approved company apps


### 3. What methods of measurement are used to determine how many employees are not complying?

1) Use a company approved mobile device management app like 'Intune' or 'MaaS360' to require password protection on company apps and data on the device with required PIN/Password complexity. A 'find my device' app or setting must be enabled.

2) Through the use of an aprroved MDM, virus and malware detection can be run periodically to determine if a phone has been infected. Users with infected devices and be surveyed to determine if they have downloaded non-approved apps from unapproved app stores.

3) Survery employees as to whether they are downloading files directly to their devices rather than using approved cloud services. Periodic checks to see if more sensitive data has been accessed and downloaded and correlate with user information.


### 4. What is the organizations goals regarding this behavior?

1) IT becoming aware of a lost device within 24 hours of loss. Device recovery or brick within 24 hours of discovery of loss.  100% compliance on PIN/Password for business apps access at a minimum.

2) Malware found on less than 5% BYOD devices.

3) Less than 5% of BYOD devices contain local copies of company data. 


## **Part 2**

* What Departments will need to be involved?

    * **CEO** - Will need to give overall approval to the plan and approve proposed budgets in order to put the security plan into effect.

    * **CIO/IT** - This department will need to be involved to ensure that required business apps, MDM, and VPNs are properly installed on any BYOD device.

    * **HR** - To assist in properly drafting the new policies and explaining the procedures and possible consequences adequately to employees. Can also assist in connecting employees with proper IT contacts to complete installation of required software.

    * **CISO/InfoSec** - This department will most likely be responsible for monitoring the MDM on devices as well as detecting any breaches that may occur from malware or data that has been copied off the network. They will also be responsible for approving app requests from employees.

    * **CFO/Accounting** - To provide the funding to implement plan. 

## **Part 3**

* Training

    1) MDM training will be provided in person upon hire for any employees electing to use BYOD. Topics will cover the purpose of the MDM, how to access company resources using the MDM OS, how to report a lost/stolen device and importance of immediately reporting. Additional training offered upon request with annual retraining offered. Users will be informed of updates and changes through Public Bulletin emails and retraining will occur if changes are deemed signifcant to user experience. Surveys will be conducted with owners of lost devices to determine if device was determined lost within the 24 hour timeframe and metrics from MDM used to determine if the device was successfully recovered or bricked within the required timeframe. Policy on PIN/Password complexity explained and explanation of 'best practices' for password creating and retention.
    
    2) Initial training will be in person and designed to discuss the approved app list, approved app stores, and procedure for requesting an app be approved by the security team.  Annual training will occur to reinforce the procedure. Effectiveness measured based on how many devices have malware detected
    
    3) Initial training upon hiring on how to properly access and use company data on a BYOD. Additional training to be performed annually. Security team can conduct periodic audits of company data for access and unauthorized copies and correlate with user data to determine possible partie responsible.

    
## **BONUS**

* **Additional Measures**

    1) An additional control for the issue of malware would be to have a scan performed on all BYOD devices once a month and surveys will be given to all employees with malware detected on their devices to determine what was downloaded and where. Employees will be retrained on proper procedures. This will be a techical control and have a corrective goal. This allows the security team to identify malware and sources to add to the blacklist. However this will require a lot of resources from the SOC team to rundown issues and there may be pushback from employees who do not want the SOC team running scans on their devices.

    2) An additional measure to help prevent employees from taking data off the network and storing on personal BYOD would be to require an employment contract ammendment be signed that specifically prohibits this behavior. This would be an administrative control requiring HR to be involved. The contract ammendment could spell out what disciplinary actions can be taken by the organization if unauthorized data is detected on a BYOD device. SOC can be used to do periodic audits of critical data to determine who access and if illicit copies were made. The point of this measure would be a deterrent measure by spelling out possible consequences. This would make it clear to employees that this behavior is not acceptable and hopefully prevent employees from taking data for non-malicious reasons to speed up their productivity and also offer stiff penalties to potential bad actors. This can be a difficult thing to detect, and perhaps evidence is not sufficient to make a determination about guilt. Also, the party might have acted with innocent intentions but ultimately could lose their jobs.

