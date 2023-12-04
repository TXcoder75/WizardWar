# count of different species
species_count <- Second_Wizard_War_DeadorAliveUpdated %>% 
  count(SPECIES)

#count of humans
humans <- Second_Wizard_War_DeadorAliveUpdated %>% 
  filter(SPECIES == "Human") %>%

# Stats for humans alive after the war
humans_alive <- Second_Wizard_War_DeadorAliveUpdated %>%
  filter(SPECIES == "Human") %>% group_by(`ALIVE_OR NOT`) %>% 
  count()
  
View(humans_alive)

#Who survived
alive <- Second_Wizard_War_DeadorAliveUpdated %>%
  group_by(`ALIVE_OR NOT`) %>%
  arrange(`SPECIES`) %>%
  filter(`ALIVE_OR NOT` == "Yes") 

#Who died
died <- Second_Wizard_War_DeadorAliveUpdated %>%
  group_by(`ALIVE_OR NOT`) %>%
  arrange(`SPECIES`) %>%
  filter(`ALIVE_OR NOT` == "No")

ggplot(Second_Wizard_War_DeadorAliveUpdated, aes(`ALIVE_OR NOT`, fill= `SPECIES`)) +
  geom_bar() 
