#!/bin/bash

# Nederlandse iPerf3 Server Finder & Tester
# Optimized for Dutch users and networks
# curl -s https://raw.githubusercontent.com/Lenvanderhof/public-iperf3-servers-NL/main/findtest-nl.sh | bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

install_packages() {
    echo "Installing required packages..."
    if [ -f /etc/debian_version ]; then
        export DEBIAN_FRONTEND=noninteractive
        sudo apt-get update -qq
        sudo apt-get install -y iperf3 jq curl bc sudo || {
            echo -e "${RED}Failed to install packages on Debian/Ubuntu${NC}"
            exit 1
        }
    elif [ -f /etc/redhat-release ]; then
        sudo yum update -y -q
        sudo yum install -y epel-release -q
        sudo yum install -y iperf3 jq curl bc sudo -q || {
            echo -e "${RED}Failed to install packages on CentOS/Rocky Linux${NC}"
            exit 1
        }
    else
        echo -e "${RED}Unsupported Linux distribution. Please install iPerf3, jq, bc and sudo manually.${NC}"
        exit 1
    fi
    
    for cmd in iperf3 jq curl bc; do
        if ! command -v $cmd &>/dev/null; then
            echo -e "${RED}Failed to install $cmd. Please install it manually.${NC}"
            exit 1
        fi
    done
}

clear
echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║              🇳🇱 Nederlandse iPerf3 Server Finder             ║${NC}"
echo -e "${BLUE}║            Optimized for Dutch Networks & Users              ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Check and install dependencies
for cmd in iperf3 jq curl bc; do
    if ! command -v $cmd &>/dev/null; then
        echo -e "${YELLOW}$cmd not found. Installing required packages...${NC}"
        install_packages
        break
    fi
done

# Get user's IP and location
MY_IP=$(curl -s https://api.ipify.org)
if [ -z "$MY_IP" ]; then
    echo -e "${RED}Error: Unable to retrieve public IP address.${NC}"
    exit 1
fi

echo -e "${YELLOW}🌐 Jouw publieke IP: $MY_IP${NC}"

LOCATION_INFO=$(curl -s "https://ipinfo.io/$MY_IP/json")
MY_CITY=$(echo "$LOCATION_INFO" | jq -r '.city')
MY_COUNTRY=$(echo "$LOCATION_INFO" | jq -r '.country')
MY_REGION=$(echo "$LOCATION_INFO" | jq -r '.region')
MY_ISP=$(echo "$LOCATION_INFO" | jq -r '.org')

echo -e "${YELLOW}📍 Locatie: $MY_CITY, $MY_REGION, $MY_COUNTRY${NC}"
echo -e "${YELLOW}🏢 ISP: $MY_ISP${NC}"
echo ""

# Define Dutch servers with priorities
declare -A DUTCH_SERVERS=(
    ["iperf-ams-nl.eranium.net:5205"]="Amsterdam,Eranium,100Gbps,Premium"
    ["speedtest.nl3.mirhosting.net:5205"]="Amsterdam,Mirhosting,40Gbps,Premium"
    ["a204.speedtest.wobcom.de:5201"]="Amsterdam,WOBCOM,25Gbps,Premium"
    ["speedtest.ams1.novogara.net:5205"]="Amsterdam,Novogara,20Gbps,Standard"
    ["speedtest.ams1.nl.leaseweb.net:5205"]="Amsterdam,LeaseWeb,10Gbps,Standard"
    ["speedtest.ams2.nl.leaseweb.net:5205"]="Amsterdam,LeaseWeb,10Gbps,Standard"
    ["ams.speedtest.clouvider.net:5205"]="Amsterdam,Clouvider,10Gbps,Standard"
    ["185.102.218.1:5201"]="Amsterdam,DATAPACKET,10Gbps,Standard"
    ["ping-ams1.online.net:5205"]="Amsterdam,Scaleway,10Gbps,Standard"
    ["iperf.worldstream.nl:5201"]="Naaldwijk,Worldstream,10Gbps,Standard"
)

# Function to test servers based on location
test_based_on_location() {
    local test_type="$1"
    
    if [ "$MY_COUNTRY" = "NL" ]; then
        echo -e "${GREEN}🇳🇱 Je bent in Nederland! Testing met lokale servers voor optimale prestaties...${NC}"
        echo ""
        
        # Test premium servers for Dutch users
        for server_info in "${!DUTCH_SERVERS[@]}"; do
            IFS=':' read -r server port <<< "$server_info"
            IFS=',' read -r location provider capacity tier <<< "${DUTCH_SERVERS[$server_info]}"
            
            if [ "$tier" = "Premium" ]; then
                echo -e "${BLUE}🏆 Testing Premium server: $server ($provider - $capacity)${NC}"
                echo -e "${YELLOW}📍 Locatie: $location${NC}"
                
                if [ "$test_type" = "quick" ]; then
                    iperf3 -c "$server" -p "$port" -t 10
                else
                    iperf3 -c "$server" -p "$port" -t 30 --bidir
                fi
                
                echo -e "${GREEN}✅ Test completed for $server${NC}"
                echo "═══════════════════════════════════════════════════════════"
                break  # Test only the best server for demo
            fi
        done
        
    else
        echo -e "${ORANGE}🌍 Je bent buiten Nederland. Testing met Nederlandse servers voor vergelijking...${NC}"
        echo ""
        
        # Test one premium server for international users
        server_info="iperf-ams-nl.eranium.net:5205"
        IFS=':' read -r server port <<< "$server_info"
        
        echo -e "${BLUE}🌐 Testing beste Nederlandse server: $server${NC}"
        echo -e "${YELLOW}📍 Locatie: Amsterdam, Nederland${NC}"
        
        if [ "$test_type" = "quick" ]; then
            iperf3 -c "$server" -p "$port" -t 10
        else
            iperf3 -c "$server" -p "$port" -t 30 -R
        fi
    fi
}

# Function to provide ISP-specific recommendations
provide_isp_recommendations() {
    echo -e "${BLUE}🔧 Nederlandse ISP Specifieke Aanbevelingen:${NC}"
    echo ""
    
    if [[ "$MY_ISP" == *"KPN"* ]] || [[ "$MY_ISP" == *"Xs4all"* ]]; then
        echo -e "${GREEN}🟢 KPN/Xs4all gedetecteerd${NC}"
        echo "• Gebruik IPv6 voor beste prestaties: iperf3 -c iperf-ams-nl.eranium.net -p 5205 -6"
        echo "• Test glasvezel met hoge bandbreedte servers"
        echo "• ADSL/VDSL: verwacht asymmetrische snelheden"
        
    elif [[ "$MY_ISP" == *"Ziggo"* ]] || [[ "$MY_ISP" == *"Vodafone"* ]]; then
        echo -e "${BLUE}🔵 Ziggo/VodafoneZiggo gedetecteerd${NC}"
        echo "• Cable verbinding: upload is vaak lager dan download"
        echo "• Test op verschillende tijden (shared medium)"
        echo "• Gebruik: iperf3 -c speedtest.nl3.mirhosting.net -p 5205 -t 30"
        
    elif [[ "$MY_ISP" == *"T-Mobile"* ]] || [[ "$MY_ISP" == *"Tele2"* ]]; then
        echo -e "${YELLOW}🟡 T-Mobile/Tele2 gedetecteerd${NC}"
        echo "• Glasvezel: gebruik high-capacity servers"
        echo "• 4G/5G: beperk bandbreedte test met -u -b 100M"
        echo "• Test: iperf3 -c iperf-ams-nl.eranium.net -p 5205 --bidir"
        
    else
        echo -e "${ORANGE}🟠 Andere Nederlandse ISP${NC}"
        echo "• Start met conservatieve test: iperf3 -c 185.102.218.1 -t 15"
        echo "• Test IPv6 ondersteuning: iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5205 -6"
    fi
    echo ""
}

# Function to show all available Dutch servers
show_all_dutch_servers() {
    echo -e "${BLUE}📋 Alle beschikbare Nederlandse servers:${NC}"
    echo ""
    
    for server_info in "${!DUTCH_SERVERS[@]}"; do
        IFS=':' read -r server port <<< "$server_info"
        IFS=',' read -r location provider capacity tier <<< "${DUTCH_SERVERS[$server_info]}"
        
        if [ "$tier" = "Premium" ]; then
            echo -e "${GREEN}🏆 $server:$port${NC} - $provider ($capacity) - $location"
        else
            echo -e "${YELLOW}⭐ $server:$port${NC} - $provider ($capacity) - $location"
        fi
        echo "   Command: iperf3 -c $server -p $port"
        echo ""
    done
}

# Main menu
echo -e "${YELLOW}Kies een optie:${NC}"
echo "1. 🚀 Quick test (10 seconden) met beste server"
echo "2. 📊 Uitgebreide test (30 seconden) met bidirectioneel"
echo "3. 🔧 ISP-specifieke aanbevelingen"
echo "4. 📋 Toon alle Nederlandse servers"
echo "5. 🌐 Custom server test"
echo ""

read -p "Voer je keuze in (1-5): " choice

case $choice in
    1)
        echo -e "${GREEN}🚀 Starting quick test...${NC}"
        test_based_on_location "quick"
        ;;
    2)
        echo -e "${GREEN}📊 Starting extended test...${NC}"
        test_based_on_location "extended"
        ;;
    3)
        provide_isp_recommendations
        ;;
    4)
        show_all_dutch_servers
        ;;
    5)
        echo -e "${YELLOW}🌐 Custom server test${NC}"
        read -p "Voer server adres in: " custom_server
        read -p "Voer poort in (standaard 5201): " custom_port
        custom_port=${custom_port:-5201}
        
        echo -e "${BLUE}Testing custom server: $custom_server:$custom_port${NC}"
        iperf3 -c "$custom_server" -p "$custom_port" -t 15
        ;;
    *)
        echo -e "${RED}Ongeldige keuze. Voer 1-5 in.${NC}"
        exit 1
        ;;
esac

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ Test voltooid!${NC}"
echo ""
echo -e "${YELLOW}💡 Tips voor Nederlandse gebruikers:${NC}"
echo "• Gebruik lokale servers voor nauwkeurige metingen"
echo "• Test op verschillende tijden van de dag"
echo "• Vergelijk IPv4 en IPv6 prestaties"
echo "• Voor gaming: test latency met korte tests (-t 5)"
echo "• Voor streaming: test upload met -R flag"
echo ""
echo -e "${BLUE}📖 Meer informatie: https://github.com/Lenvanderhof/public-iperf3-servers-NL${NC}"