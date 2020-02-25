# MITT-AzureAutomationAccounts

Demos by [atwork-it.com](https://www.atwork-it.com/).
Contributors: [Martina Grom](https://twitter.com/magrom), [Toni Pohl](https://twitter.com/atwork)

To manage Microsoft 365 at scale IT-Admins use tools as PowerShell. With PowerShell you can automate and manage many Microsoft 365 tasks, from user, group, and license management to any administrative tasks. With Azure Automation Accounts you get one step further: You can manage and run typical Microsoft 365 management and governance tasks automated with PowerShell scripts and Azure Automation Accounts in a secure and automated way. Configure your runbooks in Azure Automation Accounts and secure, execute, schedule, and monitor your scripts in a controlled environment. All prerequisites are installed and ready on your terms, independently from any local client or server environments.

You must be a **Global Administrator in the Microsoft 365 tenant** to run all scripts. These are the latest scripts of February 2020. Use and adapt the scripts as required.

## Cross-Reference

- To see the open-source Groups Governance Toolkit by [atwork-it.com](https://www.atwork-it.com/), see https://github.com/martinagrom/Ignite2018GroupsGovernanceToolkit) 
- If you are interested in a **ready-to-use Governance Overview solution** visualized with Power-BI, check out [governancetoolkit365.com](https://governancetoolkit365.com/). You can register for a free trial.

## For developers

Alternatively, developers can use the Microsoft Graph for accomplishing similar tasks. Check the group properties with Graph Explorer [aka.ms/ge](https://aka.ms/ge), similar like here:

- https://graph.microsoft.com/v1.0/groups?$filter=startswith(displayname,'my')
- See the channels, etc. https://graph.microsoft.com/v1.0/teams/bdebef61-fc39-45fc-9e16-ca927ecb7601/channels/
- Graph API has more actions, e.g. see the channels, e.g. see the tabs... https://graph.microsoft.com/v1.0/teams/bdebef61-fc39-45fc-9e16-ca927ecb7601/channels/19:fac22556a2764f46b161940b3fc01600@thread.skype/tabs

Have a good Office 365 management with these PowerShell scripts!
