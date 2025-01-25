# Variables
TARGET = README.md
SCRIPT = guessinggame.sh

# Règle par défaut
all: $(TARGET)

# Générer le fichier README.md
$(TARGET): $(SCRIPT)
    echo "# Guessing Game Project" > $(TARGET)
    echo "" >> $(TARGET)
    echo "Date de génération : $$(date)" >> $(TARGET)
    echo "" >> $(TARGET)
    echo "Nombre de lignes dans $(SCRIPT) : $$(wc -l < $(SCRIPT))" >> $(TARGET)

# Nettoyage des fichiers générés
clean:
    rm -f $(TARGET)
