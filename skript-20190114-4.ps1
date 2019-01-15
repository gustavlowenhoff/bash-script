Get-Service | Format-List

# This command formats information about services on the computer as a list. 
# By default, the services are formatted as a table.
# The Get-Service cmdlet gets objects representing the services on the computer. 
# The pipeline operator (|) passes the results through the pipeline to Format-List. 
# Then, the Format-List command formats the service information in a list 
# and sends it to the default output cmdlet for display.

Get-Service | Format-wide

# The Format-Wide cmdlet formats objects as a wide table that displays only 
# one property of each object.
