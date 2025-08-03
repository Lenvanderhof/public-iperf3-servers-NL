# 🇳🇱 Public iPerf3 Servers - Geoptimaliseerd voor Nederland

<p align="center"><br/>
  <a href="https://iperf3serverlist.net" target="_blank"><img src="iperf3serverlist_256.png" width="150"></a><br/>  
  <b><a href="https://iperf3serverlist.net" target="_blank">iperf3serverlist.net</a></b><br/>
  <sub>🇳🇱 Nederlandse editie - Voor optimale prestaties in Nederland</sub><br/>
  <br/>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-green.svg?color=0066ff&style=for-the-badge&label=License&logoColor=000000&labelColor=ececec" alt="License: MIT"></a> <br/>

<hr>

<p align="center">
  <a href="https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/67977b6eb83299845e63bcf938eaf78f4719e253/iPerf3_Serverlist_NL.csv">
    <img src="https://img.shields.io/badge/Download%20CSV-Netherlands%20Servers-blue?style=for-the-badge&logo=csv" alt="Download Netherlands CSV">
  </a>&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/67977b6eb83299845e63bcf938eaf78f4719e253/iPerf3_Serverlist_NL.xlsx">
    <img src="https://img.shields.io/badge/Download%20Excel-Netherlands%20Servers-green?style=for-the-badge&logo=microsoft-excel" alt="Download Netherlands Excel">
  </a>
</p>

## 🛠️ Automatische Server Selectie

### Nederlandse Geoptimaliseerde Finder 🇳🇱
```bash
curl -s https://raw.githubusercontent.com/Lenvanderhof/public-iperf3-servers-NL/main/findtest-nl.sh | bash
```
*Speciaal ontwikkeld voor Nederlandse ISPs en netwerken - Detecteert automatisch je ISP en geeft specifieke aanbevelingen*

### Internationale Versie 🌍  
```bash
curl -s https://raw.githubusercontent.com/R0GGER/public-iperf3-servers/main/findtest.sh | bash
```
*Globale server selectie gebaseerd op geografische locatie*

<hr>

   # 🚀 Premium Nederlandse iPerf3 Servers

> **🇳🇱 Geoptimaliseerd voor Nederlandse gebruikers - Lokale servers voor de beste prestaties**

## 🏆 Top Aanbevolen Servers voor Nederland

<table>
  <thead>
    <tr>
      <th>🌐 Server / Commando</th>
      <th>🔧 Opties</th>
      <th>⚡ Capaciteit</th>
      <th>📍 Locatie</th>
      <th>🎯 Aanbeveling</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>iperf3 -c iperf-ams-nl.eranium.net -p 5205</code></td>
      <td>-R, -6, -u</td>
      <td>100 Gbps</td>
      <td>Amsterdam AMS-IX</td>
      <td>🥇 Best voor high-speed tests</td>
    </tr>
    <tr>
      <td><code>iperf3 -c speedtest.nl3.mirhosting.net -p 5205</code></td>
      <td>-R, -6, -u</td>
      <td>40 Gbps</td>
      <td>Amsterdam</td>
      <td>🥈 Uitstekend voor glasvezel</td>
    </tr>
    <tr>
      <td><code>iperf3 -c a204.speedtest.wobcom.de</code></td>
      <td>-R, -6</td>
      <td>25 Gbps</td>
      <td>Amsterdam</td>
      <td>🥉 Betrouwbaar & stabiel</td>
    </tr>
    <tr>
      <td><code>iperf3 -c speedtest.ams1.novogara.net -p 5205</code></td>
      <td>-R, -6, -u</td>
      <td>20 Gbps</td>
      <td>Amsterdam</td>
      <td>💼 Zakelijk gebruik</td>
    </tr>
    <tr>
      <td><code>iperf3 -c iperf.worldstream.nl</code></td>
      <td>-R, -6</td>
      <td>10 Gbps</td>
      <td>Naaldwijk</td>
      <td>🌿 Westland datacenter</td>
    </tr>
  </tbody>
</table>

## 🎛️ Aanbevolen Test Configuraties

### Voor Nederlandse Glasvezel (Fiber) Connecties 🌐
```bash
# Test je volledige glasvezel bandbreedte (beide richtingen)
iperf3 -c iperf-ams-nl.eranium.net -p 5205 --bidir -t 30

# IPv6 test (veel Nederlandse ISPs ondersteunen dit)
iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5205 -6 -t 15

# UDP jitter test voor gaming/VoIP
iperf3 -c ams.speedtest.clouvider.net -p 5205 -u -b 100M -t 10
```

### Voor Nederlandse ADSL/VDSL/Cable Connecties 📡
```bash
# Conservatieve test voor copper verbindingen
iperf3 -c 185.102.218.1 -t 15 -i 5

# Download test (reverse mode)
iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5205 -R -t 20
```

### Voor Nederlandse Mobiele Netwerken 📱
```bash
# 4G/5G test met beperkte bandbreedte
iperf3 -c ping-ams1.online.net -p 5205 -u -b 50M -t 10

# Latency-gevoelige test
iperf3 -c ams.speedtest.clouvider.net -p 5205 -t 5 -i 1
```

## 🏢 Nederlandse Datacenter Locaties

| **Datacenter** | **Stad** | **Providers** | **Verbinding** |
|:---------------|:---------|:-------------|:---------------|
| **AMS-IX** | Amsterdam | Eranium, LeaseWeb, Clouvider | AMS-IX peering |
| **Equinix AM1-AM8** | Amsterdam | Diverse providers | Premium connectivity |
| **NIKHEF** | Amsterdam | Academisch netwerk | SURFnet |
| **Serverius DC2** | Meppel | Worldstream, locals | Fiber backbone |
| **Iron Mountain AM1** | Amsterdam | Enterprise hosting | Multiple carriers |

## 🇳🇱 ISP-Specifieke Tips

### KPN
- Gebruik IPv6 voor beste prestaties: `-6`
- Test via Amsterdam servers voor optimale routing
- ADSL: verwacht 8-24 Mbps, Glasvezel: tot 1 Gbps

### Ziggo/VodafoneZiggo  
- Gebruik TCP tests voor stabiele metingen
- Upload kan lager zijn dan download (DOCSIS)
- Cable: 100-1000 Mbps typisch

### T-Mobile/Tele2
- Mobile: test met `-u -b 50M` voor realistisch resultaat
- Fiber: gebruik high-capacity servers (Eranium/Mirhosting)

### Xs4all (KPN)
- Vaak uitstekende IPv6 ondersteuning
- Test met zowel IPv4 als IPv6 voor vergelijking

---

> 💡 **Tip:** Kopieer elk `iperf3` commando hierboven en voer het uit om je verbinding naar NL servers te testen!

---

# 🇳🇱 Nederlandse Netwerk Optimalisatie Gids

## 🌍 Waarom Nederlandse Servers Gebruiken?

### Voordelen van lokale servers:
- **Lagere latency** (~1-5ms vs 50-200ms internationale servers)
- **Betrouwbaardere metingen** (minder netwerk variabelen)
- **Realistische prestaties** voor Nederlandse internet gebruik
- **Betere IPv6 ondersteuning** (Nederland is IPv6 koploper)

## 🔧 Nederlandse ISP Optimalisaties

### 🟢 KPN (Koninklijke PTT Nederland)
```bash
# Glasvezel test (tot 1 Gbps)
iperf3 -c iperf-ams-nl.eranium.net -p 5205 -6 -t 30

# ADSL/VDSL test  
iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5205 -t 20 -i 5

# IPv6 prioriteit (KPN heeft uitstekende IPv6)
iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5205 -6 --bidir
```

**KPN Specifieke Tips:**
- Gebruik IPv6 waar mogelijk (-6 flag)
- Glasvezel: test tijdens verschillende tijden (avondspits kan trager zijn)
- ADSL/VDSL: upload is asymmetrisch (meestal 10-40% van download)

### 🔵 Ziggo/VodafoneZiggo (Cable)
```bash
# Cable modem test (DOCSIS 3.1)
iperf3 -c speedtest.nl3.mirhosting.net -p 5205 -t 30

# Upload test (vaak lager bij cable)
iperf3 -c ams.speedtest.clouvider.net -p 5205 -R -t 15

# Stabiliteit test
iperf3 -c 185.102.218.1 -t 60 -i 10
```

**Ziggo Specifieke Tips:**
- Upload snelheid is vaak 5-20% van download bij cable
- Test op verschillende tijden (shared medium effect)
- Gebruik TCP voor stabiele metingen

### 🟡 T-Mobile/Tele2
```bash
# Glasvezel test
iperf3 -c iperf-ams-nl.eranium.net -p 5205 --bidir -t 20

# 4G/5G mobiel test
iperf3 -c ping-ams1.online.net -p 5205 -u -b 100M -t 10

# Hybride verbinding test
iperf3 -c speedtest.ams1.novogara.net -p 5205 -P 3 -t 15
```

### 🟠 Delta/Caiway (Regional Cable)
```bash
# Regionale kabel test
iperf3 -c ams.speedtest.clouvider.net -p 5205 -t 20

# Latency-gevoelige test
iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5205 -i 1 -t 10
```

## 📊 Nederlandse Datacenter Ecosystem

### 🏢 Tier 1 Datacenters
| **Naam** | **Locatie** | **Specialisatie** | **Aanbevolen Server** |
|:---------|:------------|:------------------|:---------------------|
| **AMS-IX** | Amsterdam | Internet Exchange | `iperf-ams-nl.eranium.net` |
| **Equinix AM1-8** | Amsterdam | Carrier Neutral | `speedtest.ams1.nl.leaseweb.net` |
| **Digital Realty AMS1** | Amsterdam | Hyperscale | `ams.speedtest.clouvider.net` |
| **Iron Mountain AM1** | Amsterdam | Enterprise | `speedtest.ams1.novogara.net` |

### 🌐 Internet Exchanges in Nederland
- **AMS-IX Amsterdam** - Een van de grootste ter wereld
- **NL-ix Dronten** - Regionaal exchange
- **NIKHEF Amsterdam** - Onderzoeksnetwerk

## 🚀 Performance Tuning voor Nederlandse Netwerken

### IPv6 Optimalisatie
```bash
# Test IPv6 prestaties (Nederland heeft ~50% IPv6 adoptie)
iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5205 -6 -t 30

# Vergelijk IPv4 vs IPv6
echo "IPv4 test:" && iperf3 -c iperf-ams-nl.eranium.net -p 5205 -4 -t 10
echo "IPv6 test:" && iperf3 -c iperf-ams-nl.eranium.net -p 5205 -6 -t 10
```

### Buffer Optimalisatie
```bash
# Grote bestanden over Nederlandse netwerken
iperf3 -c speedtest.nl3.mirhosting.net -p 5205 -w 1M -t 30

# TCP window scaling test
iperf3 -c iperf-ams-nl.eranium.net -p 5205 -w 64K,128K,256K -t 20
```

### Parallel Streams voor Glasvezel
```bash
# Multi-stream test voor gigabit glasvezel
iperf3 -c iperf-ams-nl.eranium.net -p 5205 -P 4 -t 30

# Progressieve stream test
for streams in 1 2 4 8; do
  echo "Testing with $streams streams:"
  iperf3 -c speedtest.nl3.mirhosting.net -p 5205 -P $streams -t 10
done
```

## 📱 Nederlandse Mobiele Netwerken

### 4G/5G Optimalisatie
```bash
# Conservatieve mobiele test
iperf3 -c ping-ams1.online.net -p 5205 -u -b 50M -t 15

# 5G high-speed test
iperf3 -c iperf-ams-nl.eranium.net -p 5205 -u -b 500M -t 10

# Latency test voor gaming
iperf3 -c ams.speedtest.clouvider.net -p 5205 -t 5 -i 0.5
```

### Carrier Specifieke Tests
| **Provider** | **Aanbevolen Test** | **Verwachte Snelheid** |
|:-------------|:-------------------|:-----------------------|
| **KPN** | `-u -b 200M` | 4G: 50-150 Mbps, 5G: 200-1000 Mbps |
| **Vodafone** | `-u -b 150M` | 4G: 40-120 Mbps, 5G: 150-800 Mbps |
| **T-Mobile** | `-u -b 100M` | 4G: 30-100 Mbps, 5G: 100-600 Mbps |

## 🔍 Troubleshooting Nederlandse Connecties

### Algemene Problemen
```bash
# Connectiviteit test
ping -c 5 iperf-ams-nl.eranium.net

# MTU discovery voor Nederlandse netwerken
ping -M do -s 1472 speedtest.ams1.nl.leaseweb.net

# Traceroute naar Amsterdam
traceroute iperf-ams-nl.eranium.net
```

### ISP-Specifieke Problemen

#### KPN Glasvezel Problemen
- **Symptoom**: Lage snelheden 's avonds
- **Oplossing**: Test met `-P 2` (multiple streams)
- **Check**: IPv6 vs IPv4 vergelijking

#### Ziggo Cable Issues  
- **Symptoom**: Variabele snelheden
- **Oplossing**: Test op verschillende tijden
- **Check**: Upload/download ratio

#### T-Mobile/Tele2 Issues
- **Symptoom**: Inconsistente prestaties
- **Oplossing**: Gebruik verschillende servers
- **Check**: Routing via AMS-IX

## 🎯 Nederlandse Gaming/Streaming Optimalisatie

### Gaming (Lage Latency)
```bash
# CS:GO/Valorant servers Amsterdam
iperf3 -c ams.speedtest.clouvider.net -p 5205 -t 5 -i 0.5

# Console gaming test
iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5205 -u -b 10M -t 30
```

### Streaming (Hoge Bandbreedte)
```bash
# 4K streaming test
iperf3 -c iperf-ams-nl.eranium.net -p 5205 -u -b 25M -t 60

# Twitch/YouTube upload test
iperf3 -c speedtest.nl3.mirhosting.net -p 5205 -R -u -b 10M -t 30
```

## 📈 Nederlandse Netwerk Benchmarks

### Typische Snelheden per Type
| **Connectie Type** | **Download** | **Upload** | **Latency** |
|:-------------------|:-------------|:-----------|:------------|
| **Glasvezel 100/100** | 95-100 Mbps | 95-100 Mbps | 1-3 ms |
| **Glasvezel 500/500** | 450-500 Mbps | 450-500 Mbps | 1-3 ms |
| **Glasvezel 1000/1000** | 900-1000 Mbps | 900-1000 Mbps | 1-3 ms |
| **Cable 200/20** | 180-200 Mbps | 18-20 Mbps | 5-15 ms |
| **VDSL 50/10** | 45-50 Mbps | 8-10 Mbps | 8-20 ms |
| **4G** | 30-150 Mbps | 10-50 Mbps | 20-50 ms |
| **5G** | 100-1000 Mbps | 50-200 Mbps | 10-30 ms |

---

# Public iPerf3 servers - POV from The Netherlands (NL)


## Table of Contents

* [Nederlandse Optimalisatie Gids](https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/main/docs-nl.md) 🇳🇱
  * [ISP-Specifieke Aanbevelingen](https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/main/docs-nl.md#-nederlandse-isp-optimalisaties)
  * [Datacenter Locaties](https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/main/docs-nl.md#-nederlandse-datacenter-ecosystem)
  * [Gaming & Streaming Tips](https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/main/docs-nl.md#-nederlandse-gaming--streaming-optimalisatie)
  * [IPv6 Optimalisatie](https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/main/docs-nl.md#-nederlandse-ipv6-adoptie)
  * [Troubleshooting Gids](https://github.com/Lenvanderhof/public-iperf3-servers-NL/blob/main/docs-nl.md#-nederlandse-netwerk-troubleshooting)

* [General Documentation](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#iperf3) 🌍
  * [Installation](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#installation)
  * [Basic Usage](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#basic-usage)
  * [Test Scenarios & Protocol Differences](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#test-scenarios--protocol-differences)
  * [Advanced Usage & Tips](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#advanced-usage--tips)
  * [Cool Projects](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#cool-projects)

* [Testing & Monitoring](https://github.com/R0GGER/public-iperf3-servers/blob/main/testing_process.md)
* [Servers per continent](#servers-per-continent)
* [Export to .CSV, .XLSX, JSON](#export)
* [Contact](#contact)

## Servers per continent
Do you want to add/remove an IP or HOST to this list? Please create a [new issue](https://github.com/R0GGER/public-iperf3-servers/issues).

* [AFRICA](#africa)
* [ASIA](#asia)
* [EUROPE](#europe)
* [LATIN AMERICA](#latin-america)
* [NORTH AMERICA](#north-america)
* [OCEANIA](#oceania)

:sparkles: Servers with an uptime of 90% or less in 30 days will be removed.

### AFRICA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c iperf.angolacables.co.ao -p 9200-9240 | -R,-6,-u | 10 | AO \| ![ao](https://flagcdn.com/16x12/ao.png) | Luanda |
| iperf3 -c 41.110.39.130 -p 5201 | -R,-6,-u | 10 | DZ \| ![dz](https://flagcdn.com/16x12/dz.png) | Algiers |
| iperf3 -c 213.158.175.240 | -R,-6,-u | 10 | EG \| ![eg](https://flagcdn.com/16x12/eg.png) | Cairo |
| iperf3 -c 102.214.66.19 | -R,-6,-u | 2x10 | GN \| ![gn](https://flagcdn.com/16x12/gn.png) | Accra |
| iperf3 -c 102.214.66.39 | -R,-6,-u | 2x10 | GN \| ![gn](https://flagcdn.com/16x12/gn.png) | Accra |
| iperf3 -c 105.235.237.2 -p 5201-5209 | -R |  | GQ \| ![gq](https://flagcdn.com/16x12/gq.png) | Bata |
| iperf3 -c speedtestfl.telecom.mu -p 5201-5209 | -R,-u |  | MU \| ![mu](https://flagcdn.com/16x12/mu.png) | Floreal |
| iperf3 -c speedtest.telecom.mu -p 5201-5209 | -R,-u |  | MU \| ![mu](https://flagcdn.com/16x12/mu.png) | Port Louis |
| iperf3 -c 197.26.19.243 -p 9200-9210 | -u |  | TN \| ![tn](https://flagcdn.com/16x12/tn.png) | Tunis |
| iperf3 -c 41.226.22.119 -p 9202-9240 | -R,-u |  | TN \| ![tn](https://flagcdn.com/16x12/tn.png) | Tunis |
| iperf3 -c 41.210.185.162 | -R,-6,-u | 2x10 | UG \| ![ug](https://flagcdn.com/16x12/ug.png) | Kampala |
| iperf3 -c 169.150.238.161 | -R,-u | 2x10 | ZA \| ![za](https://flagcdn.com/16x12/za.png) | Johannesburg |


### ASIA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 86.96.154.106 -p 7004-7013 | -R,-u |  | AE \| ![ae](https://flagcdn.com/16x12/ae.png) | Dubai |
| iperf3 -c 84.17.57.129 | -R,-u | 2x10 | HK \| ![hk](https://flagcdn.com/16x12/hk.png) | Hong Kong |
| iperf3 -c speedtest.hkg12.hk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | HK \| ![hk](https://flagcdn.com/16x12/hk.png) | Hong Kong |
| iperf3 -c  iperf.scbd.net.id -p 5200-5209 | -R | 1 | ID \| ![id](https://flagcdn.com/16x12/id.png) | Curug |
| iperf3 -c 103.185.255.183 -p 5201-5230 | -R,-u |  | ID \| ![id](https://flagcdn.com/16x12/id.png) | Jakarta |
| iperf3 -c speedtest.myrepublic.net.id -p 9200-9240 | -R,-u |  | ID \| ![id](https://flagcdn.com/16x12/id.png) | Jakarta |
| iperf3 -c speed.netfiber.net.il | -R,-u | 1 | IL \| ![il](https://flagcdn.com/16x12/il.png) | Jerusalem |
| iperf3 -c speed.rimon.net.il | -R | 1 | IL \| ![il](https://flagcdn.com/16x12/il.png) | Jerusalem |
| iperf3 -c 169.150.202.193 | -R,-u | 2x10 | IL \| ![il](https://flagcdn.com/16x12/il.png) | Tel Aviv |
| iperf3 -c 49.205.75.2 -p 5001-5020 | -R,-u |  | IN \| ![in](https://flagcdn.com/16x12/in.png) | Bengaluru |
| iperf3 -c 89.187.160.1 | -R,-u | 2x10 | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Tokyo |
| iperf3 -c speedtest.tyo11.jp.leaseweb.net -p 5201-5210 | -R,-6 | 10 | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Tokyo |
| iperf3 -c iperf.myren.net.my -p 5201-5210 | -R,-u |  | MY \| ![my](https://flagcdn.com/16x12/my.png) | Kuala Lumpur |
| iperf3 -c 89.187.162.1 | -R,-u | 2x10 | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c sgp.proof.ovh.net -p 5204-5209 | -R,-6,-u | 1 | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c speedtest.sin1.sg.leaseweb.net -p 5201-5210 | -R,-6 | 10 | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c speedtest.singnet.com.sg -p 5201-5210 | -R |  | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c 156.146.52.1 | -R,-u | 2x10 | TR \| ![tr](https://flagcdn.com/16x12/tr.png) | Istanbul |
| iperf3 -c speedtest.uztelecom.uz -p 5200-5209 | -R,-6,-u | 10 | UZ \| ![uz](https://flagcdn.com/16x12/uz.png) | Tashkent |


### EUROPE 🇪🇺
> **Servers ordered by proximity to the Netherlands 🇳🇱 - Closest first for optimal performance**

#### 🇳🇱 NETHERLANDS (Local Servers - Best Performance)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** | **PROVIDER** |
|:------------|:-----------:|:--------:|:-----------:|:---------|:-------------|
| iperf3 -c 185.102.218.1 | -R,-u | 2x10 | ~1ms | Amsterdam | DATAPACKET |
| iperf3 -c a204.speedtest.wobcom.de | -R,-6 | 2x25 | ~1ms | Amsterdam | WOBCOM |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | ~1ms | Amsterdam | Clouvider |
| iperf3 -c iperf-ams-nl.eranium.net -p 5201-5210 | -R,-6,-u | 100 | ~1ms | Amsterdam | Eranium |
| iperf3 -c lg.ams-nl.terrahost.com -p 9206-9240 | -R,-6,-u |  | ~1ms | Amsterdam | TerraHost |
| iperf3 -c ping-ams1.online.net -p 5200-5209 | -R,-u | 10 | ~1ms | Amsterdam | Scaleway |
| iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5201-5210 | -R,-6 | 10 | ~1ms | Amsterdam | LeaseWeb |
| iperf3 -c speedtest.ams1.novogara.net -p 5200-5209 | -R,-6,-u | 20 | ~1ms | Amsterdam | Novogara |
| iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5201-5210 | -R,-6 | 10 | ~1ms | Amsterdam | LeaseWeb |
| iperf3 -c speedtest.nl3.mirhosting.net -p 5201-5210 | -R,-6,-u | 40 | ~1ms | Amsterdam | Mirhosting |
| iperf3 -c iperf.worldstream.nl | -R,-6 | 10 | ~2ms | Naaldwijk | Worldstream |

#### 🇧🇪 BELGIUM (Very Close - ~5-10ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 207.211.214.65 | -R,-u | 2x10 | ~8ms | Brussels |

#### 🇩🇪 GERMANY (Close - ~10-25ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c a208.speedtest.wobcom.de | -R,-6 | 2x25 | ~15ms | Düsseldorf |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 | -R,-6,-u | 40 | ~20ms | Norderstedt |
| iperf3 -c speedtest.wtnet.de -p 5300-5309 | -R,-6,-u | 40 | ~20ms | Norderstedt |
| iperf3 -c a400.speedtest.wobcom.de | -R,-6 | 2x25 | ~15ms | Wolfsburg |
| iperf3 -c speedtest.wobcom.de | -R,-6 | 2x25 | ~15ms | Wolfsburg |
| iperf3 -c a110.speedtest.wobcom.de | -R,-6 | 2x25 | ~20ms | Berlin |
| iperf3 -c a209.speedtest.wobcom.de | -R,-6 | 2x25 | ~20ms | Berlin |
| iperf3 -c 178.215.228.109 -p 9204-9240 | -R,-u |  | ~15ms | Frankfurt |
| iperf3 -c 185.102.219.93 | -R,-u | 2x10 | ~15ms | Frankfurt |
| iperf3 -c a205.speedtest.wobcom.de | -R,-6 | 2x25 | ~15ms | Frankfurt |
| iperf3 -c a210.speedtest.wobcom.de | -R,-6 | 2x25 | ~15ms | Frankfurt |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | ~15ms | Frankfurt |
| iperf3 -c spd-desrv.hostkey.com -p 5201-5209 | -R | 10 | ~15ms | Frankfurt |
| iperf3 -c speedtest.fra1.de.leaseweb.net -p 5201-5210 | -R,-6 | 10 | ~15ms | Frankfurt |
| iperf3 -c speedtest.ip-projects.de | -R,-6,-u | 10 | ~15ms | Frankfurt |

#### 🇱🇺 LUXEMBOURG (Close - ~15ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c speedtest.lu.buyvm.net | -R,-6,-u |  | ~15ms | Bissen |

#### 🇬🇧 UNITED KINGDOM (Close - ~15-25ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.59.221.51 | -R,-u | 2x10 | ~15ms | London |
| iperf3 -c iperf.as42831.net -p 5300-5400 | -R,-u |  | ~15ms | London |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5208 | -R,-6 | 10 | ~15ms | London |
| iperf3 -c speedtest-mer-a.mythic-beasts.com -p 5201-5205 | -R,-u | 10 | ~15ms | London |
| iperf3 -c speedtest.lon1.uk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | ~15ms | London |
| iperf3 -c speedtest.lon12.uk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | ~15ms | London |
| iperf3 -c speedtest2.lightningfibre.net.uk -p 4000-4007 | -R,-u | 10 | ~15ms | London |

#### 🇩🇰 DENMARK (Close - ~20-30ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 121.127.45.65 | -R | 2x10 | ~25ms | Copenhagen |
| iperf3 -c speed1.fiberby.dk -p 9201-9240 | -R,-6,-u | 25 | ~25ms | Copenhagen |
| iperf3 -c speed2.fiberby.dk -p 9201-9240 | -R,-6,-u | 25 | ~25ms | Copenhagen |
| iperf3 -c speedtest.hiper.dk -p 5201-5205 | -R,-6,-u |  | ~25ms | Copenhagen |

#### 🇫🇷 FRANCE (Moderate - ~20-40ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.93.2.193 | -R,-u | 2x10 | ~20ms | Paris |
| iperf3 -c iperf.online.net -p 5200-5209 | -R,-6,-u | 100 | ~20ms | Paris |
| iperf3 -c iperf3.moji.fr -p 5200-5240 | -R,-6 | 100 | ~20ms | Paris |
| iperf3 -c ping-90ms.online.net -p 5200-5209 | -R,-6 | 100 | ~20ms | Paris |
| iperf3 -c ping6-90ms.online.net -p 5200-5209 | -R,-6 | 100 | ~20ms | Paris |
| iperf3 -c ping6.online.net -p 5200-5209 | -R,-6,-u | 100 | ~20ms | Paris |
| iperf3 -c ping.online.net -p 5200-5209 | -R,-6,-u | 100 | ~35ms | Vitry-sur-Seine |
| iperf3 -c scaleway.testdebit.info -p 9200-9240 | -R,-6 | 10 | ~35ms | Vitry-sur-Seine |
| iperf3 -c sbg.proof.ovh.net -p 5201-5210 | -R,-6,-u | 10 | ~25ms | Strasbourg |
| iperf3 -c 138.199.14.66 | -R,-u | 2x10 | ~40ms | Marseille |

#### 🇨🇭 SWITZERLAND (Moderate - ~25-35ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 89.187.165.1 | -R,-u | 2x10 | ~25ms | Zürich |
| iperf3 -c speedtest.iway.ch | -R,-6,-u | 10 | ~25ms | Zürich |
| iperf3 -c speedtest.init7.net | -R,-6,-u | 20 | ~30ms | Winterthur |
| iperf3 -c speedtest.shinternet.ch -p 5200-5209 | -R,-6,-u | 10 | ~35ms | Schaffhausen |

#### 🇳🇴 NORWAY (Moderate - ~30-40ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c lg.gigahost.no -p 9201-9240 | -R,-6,-u | 100 | ~35ms | Sandefjord |
| iperf3 -c lg.terrahost.com -p 9200-9240 | -R,-6,-u | 10 | ~35ms | Sandefjord |
| iperf3 -c speedtest3.itsjefen.no -p 5201-5204 | -R,-6,-u |  | ~45ms | Trondheim |

#### 🇮🇪 IRELAND (Moderate - ~30-40ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 87.249.137.8 | -R,-u | 2x10 | ~35ms | Dublin |

#### 🇦🇹 AUSTRIA (Moderate - ~35-45ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.180.12.40 | -R,-u | 2x10 | ~40ms | Vienna |
| iperf3 -c lg.vie.alwyzon.net -p 5202-5203 | -R |  | ~40ms | Vienna |

#### 🇸🇪 SWEDEN (Moderate - ~40-50ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c speedtest.kamel.network -p 5201-5205 | -R,-6 | 1 | ~45ms | Kista |
| iperf3 -c 185.76.9.135 | -R,-u | 2x10 | ~45ms | Stockholm |
| iperf3 -c speedtest.cityhost.se -p 5201-5206 | -R,-6,-u | 100 | ~45ms | Stockholm |
| iperf3 -c speedtest.keff.org -p 9201-9240 | -R,-u |  | ~45ms | Stockholm |
| iperf3 -c speedtest.ownit.se | -R,-u | 1 | ~45ms | Stockholm |

#### 🇵🇱 POLAND (Moderate - ~40-60ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.246.208.67 | -R,-u | 2x10 | ~50ms | Warsaw |
| iperf3 -c speed0.intelly.pl -p 5206-5207 | -R,-u | 1 | ~55ms | Olsztyn |

#### 🇨🇿 CZECH REPUBLIC (Moderate - ~45-55ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.152.65.113 | -R,-u | 2x10 | ~45ms | Prague |
| iperf3 -c 85.163.71.241 | -R,-u |  | ~50ms | Hrdlořezy |
| iperf3 -c rychlost.poda.cz -p 5201-5209 | -R |  | ~55ms | Mikulov |

#### 🇸🇰 SLOVAKIA (Moderate - ~50-60ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 156.146.40.65 | -R,-u | 2x10 | ~55ms | Bratislava |

#### 🇮🇹 ITALY (Far - ~50-70ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 84.17.59.129 | -R,-u | 2x10 | ~55ms | Milan |
| iperf3 -c speed.itgate.net -p 5201-5209 | -R,-6 |  | ~60ms | Gerbido |
| iperf3 -c 217.61.40.96 | -R |  | ~65ms | Ponte San Pietro |
| iperf3 -c it1.speedtest.aruba.it | -R,-u |  | ~65ms | Arezzo |

#### 🇵🇹 PORTUGAL (Far - ~60-80ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 109.61.94.65 | -R,-u | 2x10 | ~65ms | Lisbon |
| iperf3 -c lisboa.speedtest.net.zon.pt -p 5201-5209 | -R,-6,-u | 10 | ~65ms | Lisbon |
| iperf3 -c porto.speedtest.net.zon.pt -p 5201-5209 | -R,-6,-u | 10 | ~70ms | Porto |
| iperf3 -c  speedtest.cloudity.net -p 5201-5205 | -R,-6,-u | 10 | ~75ms | Viana do Castelo |

#### 🇪🇸 SPAIN (Far - ~70-90ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.93.3.50 -p 5201 | -R,-u | 2x10 | ~75ms | Madrid |

#### 🇫🇮 FINLAND (Far - ~80-100ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c spd-fisrv.hostkey.com -p 5201-5209 | -R | 10 | ~85ms | Helsinki |

#### 🇮🇸 ICELAND (Far - ~100-120ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c spd-icsrv.hostkey.com -p 5201 | -R,-6 | 10 | ~110ms | Reykjavik |

#### 🇷🇴 ROMANIA (Far - ~80-100ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.102.217.170 | -R,-u | 2x10 | ~85ms | Bucharest |

#### 🇷🇸 SERBIA (Far - ~90-110ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c speedtest1.sox.rs -p 9201-9240 | -R,-6,-u | 10 | ~95ms | Belgrade |

#### 🇭🇷 CROATIA (Far - ~90-110ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 169.150.242.129 | -R,-u | 2x10 | ~95ms | Zagreb |

#### 🇬🇷 GREECE (Far - ~100-120ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 169.150.252.2 | -R,-u | 2x10 | ~110ms | Athens |

#### 🇧🇬 BULGARIA (Far - ~100-120ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 37.19.203.1 | -R,-u | 2x10 | ~110ms | Sofia |

#### 🇺🇦 UKRAINE (Very Far - ~120+ms)
| **COMMAND** | **OPTIONS** | **GB/S** | **LATENCY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 37.19.218.65 | -R,-u | 2x10 | ~125ms | Kyiv |
| iperf3 -c iperf.volia.net -p 5201 | -R |  | ~130ms |  |


### LATIN AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c st1.zamix.com.br -p 3000-3009  | -R,-u | 1 | BR \| ![br](https://flagcdn.com/16x12/br.png) | Barra Mansa |
| iperf3 -c 138.199.4.1 | -R,-u | 2x10 | BR \| ![br](https://flagcdn.com/16x12/br.png) | São Paulo |
| iperf3 -c speedtest.sao1.edgoo.net -p 9206-9240 | -R,-6,-u |  | BR \| ![br](https://flagcdn.com/16x12/br.png) | São Paulo |
| iperf3 -c 79.127.209.1 | -R,-u | 2x10 | CL \| ![cl](https://flagcdn.com/16x12/cl.png) | Santiago |
| iperf3 -c 152.204.128.194 -p 55200-55300 | -R,-u | 10 | CO \| ![co](https://flagcdn.com/16x12/co.png) | Bogotá |
| iperf3 -c 169.150.228.129 | -R,-u | 2x10 | CO \| ![co](https://flagcdn.com/16x12/co.png) | Bogotá |
| iperf3 -c 170.254.229.178 -p 5201-5209 | -R,-u |  | CO \| ![co](https://flagcdn.com/16x12/co.png) | Cartago |
| iperf3 -c 156.146.53.53 | -R,-u | 2x10 | CR \| ![cr](https://flagcdn.com/16x12/cr.png) | San Jose |
| iperf3 -c speedtest.telecablecr.com -p 9201-9240 | -R,-u | 1 | CR \| ![cr](https://flagcdn.com/16x12/cr.png) | San José |
| iperf3 -c speedtest.masnet.ec -p 5201-5209 | -R,-6 | 1 | EC \| ![ec](https://flagcdn.com/16x12/ec.png) | Santa Ana |
| iperf3 -c speedtest1.flowjamaica.com -p 5505-5520 | -R,-u | 1 | JM \| ![jm](https://flagcdn.com/16x12/jm.png) | Portmore |
| iperf3 -c 121.127.43.65 | -R,-u | 2x10 | MX \| ![mx](https://flagcdn.com/16x12/mx.png) | Querétaro |
| iperf3 -c speedtest1.cwpanama.net -p 5505-5510 | -R,-u | 1 | PA \| ![pa](https://flagcdn.com/16x12/pa.png) | Colón |
| iperf3 -c speedtest6.cwpanama.net -p 5505-5510 | -R,-u | 1 | PA \| ![pa](https://flagcdn.com/16x12/pa.png) | Panamá |


### NORTH AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c bhs.proof.ovh.ca -p 5201-5210 | -R,-6,-u | 10 | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Beauharnois |
| iperf3 -c speedtest.mtl2.ca.leaseweb.net -p 5201-5210 | -R,-6 | 10 | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Montreal |
| iperf3 -c as21723.goco.ca -p 9200-9240 | -R,-u |  | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Montréal |
| iperf3 -c 138.199.57.129 | -R,-u | 2x10 | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Toronto |
| iperf3 -c speedtest.novuscom.net -p 5201-5210 | -R,-u | 10 | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Vancouver |
| iperf3 -c 37.19.206.20 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Ashburn |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Ashburn |
| iperf3 -c 185.152.66.67 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Atlanta |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Atlanta |
| iperf3 -c 109.61.86.65 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Boston |
| iperf3 -c speedtest15.suddenlink.net | -R,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Charleston |
| iperf3 -c 185.93.1.65 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Chicago |
| iperf3 -c speedtest.chi11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Chicago |
| iperf3 -c 89.187.164.1 | -R | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209 | -R,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c speedtest.dal13.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c 37.19.216.1 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Houston |
| iperf3 -c 185.152.67.2 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209 | -R,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c speedtest.lax12.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c 195.181.162.195 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Miami |
| iperf3 -c speedtest.mia11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Miami |
| iperf3 -c 185.59.223.8 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York |
| iperf3 -c spd-uswb.hostkey.com -p 5201-5209 | -R | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York |
| iperf3 -c nyc.speedtest.clouvider.net -p 5201-5209 | -R,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York City |
| iperf3 -c speedtest.nyc1.us.leaseweb.net -p 5201-5210 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York City |
| iperf3 -c speedtest.phx1.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Phoenix |
| iperf3 -c speedtest.sfo12.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | San Francisco |
| iperf3 -c 84.17.41.11 | -R | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Seattle |
| iperf3 -c speedtest.sea11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Seattle |
| iperf3 -c speedtest.is.cc -p 5201-5210 | -R,-6,-u | 40 | US \| ![us](https://flagcdn.com/16x12/us.png) | Secaucus |
| iperf3 -c speedtest.wdc2.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Washington |


### OCEANIA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c speedtest2.comvergence.com.au -p 5200-5209 | -R,-u | 1 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Melbourne |
| iperf3 -c 143.244.63.144 | -R,-u | 2x10 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c speedtest.syd12.au.leaseweb.net -p 5201-5210 | -R,-6 | 10 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c syd.proof.ovh.net -p 5207-5210 | -R,-6,-u | 1 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c akl.linetest.nz -p 5300-5309 | -R | 10 | NZ \| ![nz](https://flagcdn.com/16x12/nz.png) | Auckland |
| iperf3 -c chch.linetest.nz -p 5300-5309 | -R | 10 | NZ \| ![nz](https://flagcdn.com/16x12/nz.png) | Christchurch |
| iperf3 -c 154.81.51.4  | -R,-u | 2x10 | PG \| ![pg](https://flagcdn.com/16x12/pg.png) | Port Moresby |

## Export

| CONTINENT (NocoDB)                                           | .CSV                                                         | .XLSX                                                        | .JSON                                                        |
| :----------------------------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- | ------------------------------------------------------------ |
| [AFRICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/f4fd0f64-7dff-4416-8e3b-315b837b67d4) | [AFRICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/f4fd0f64-7dff-4416-8e3b-315b837b67d4/rows/export/csv) | [AFRICA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/f4fd0f64-7dff-4416-8e3b-315b837b67d4/rows/export/excel) |                                                              |
| [ASIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/bce4c994-6598-4b00-b2cd-fc48503ad7ac) | [ASIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bce4c994-6598-4b00-b2cd-fc48503ad7ac/rows/export/csv) | [ASIA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bce4c994-6598-4b00-b2cd-fc48503ad7ac/rows/export/excel) |                                                              |
| [EUROPE](https://db.iperf3serverlist.net/dashboard/#/nc/view/b111407c-43c4-48af-a828-301b698064a3) | [EUROPE-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/b111407c-43c4-48af-a828-301b698064a3/rows/export/csv) | [EUROPE-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/b111407c-43c4-48af-a828-301b698064a3/rows/export/excel) |                                                              |
| [LATIN AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/bf1834c8-7894-43c5-be9e-e909fb998b26) | [LATIN AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bf1834c8-7894-43c5-be9e-e909fb998b26/rows/export/csv) | [LATIN AMERICA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bf1834c8-7894-43c5-be9e-e909fb998b26/rows/export/excel) |                                                              |
| [NORTH AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/956847fb-43b7-4404-b048-440518fbc763) | [NORTH AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/956847fb-43b7-4404-b048-440518fbc763/rows/export/csv) | [NORTH AMERICA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/956847fb-43b7-4404-b048-440518fbc763/rows/export/excel) |                                                              |
| [OCEANIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f) | [OCEANIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f/rows/export/csv) | [OCEANIA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f/rows/export/excel) |                                                              |
| [ALL SERVERS](https://db.iperf3serverlist.net/dashboard/#/nc/view/3ea603e9-af3a-4e86-9db6-62e7edc254e4) | [ALL SERVERS-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3ea603e9-af3a-4e86-9db6-62e7edc254e4/rows/export/csv)<br />[ALL SERVERS](https://export.iperf3serverlist.net/listed_iperf3_servers.csv) (parsed) | [ALL SERVERS-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3ea603e9-af3a-4e86-9db6-62e7edc254e4/rows/export/excel) | [ALL SERVERS](https://export.iperf3serverlist.net/unparsed_iperf3_servers.json) (unparsed)<br />[ALL SERVERS](https://export.iperf3serverlist.net/listed_iperf3_servers.json) (parsed) |

:arrows_counterclockwise: ​**CSV & JSON GENERATOR**: https://export.iperf3serverlist.net

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net

