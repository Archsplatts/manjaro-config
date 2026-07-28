#!/bin/bash

set -euo pipefail

VERT='\033[0;32m'
JAUNE='\033[1;33m'
NC='\033[0m'

echo -e "${VERT}                                   ▄▄                    ${NC}"
echo -e "${VERT}                  █▄                ██       █▄  █▄      ${NC}"
echo -e "${VERT}       ▄          ██                ██      ▄██▄▄██▄     ${NC}"
echo -e "${VERT} ▄▀▀█▄ ████▄▄███▀ ████▄ ▄██▀█ ████▄ ██ ▄▀▀█▄ ██  ██ ▄██▀█${NC}"
echo -e "${VERT} ▄█▀██ ██   ██    ██ ██ ▀███▄ ██ ██ ██ ▄█▀██ ██  ██ ▀███▄${NC}"
echo -e "${VERT}▄▀█▄██▄█▀  ▄▀███▄▄██ ███▄▄██▀▄████▀▄██▄▀█▄██▄██ ▄███▄▄██▀${NC}"
echo -e "${VERT}                              ██                         ${NC}"
echo -e "${VERT}                              ▀                          ${NC}"

echo -e "${JAUNE}Bienvenue dans le script de configuration Archsplatts pour Manjaro!${NC}\n"

if [ -t 0 ]; then
    read -p "Appuyez sur Entrée pour continuer... "
fi   

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[1/12] Mise à jour du système${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

sudo pacman-mirrors -c France,Germany
sudo pacman -Syyu 

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[2/12] Installation des programmes${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

sudo pacman -S 

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[3/12] Installation des pilotes GPU${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

 PAQUETS_AMD=(
	"lib32-mesa"
	"lib32-vulkan-icd-loader"
	"lib32-vulkan-radeon"
	"mesa" 
	"vulkan-icd-loader"
	"vulkan-radeon"
)
 
echo -e "${JAUNE}Installation des pilotes de la carte graphique${NC}\n"

if pacman -S --needed --noconfirm "${PAQUETS_AMD[@]}"; then
    echo -e "${VERT}✓ Pilotes de la carte graphique installés avec succès.${NC}"
else
    echo -e "${ROUGE}✗ Échec de l'installation.${NC}"
    exit 1
fi

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[4/12] Installation de Sway${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

 PAQUETS_DE=(
	"autotiling" 
	"flameshot" 
	"foot"
	"gammastep" 
	"grim"
	"mako"
	"pavucontrol"
	"polkit" 
	"polkit-gnome"  
	"qt6-wayland"
	"rofi" 
	"sddm"
	"slurp"
	"sway"
	"swaybg"
	"swayidle"
	"swaylock"
	"thunar"
	"thunar-archive-plugin"
	"thunar-media-tags-plugin"
	"thunar-volman"
	"waybar"
	"wl-clipboard"
	"wl-clip-persist"
	"wmenu"
	"xdg-desktop-portal-gtk" 
	"xdg-desktop-portal-wlr" 
	"xorg-xwayland"
)

echo -e "${JAUNE}Installation de l'environnement de bureau${NC}\n"

if pacman -S --needed --noconfirm "${PAQUETS_DE[@]}"; then
    echo -e "${VERT}✓ Environnement de bureau installé avec succès.${NC}"
else
    echo -e "${ROUGE}✗ Échec de l'installation.${NC}"
    exit 1
fi

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[5/12] Installation des paquets M.A.O${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

PAQUETS_MAO=(
 	"guitarix" 
	"helvum" 
	"lib32-pipewire"
	"pipewire"
	"pipewire-alsa"
	"pipewire-pulse"
	"pipewire-jack"
	"reaper"
	"wireplumber"
)

echo -e "${JAUNE}Installation des paquets M.A.O${NC}\n"
  
if pacman -S --needed --noconfirm "${PAQUETS_MAO[@]}"; then
    echo -e "${VERT}✓ Paquets M.A.O installés avec succès.${NC}"
else
    echo -e "${ROUGE}✗ Échec de l'installation.${NC}"
    exit 1
fi

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[6/12] Installation des paquets multimedia${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

PAQUETS_MULTIMEDIA=(
	"discord" 
	"ffmpeg"
	"ffmpegthumbnailer"
	"firefox" 
	"flac"
	"gamemode" 
	"gst-libav"
	"gst-plugins-bad"
	"gst-plugins-base" 
	"gst-plugins-good" 
	"gst-plugins-ugly"
	"lib32-flac"
	"lib32-gamemode"
	"lib32-mangohud" 
	"mangohud"
	"mpv"
	"qbittorrent"
	"rhythmbox"
	"steam" 
	"thunderbird" 
)

echo -e "${JAUNE}Installation des paquets multimedia${NC}\n"
  
if pacman -S --needed --noconfirm "${PAQUETS_MULTIMEDIA[@]}"; then
    echo -e "${VERT}✓ Paquets multimedia installés avec succès.${NC}"
else
    echo -e "${ROUGE}✗ Échec de l'installation.${NC}"
    exit 1
fi

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[7/12] Installation des utilitaires${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

PAQUETS_UTILS=(
	"7zip" 
	"arch-wiki-docs"
	"base-devel"
	"bat" 
	"btop" 
	"cava"
	"calcurse"
	"chafa" 
	"cliphist"
	"cpupower" 
	"dust" 
	"fastfetch" 
	"galculator"
	"geany" 
	"git"
	"gvfs"
	"gvfs-mtp" 
	"imagemagick" 
	"impression" 
	"lact" 
	"libappindicator" 
	"libmtp"
	"micro" 
	"network-manager-applet" 
	"nwg-displays"
	"nwg-look"
	"pacman-contrib" 
	"realtime-privileges" 
	"ristretto"
 	"starship"
 	"termdown"
	"timeshift" 
	"trash-cli" 
	"tumbler"
	"ufw" 
	"unzip"
	"wev"
	"wget" 
	"xarchiver"
	"yazi" 
	"zathura"
	"zathura-pdf-mupdf"
	"zip"
	"zsh"
	"zsh-autosuggestions" 
	"zsh-completions" 
	"zsh-history-substring-search" 
	"zsh-syntax-highlighting"
)

echo -e "${JAUNE}Installation des utilitaires${NC}\n"

if pacman -S --needed --noconfirm "${PAQUETS_UTILS[@]}"; then
    echo -e "${VERT}✓ Utilitaires installés avec succès.${NC}"
else
    echo -e "${ROUGE}✗ Échec de l'installation.${NC}"
    exit 1
fi

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[8/12] Installation des thèmes et des polices${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

PAQUETS_THEMES=(
	"breeze-cursors" 
	"noto-fonts"
	"noto-fonts-cjk"
	"noto-fonts-emoji"
	"noto-fonts-extra"
	"papirus-icon-theme" 
	"ttf-hack-nerd"
	"ttf-jetbrains-mono-nerd" 
	"ttf-nerd-fonts-symbols"
	"ttf-nerd-fonts-symbols-common"
	"ttf-ubuntu-font-family" 
	"ttf-ubuntu-mono-nerd"
)

echo -e "${JAUNE}Installation des thèmes et des polices${NC}\n"

if pacman -S --needed --noconfirm "${PAQUETS_THEMES[@]}"; then
    echo -e "${VERT}✓ Thèmes et polices installés avec succès.${NC}"
else
    echo -e "${ROUGE}✗ Échec de l'installation.${NC}"
    exit 1
fi

USER="${SUDO_USER:-$(whoami)}"

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[9/12] Installation de yay (AUR Helper)${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

echo -e "\n${JAUNE}Installation de Yay (AUR Helper)${NC}\n"

# Vérifier que USER n'est pas vide et n'est pas root
if [[ -z "$USER" || "$USER" == "root" ]]; then
    echo -e "${ROUGE}✗ Erreur : Yay ne peut pas être installé en tant que root.${NC}"
    exit 1
fi

if ! sudo -u "$USER" command -v yay &> /dev/null; then
    echo "Installation des prérequis (git, base-devel)..."
    pacman -S --needed --noconfirm git base-devel
    
    echo "Clonage et compilation de yay pour l'utilisateur $USER..."
    
    # Créer un répertoire temporaire sécurisé
    TEMP_DIR=$(sudo -u "$USER" mktemp -d) || exit 1
    trap "sudo rm -rf '$TEMP_DIR'" EXIT
    
    if ! sudo -u "$USER" git clone https://aur.archlinux.org/yay.git "$TEMP_DIR/yay"; then
        echo -e "${ROUGE}✗ Échec du clonage du dépôt.${NC}"
        exit 1
    fi
    
    if sudo -u "$USER" bash -c "cd '$TEMP_DIR/yay' && makepkg -si --noconfirm"; then
        echo -e "${VERT}✓ Yay installé avec succès.${NC}"
    else
        echo -e "${ROUGE}✗ Échec de l'installation de Yay.${NC}"
        echo "Note: Assurez-vous que l'utilisateur $USER a les droits sudo pour pacman/makepkg."
        exit 1
    fi
else
    echo -e "${VERT}✓ Yay est déjà installé pour $USER.${NC}"
fi

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[10/12] Activation des services système${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

# UFW (Pare-feu) - Service Système
echo "Activation du pare-feu UFW..."

ufw default deny incoming
ufw default allow outgoing

systemctl enable --now ufw.service
echo -e "${VERT}✓ UFW activé.${NC}"

# LACT (Contrôleur AMD) - Service Système
echo "Activation du service LACT..."
systemctl enable --now lactd.service
echo -e "${VERT}✓ LACT activé.${NC}"

echo -e "${VERT}✓ Tous les services système ont été activés avec succès.${NC}\n"

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[11/12] Configuration du shell${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

echo -e "${JAUNE}Configuration du shell Zsh${NC}\n"

if getent passwd "$USER" | grep -q "/bin/zsh$"; then
    echo -e "${VERT}✓ Le shell est déjà Zsh pour $USER. Aucune action requise.${NC}"
else
    echo "Changement du shell vers Zsh..."
    chsh -s /bin/zsh "$USER"
    echo -e "${VERT}✓ Shell changé avec succès.${NC}"
fi

echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${JAUNE}[12/12] Ajout de l'utilisateur aux groupes${NC}"
echo -e "${JAUNE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"

echo -e "\n${JAUNE}Configuration des groupes utilisateur${NC}"

usermod -aG audio,input,gamemode,realtime,render,video "$USER"

echo -e "${VERT}✓ Utilisateur ajouté aux groupes.${NC}\n"

echo -e "${VERT}╔════════════════════════════════════════╗${NC}"
echo -e "${VERT}║  Installation terminée avec succès !   ║${NC}"
echo -e "${VERT}╚════════════════════════════════════════╝${NC}\n"

echo -e "${JAUNE}⚠ Veuillez redémarrer votre système pour appliquer tous les changements.${NC}\n"
