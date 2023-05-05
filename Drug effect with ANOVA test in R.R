# Drug effect with ANOVA test in R

# Data provided:
# Medicine A = 4 5 4 3 2 4 3 4 4
# Medicine B = 6 8 4 5 4 6 5 8 6
# Medicine C = 6 7 6 6 7 5 6 5 5

# List with the answers of the volunteers
volunteer_note <- c(4,5,4,3,2,4,3,4,4,6,8,4,5,4,6,5,8,6,6,7,6,6,7 ,5,6,5,5)
volunteer_note

# List with the total tests of the 3 drugs
medicine <- c(rep("A",9), rep("B",9), rep("c",9))
medicine

# Now we create a dataframe
df <- data.frame(volunteer_note, medicine)
View(df)

# We apply ANOVA
?aov
test_anova <- aov(volunteer_note ~ medicine, data = df)
test_anova

# test summary
summary(test_anova)

# Conclusion:
# P-value < 0.05, that is, 0.000256 < 0.05, so we reject H0.
# The averages of the groups are not the same and consequently the drugs do not have the same effect.