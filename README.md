# Question: Solve the functional requirement.
Solved

# Question: Review this file from Code Review perspective, list the issues and what changes should be made, perform the changes to the file.
**1) Use a StatefulWidget for the List**

Instead of a StatelessWidget, use a StatefulWidget for the list so that the state of the list items can be managed and persisted.

**2) Store Count in a List**

Use a list to store the count for each list item. This way, the count value is maintained even when the list is scrolled.

**3) Pass the Count and the Increment Function to the ListItemWidget**

Pass the count value and the increment function to each ListItemWidget so that the state is managed in one place.

After solving all the above three issues the code is running exactly fine :)
