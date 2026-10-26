# Laboratório Prático: Simulação e Análise de Ataque DDoS (SYN Flood) e Mitigação com iptables

Este repositório documenta a realização de um laboratório prático focado em segurança de redes, utilizando o **Containerlab** para simular um cenário de ataque de Negação de Serviço Distribuído (**DDoS - SYN Flood** com *IP Spoofing*), monitorização de tráfego, captura forense e mitigação com firewall.

---

## 🏗️ Topologia e Mapeamento do Ambiente
* **Atacante (WAN):** `clab-lab01-atacante` (Geração de tráfego com IPs de origem falsificados).
* **Firewall (Gateway):** `clab-lab01-firewall` (`172.20.20.3` / `eth0`) responsável pelo encaminhamento e filtragem de pacotes.
* **Cliente / Alvo (LAN):** `clab-lab01-cliente` (Destino final do tráfego simulado).

---

## 📊 Etapas da Prática

### 1. Monitorização do Tráfego em Tempo Real
Para acompanhar o impacto do volume de pacotes na interface de rede do firewall, utilizou-se a ferramenta `watch` em conjunto com o utilitário de link:
```bash
docker exec -it clab-lab01-firewall watch -n 1 "ip -s link"
