# GoDot-RAMPAGEOnlineServices
Development SDK for RAMPAGE Online Services (ROS), this SDk is developed for GoDot Engine version ``4.x``.

> [!CAUTION]
> THIS PROJECT IS INCOMPLETE AND MAY BE IN A NON-FUNCTIONAL STATE.

GoDot ROS has dependencies that can be found at:
https://github.com/deep-entertainment/godottpd

# Installation Guide
> [!CAUTION]
> The interactive portal nebula.rampage.place is not yet completed. Please use the legacy Nebula Application Manager at https://id.rampage.place/applications. Interaction with Nebula features like ROSBase (Nebula Cloud Databases) is not supported. The only way to utilize it is by using the Rich Nebula API. Find the documentation for the Nebula API at docs.rampage.place.

1. Clone the repository.
2. Install the dependencies mentioned above.
3. Drag the 'src' folder into your project.
4. Rename the 'src' folder to 'RAMPAGEOnlineServices'.
5. In GoDot Project Settings, set up the path-to-project/RAMPAGEOnlineServices/autoload.gd to autoload.
6. Navigate to path-to-project/RAMPAGEOnlineServices/RAMPAGEOnlineServices.gd and configure variables there.
7. Visit id.rampage.place/register to create a RAMPAGE ID.
8. Go to id.rampage.place/applications and create a Nebula RAMPAGE Application. Copy its application ID. It's recommended to use a dedicated application per project.
