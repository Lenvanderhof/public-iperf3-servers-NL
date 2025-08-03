#!/bin/bash

# Interactive Nederlandse iPerf3 Server Selector
# Geavanceerde interactieve tool voor Nederlandse gebruikers
# curl -s https://raw.githubusercontent.com/Lenvanderhof/public-iperf3-servers-NL/main/interactive-nl.sh | bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# Nederlandse server database
declare -A NL_SERVERS=(
    ["eranium"]="iperf-ams-nl.eranium.net:5205:100Gbps:Premium:AMS-IX"
    ["mirhosting"]="speedtest.nl3.mirhosting.net:5205:40Gbps:Premium:Amsterdam"
    ["wobcom"]="a204.speedtest.wobcom.de:5201:25Gbps:Premium:Amsterdam"
    ["novogara"]="speedtest.ams1.novogara.net:5205:20Gbps:Standard:Amsterdam"
    ["leaseweb1"]="speedtest.ams1.nl.leaseweb.net:5205:10Gbps:Standard:Amsterdam"
    ["leaseweb2"]="speedtest.ams2.nl.leaseweb.net:5205:10Gbps:Standard:Amsterdam"
    ["clouvider"]="ams.speedtest.clouvider.net:5205:10Gbps:Standard:Amsterdam"
    ["datapacket"]="185.102.218.1:5201:10Gbps:Standard:Amsterdam"
    ["scaleway"]="ping-ams1.online.net:5205:10Gbps:Standard:Amsterdam"
    ["worldstream"]="iperf.worldstream.nl:5201:10Gbps:Standard:Naaldwijk"
)

declare -A NEARBY_SERVERS=(
    ["belgium"]="207.211.214.65:5201:10Gbps:Brussels:8ms"
    ["germany_dus"]="a208.speedtest.wobcom.de:5201:25Gbps:Düsseldorf:15ms"
    ["germany_fra"]="fra.speedtest.clouvider.net:5205:10Gbps:Frankfurt:15ms"
    ["uk_london"]="lon.speedtest.clouvider.net:5205:10Gbps:London:15ms"
    ["denmark"]="speed1.fiberby.dk:9205:25Gbps:Copenhagen:25ms"
    ["france_paris"]="iperf.online.net:5205:100Gbps:Paris:20ms"
)

show_banner() {
    clear
    echo -e "${BLUE}╔════════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${BLUE}║        🇳🇱 Interactieve Nederlandse iPerf3 Server Selector         ║${NC}"
    echo -e "${BLUE}║              Kies de perfecte server voor jouw situatie            ║${NC}"
    echo -e "${BLUE}╚════════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

detect_user_info() {
    echo -e "${YELLOW}🔍 Detecteren van jouw netwerk informatie...${NC}"
    
    MY_IP=$(curl -s https://api.ipify.org)
    LOCATION_INFO=$(curl -s "https://ipinfo.io/$MY_IP/json")
    MY_CITY=$(echo "$LOCATION_INFO" | jq -r '.city')
    MY_COUNTRY=$(echo "$LOCATION_INFO" | jq -r '.country')
    MY_REGION=$(echo "$LOCATION_INFO" | jq -r '.region')
    MY_ISP=$(echo "$LOCATION_INFO" | jq -r '.org')
    
    echo -e "${GREEN}📍 Locatie: $MY_CITY, $MY_REGION, $MY_COUNTRY${NC}"
    echo -e "${GREEN}🌐 IP: $MY_IP${NC}"
    echo -e "${GREEN}🏢 ISP: $MY_ISP${NC}"
    echo ""
}

show_connection_types() {
    echo -e "${CYAN}🔌 Selecteer jouw verbindingstype:${NC}"
    echo ""
    echo "1. 🌐 Glasvezel (FTTH/FTTB) - 100+ Mbps symmetrisch"
    echo "2. 📡 Cable/DOCSIS (Ziggo) - Hoge download, lagere upload"
    echo "3. 📞 ADSL/VDSL (Copper) - Tot 100 Mbps, asymmetrisch" 
    echo "4. 📱 4G/5G Mobiel - Variabele prestaties"
    echo "5. 🏢 Zakelijk/Enterprise - Dedicated verbinding"
    echo "6. ❓ Onbekend/Weet ik niet"
    echo ""
    read -p "Voer je keuze in (1-6): " conn_type
}

show_isp_specific() {
    echo -e "${CYAN}📡 Selecteer jouw Nederlandse ISP:${NC}"
    echo ""
    echo "1. 🟢 KPN (Glasvezel/ADSL/VDSL)"
    echo "2. 🔵 VodafoneZiggo (Cable/Glasvezel)"
    echo "3. 🟡 T-Mobile/Tele2 (Glasvezel/Mobiel)"
    echo "4. 🟠 Delta/Caiway (Regionaal Cable)"
    echo "5. 🟣 Xs4all (KPN netwerk)"
    echo "6. ⚫ Andere/Zakelijke provider"
    echo ""
    read -p "Voer je ISP keuze in (1-6): " isp_choice
}

show_test_purpose() {
    echo -e "${CYAN}🎯 Wat is het doel van je test?${NC}"
    echo ""
    echo "1. 🚀 Algemene snelheidstest"
    echo "2. 🎮 Gaming latency test"
    echo "3. 📺 Streaming capability test"
    echo "4. 💼 Zakelijke verbinding validatie"
    echo "5. 🔧 Troubleshooting netwerkproblemen"
    echo "6. 📊 Benchmark/vergelijking"
    echo ""
    read -p "Voer je doel in (1-6): " test_purpose
}

recommend_server() {
    local conn_type=$1
    local isp_choice=$2
    local test_purpose=$3
    
    echo -e "${YELLOW}🤖 Aanbeveling gebaseerd op jouw selecties:${NC}"
    echo ""
    
    # Logic for server recommendation
    case $conn_type in
        1) # Glasvezel
            case $test_purpose in
                1|6) # Algemeen/Benchmark
                    recommended_server="eranium"
                    echo -e "${GREEN}🏆 Aanbevolen: Eranium (100 Gbps) - Beste voor glasvezel${NC}"
                    ;;
                2) # Gaming
                    recommended_server="clouvider"
                    echo -e "${GREEN}🎮 Aanbevolen: Clouvider - Optimaal voor gaming latency${NC}"
                    ;;
                3) # Streaming
                    recommended_server="mirhosting"
                    echo -e "${GREEN}📺 Aanbevolen: Mirhosting (40 Gbps) - Perfect voor streaming${NC}"
                    ;;
                4) # Zakelijk
                    recommended_server="leaseweb1"
                    echo -e "${GREEN}💼 Aanbevolen: LeaseWeb - Enterprise kwaliteit${NC}"
                    ;;
                5) # Troubleshooting
                    recommended_server="datapacket"
                    echo -e "${GREEN}🔧 Aanbevolen: DATAPACKET - Stabiel voor troubleshooting${NC}"
                    ;;
            esac
            ;;
        2) # Cable
            case $isp_choice in
                2) # VodafoneZiggo
                    recommended_server="mirhosting"
                    echo -e "${GREEN}🔵 Ziggo geoptimaliseerd: Mirhosting server${NC}"
                    ;;
                *) 
                    recommended_server="novogara"
                    echo -e "${GREEN}📡 Cable geoptimaliseerd: Novogara server${NC}"
                    ;;
            esac
            ;;
        3) # ADSL/VDSL
            recommended_server="leaseweb2"
            echo -e "${GREEN}📞 ADSL/VDSL geoptimaliseerd: LeaseWeb server${NC}"
            ;;
        4) # Mobiel
            recommended_server="scaleway"
            echo -e "${GREEN}📱 Mobiel geoptimaliseerd: Scaleway server${NC}"
            ;;
        5) # Zakelijk
            recommended_server="leaseweb1"
            echo -e "${GREEN}🏢 Enterprise geoptimaliseerd: LeaseWeb server${NC}"
            ;;
        *) # Onbekend
            recommended_server="eranium"
            echo -e "${GREEN}❓ Standaard aanbeveling: Eranium server${NC}"
            ;;
    esac
    
    # Display server details
    IFS=':' read -r host port capacity tier location <<< "${NL_SERVERS[$recommended_server]}"
    echo -e "${BLUE}📋 Server details:${NC}"
    echo -e "   Host: $host"
    echo -e "   Poort: $port"
    echo -e "   Capaciteit: $capacity"
    echo -e "   Tier: $tier"
    echo -e "   Locatie: $location"
    echo ""
}

generate_test_commands() {
    local conn_type=$1
    local test_purpose=$2
    
    IFS=':' read -r host port capacity tier location <<< "${NL_SERVERS[$recommended_server]}"
    
    echo -e "${CYAN}🔧 Aanbevolen test commando's:${NC}"
    echo ""
    
    case $test_purpose in
        1) # Algemeen
            echo -e "${GREEN}📊 Standaard snelheidstest:${NC}"
            echo "iperf3 -c $host -p $port -t 30"
            echo ""
            echo -e "${GREEN}📊 Bidirectionele test:${NC}"
            echo "iperf3 -c $host -p $port --bidir -t 30"
            ;;
        2) # Gaming
            echo -e "${GREEN}🎮 Gaming latency test:${NC}"
            echo "iperf3 -c $host -p $port -t 5 -i 0.5"
            echo ""
            echo -e "${GREEN}🎮 UDP gaming test:${NC}"
            echo "iperf3 -c $host -p $port -u -b 10M -t 10"
            ;;
        3) # Streaming
            echo -e "${GREEN}📺 4K streaming test (25 Mbps):${NC}"
            echo "iperf3 -c $host -p $port -u -b 25M -t 60"
            echo ""
            echo -e "${GREEN}📺 Upload streaming test:${NC}"
            echo "iperf3 -c $host -p $port -R -u -b 8M -t 30"
            ;;
        4) # Zakelijk
            echo -e "${GREEN}💼 Enterprise stabiliteitstest:${NC}"
            echo "iperf3 -c $host -p $port -t 300 -i 30"
            echo ""
            echo -e "${GREEN}💼 Multi-stream test:${NC}"
            echo "iperf3 -c $host -p $port -P 4 -t 60"
            ;;
        5) # Troubleshooting
            echo -e "${GREEN}🔧 Diagnose test (korte intervallen):${NC}"
            echo "iperf3 -c $host -p $port -t 60 -i 5"
            echo ""
            echo -e "${GREEN}🔧 Connectiviteitstest:${NC}"
            echo "ping -c 10 $host"
            ;;
        6) # Benchmark
            echo -e "${GREEN}📊 Uitgebreide benchmark:${NC}"
            echo "iperf3 -c $host -p $port -P 8 -t 120"
            echo ""
            echo -e "${GREEN}📊 IPv6 vergelijkingstest:${NC}"
            echo "iperf3 -c $host -p $port -6 -t 30"
            ;;
    esac
    echo ""
}

run_recommended_test() {
    IFS=':' read -r host port capacity tier location <<< "${NL_SERVERS[$recommended_server]}"
    
    echo -e "${YELLOW}🚀 Uitvoeren van aanbevolen test...${NC}"
    echo ""
    
    case $test_purpose in
        1|6) # Algemeen/Benchmark
            echo -e "${BLUE}Uitvoeren van standaard snelheidstest (30 seconden)...${NC}"
            iperf3 -c "$host" -p "$port" -t 30
            ;;
        2) # Gaming
            echo -e "${BLUE}Uitvoeren van gaming latency test (5 seconden)...${NC}"
            iperf3 -c "$host" -p "$port" -t 5 -i 0.5
            ;;
        3) # Streaming
            echo -e "${BLUE}Uitvoeren van 4K streaming test (25 Mbps, 60 seconden)...${NC}"
            iperf3 -c "$host" -p "$port" -u -b 25M -t 60
            ;;
        4) # Zakelijk
            echo -e "${BLUE}Uitvoeren van enterprise stabiliteitstest (5 minuten)...${NC}"
            iperf3 -c "$host" -p "$port" -t 300 -i 30
            ;;
        5) # Troubleshooting
            echo -e "${BLUE}Uitvoeren van diagnose test (60 seconden)...${NC}"
            iperf3 -c "$host" -p "$port" -t 60 -i 5
            ;;
    esac
}

show_alternative_servers() {
    echo -e "${CYAN}🌐 Alternatieve Nederlandse servers:${NC}"
    echo ""
    
    for key in "${!NL_SERVERS[@]}"; do
        if [ "$key" != "$recommended_server" ]; then
            IFS=':' read -r host port capacity tier location <<< "${NL_SERVERS[$key]}"
            if [ "$tier" = "Premium" ]; then
                echo -e "${GREEN}🏆 $key: $host:$port ($capacity) - $location${NC}"
            else
                echo -e "${YELLOW}⭐ $key: $host:$port ($capacity) - $location${NC}"
            fi
        fi
    done
    
    echo ""
    echo -e "${CYAN}🌍 Nabije internationale servers (voor vergelijking):${NC}"
    echo ""
    
    for key in "${!NEARBY_SERVERS[@]}"; do
        IFS=':' read -r host port capacity location latency <<< "${NEARBY_SERVERS[$key]}"
        echo -e "${ORANGE}🌐 $key: $host:$port ($capacity) - $location (~$latency)${NC}"
    done
    echo ""
}

# Main execution
show_banner

# Check dependencies
for cmd in iperf3 jq curl; do
    if ! command -v $cmd &>/dev/null; then
        echo -e "${RED}❌ $cmd niet gevonden. Installeer eerst: sudo apt install iperf3 jq curl${NC}"
        exit 1
    fi
done

detect_user_info
show_connection_types
show_isp_specific  
show_test_purpose

recommend_server "$conn_type" "$isp_choice" "$test_purpose"
generate_test_commands "$conn_type" "$test_purpose"

echo -e "${YELLOW}🤔 Wat wil je nu doen?${NC}"
echo ""
echo "1. 🚀 Uitvoeren van aanbevolen test"
echo "2. 📋 Toon alle commando's"
echo "3. 🌐 Bekijk alternatieve servers"
echo "4. 🔄 Herstart met andere instellingen"
echo "5. 🚪 Afsluiten"
echo ""

read -p "Voer je keuze in (1-5): " final_choice

case $final_choice in
    1)
        run_recommended_test
        ;;
    2)
        generate_test_commands "$conn_type" "$test_purpose"
        ;;
    3)
        show_alternative_servers
        ;;
    4)
        exec "$0"
        ;;
    5)
        echo -e "${GREEN}👋 Bedankt voor het gebruiken van de Nederlandse iPerf3 selector!${NC}"
        exit 0
        ;;
    *)
        echo -e "${RED}❌ Ongeldige keuze${NC}"
        exit 1
        ;;
esac

echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ Sessie voltooid!${NC}"
echo ""
echo -e "${YELLOW}💡 Handige tips:${NC}"
echo "• Test op verschillende tijden voor accurate metingen"
echo "• Gebruik IPv6 (-6) als jouw ISP dit ondersteunt"
echo "• Voor gaming: korte tests met frequent interval (-i 0.5)"
echo "• Voor troubleshooting: langere tests met regelmatige intervallen"
echo ""
echo -e "${BLUE}📖 Meer informatie: https://github.com/Lenvanderhof/public-iperf3-servers-NL${NC}"