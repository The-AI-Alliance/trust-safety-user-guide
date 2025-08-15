---
layout: default
title: Cybersecurity
nav_order: 60
parent: Exploring AI Trust and Safety
---

## AI Cybersecurity

{: .note}
> **Help Wanted:** This is a new section in this guide and it needs your help to make it more comprehensive and definitive! For example, rather than just list resources, we would also like to provide a useful summary of the most important ideas. [Please join us]({{site.baseurl}}/contributing/#join-us)!

[AI Systems]({{site.baseurl}}/glossary/#ai-system) must support all the standard practices and techniques for conventional [Cybersecurity]({{site.baseurl}}/glossary/#cybersecurity), plus handle new threats.

Here are some resources focused on AI cybersecurity.

### Berryville Institute of Machine Learning

[Berryville Institute of Machine Learning](https://berryvilleiml.com/){:target="biml"} (BIML) is a group of cybersecurity experts exploring the security implications for ML/AI.

[BIML resources](https://berryvilleiml.com/results/){:target="biml-results"} include the following:

* [An Architectural Risk Analysis of Large Language Models (January 24, 2024)](https://berryvilleiml.com/results/BIML-LLM24.pdf){:target="biml"} (PDF - free, requires registration): A comprehensive assessment of risks in LLM-based systems.
* [Interactive Machine Learning Risk Framework](https://berryvilleiml.com/interactive/){:target="biml-imlrf"}: A tool for exploring risks.

### Coalition for Secure AI

The [Coalition for Secure AI](https://www.coalitionforsecureai.org/){:target="cosai"} (CoSAI) is a relatively-new initiative of the [Oasis Open Projects](https://www.oasis-open.org/){:target="oasis"}. CoSAI is an open ecosystem of AI and security experts from industry-leading organizations dedicated to sharing best practices for secure AI deployment and collaborating on AI security research and product development. 

Specific work groups are focused on these areas:

* Software supply chain security for AI systems
* Preparing defenders for a changing security landscape
* AI security risk governance
* Secure design patterns for agentic systems

Resources will be published by the work groups as they become available. See, for example, their [CoSAI Principles for Secure-by-Design Agentic Systems](https://www.coalitionforsecureai.org/announcing-the-cosai-principles-for-secure-by-design-agentic-systems/){:target="oasis-agents"}

## Agent Security

[Agents]({{site.baseurl}}/glossary/#agent) are potentially-complex [AI Systems]({{site.baseurl}}/glossary/#ai-system). Evaluating an individual [LLM]({{site.baseurl}}/glossary/#large-language-model) for trustworthiness is hard enough; an agent introduces potentially more than one LLM, plus other services, that work together to both return results and sometimes invoke actions on behalf of a user. This increases the challenges of satisfying security concerns.

Here are some resources for more information specifically about agent security:

* [OWASP LLM and Gen AI Security Project Initiative for Securing Agentic Applications](https://genai.owasp.org/2024/12/15/announcing-the-owasp-llm-and-gen-ai-security-project-initiative-for-securing-agentic-applications/){:target="owasp"}
* [Top 10 threats and mitigation for AI Agents](https://github.com/precize/Agentic-AI-Top10-Vulnerability){:target="precise"} ([article](https://www.aicloudgovernance.com/guides-best-practices/top-10-agentic-ai-security-risks-key-threats-and-mitigation-strategies){:target="_blank"})
* See also the work of [CoSAI](#cosai) above.
* Others - TODO

---

Now that we have explored different perspectives on trust and safety, the next section provides some guidance on [how to approach trust and safety in your projects]({{site.baseurl}}/safety-recommendations/safety-recommendations).

