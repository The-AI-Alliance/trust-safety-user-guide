---
layout: default
title: References
nav_order: 70
has_children: false
---

# References

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Trust and Safety Frameworks, Principles and Tools

Links to AI trust and safety information from governments, corporations, universities, and non-profit institutions, organized by those organizations. Many of the references here were discussed in the text.

### UIUC Secure Learning Lab

[AI Secure, Decoding Trust](https://decodingtrust.github.io/){:target="decodingtrust"}

A Comprehensive Assessment of Trustworthiness in GPT Models.

### Alignment Forum

[https://www.alignmentforum.org/](https://www.alignmentforum.org/){:target="alignment-forum"}

A forum for researchers to discuss all facets of AI model and system alignment.

### Berryville Institute of Machine Learning

[An Architectural Risk Analysis of Large Language Models](https://berryvilleiml.com/results/){:target="biml"}

A comprehensive assessment of risks in LLM-based systems.

### EleutherAI

[Their definition of alignment](https://www.eleuther.ai/alignment){:target="eleuther"}

Discussed in [What We Mean by Trust and Safety]({{site.baseurl}}/introduction#what-we-mean-by-trust-and-safety).

[lm-evaluation-harness](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-eval"}

A popular open-source framework for performing evaluations, including for safety.

### European Union

[EU AI Act](https://www.europarl.europa.eu/topics/en/article/20230601STO93804/eu-ai-act-first-regulation-on-artificial-intelligence){:target="eu-act"}

The first act to regulate AI in the EU. It uses a risk-based approach to regulating AI, including a unique approach that specifies different rules for more powerful generative AI models. Like GDPR regulations for data, the EU AI Act is expected to impact AI practices far beyond the EU’s borders.
### Google

[Responsible Generative AI Toolkit](https://ai.google.dev/responsible){:target="google-responsible-ai"}

Google’s developer toolkit for responsible AI.

[Securing the AI Software Supply Chain](https://research.google/pubs/securing-the-ai-software-supply-chain/){:target="google-ssc"}

How Google secures the assets and resources used to develop and use models, datasets, and applications that use them.

### Hugging Face

[evaluate](https://huggingface.co/docs/evaluate/index){:target="hf-eval"}

Another popular evaluation framework.

### IBM

[Unitxt](https://github.com/IBM/unitxt){:target="unitxt"}

A library for portable evaluator definitions. Integrated with many safety projects and tools, including [lm-evaluation-harness](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-eval"}.

[Responsible AI](https://www.ibm.com/topics/responsible-ai){:target="ibm-responsible-ai"}

IBM’s description of responsible AI, as informed by IBM product offerings and services. In particular, see the [Responsible Use Guide](https://www.ibm.com/granite/docs/resources/responsible-use-guide.pdf){:target="rug"} (PDF)

[Kepler](https://github.com/sustainable-computing-io/kepler){:target="kepler"}

Sustainability benchmarks, e.g., for estimating carbon consumption. An example of an evaluator that isn’t focused on safety in our definition of the term. 

### MLCommons

[MLCommons AI Safety](https://mlcommons.org/ai-safety/){:target="mlc-ais"}

The work group at ML Commons that defined an influential [Taxonomy of Harms (v0.5)](https://drive.google.com/file/d/1V8KFfk8awaAXc83nZZzDV2bHgPT8jbJY/view){:target="mlc-harms"} as part of its [benchmarks project](https://mlcommons.org/benchmarks/ai-safety/){:target="mlc-benchmarks"}, See also their [Arxiv paper](https://arxiv.org/abs/2404.12241){:target="mlc-paper"}.

### Meta

[Meta’s Responsible Use Guide](https://llama.meta.com/responsible-use-guide/){:target="meta-responsible-ug"}

Meta's comprehensive guide for responsible use of AI in applications.

[Meta Trust and Safety](https://llama.meta.com/trust-and-safety/){:target="meta-ts"}

Meta’s tools for ensuring trust and safety, reflecting the best practices in [Meta’s Responsible Use Guide](https://llama.meta.com/responsible-use-guide/){:target="meta-responsible-ug"}. Released in conjunction with the [Meta Llama 3](https://ai.meta.com/blog/meta-llama-3/){:target="llama"} family of open models.

### Mitre

[MITRE Enterprise ATT&CK ontology](https://attack.mitre.org/){:target="mitre-eao"}

A globally-accessible knowledge base of adversary tactics and techniques based on real-world observations.

[Common Weakness Enumeration](https://cwe.mitre.org/){:target="mitre"}

The industry standard database of known vulnerabilities.

### Mozilla Foundation

[Accelerating Progress Toward Trustworthy AI](https://foundation.mozilla.org/en/research/library/accelerating-progress-toward-trustworthy-ai/whitepaper/){:target="mozilla-tai"}

Mozilla’s approachable guide to AI trust and safety. It makes the argument that open innovation for AI is the best way to ensure safety and wide accessibility.

### Organization for Economic Co-operation and Development (OECD)

[Resources on Artificial Intelligence](https://www.oecd.org/digital/artificial-intelligence/){:target="oecd1"}

[Catalogue of Tools & Metrics for Trustworthy AI](
https://oecd.ai/en/catalogue/tools){:target="oecd2"}

Various useful resources on AI safety and accessibility.

### Pacific Northwest Laboratory

[Interactive OODA Processes for Operational Joint Human- Machine Decision Making](https://www.sto.nato.int/publications/STO%20Meeting%20Proceedings/STO-MP-IST-160/MP-IST-160-PP-3P.pdf){:target="nato-pnw"} by Blaha and Leslie.

Explores machine vs. human approaches to OODA (Observe, Orient, Decide, Act)

### ServiceNow

[Responsible AI Guidelines: A Practical Handbook for Human-Centered AI](https://www.servicenow.com/standard/other-documents/responsible-ai-guidelines.html){:target="servicenow-responsible-ai"}

ServiceNow’s guide to responsible AI, reflecting their experiences providing AI technologies.

### Stanford University, Center for Research on Foundation Models (CRFM)

[Holistic Evaluation of Language Models (HELM)](https://crfm.stanford.edu/helm/){:target="helm"}

An influential platform and tools for general evaluation of AI models and systems.

### Stanford University, Human-centered Artificial Intelligence (HAI)

[Artificial Intelligence Index, The AI Index Report 2024: Measuring trends in AI](https://aiindex.stanford.edu/report/){:target="hai"}

Describes a wide range of trends in A. In particular, it discusses how there are no current standards for responsible AI. All model and systems builders use different evaluations.

### United States Government

[Executive Order on the Safe, Secure, and Trustworthy Development and Use of Artificial Intelligence](https://www.whitehouse.gov/briefing-room/presidential-actions/2023/10/30/executive-order-on-the-safe-secure-and-trustworthy-development-and-use-of-artificial-intelligence/){:target="wh-exec-order"}

The current US Government administration’s view on AI safety.

### United States Department of Commerce, National Institute of Standards and Technology (NIST)

[NIST’s Responsibilities Under the October 30, 2023 Executive Order](https://www.nist.gov/artificial-intelligence/executive-order-safe-secure-and-trustworthy-artificial-intelligence){:target="nist-exec-order"}

NIST’s clarification of its roles and responsibilities under the executive order, including a Request for Information (RFI) to which [the AI Alliance responded](https://thealliance.ai/files/AI_Alliance_NTIA_Response.pdf){:target="ai-alliance-nist-reponse"}.

[Artificial Intelligence Risk Management Framework (AI RMF 1.0)](https://www.nist.gov/itl/ai-risk-management-framework){:target="nist-rmf"}

The NIST framework and guidance for assessing and managing AI Risk.

### University of California, Berkeley

[AI Risk-Management Standards Profile for General-Purpose AI Systems (GPAIS) and Foundation Models](https://cltc.berkeley.edu/seeking-input-and-feedback-ai-risk-management-standards-profile-for-increasingly-multi-purpose-or-general-purpose-ai/){:target="ucb-airm"}

Guidance on risk assessment and management.

[Chatbot Arena](https://huggingface.co/spaces/lmsys/chatbot-arena-leaderboard){:target="chatbot-arena"}
A popular, crowd-sourced platform for gauging the performance of chatbots.

### University of Notre Dame, et al.

[Trusted AI (TAI) Frameworks Project](https://la3d.github.io/nuggets/posts/frameworks-reflection/){:target="taif"}

A consortium of universities and United States Department of Defense (DoD) agencies researching the requirements for trustworthy AI. See also the ND Crane GitHub repository.

Liu, Haochen, Yiqi Wang, Wenqi Fan, Xiaorui Liu, Yaxin Li, Shaili Jain, Yunhao Liu, Anil K Jain, and Jiliang Tang, [“Trustworthy AI: A Computational Perspective”](https://dl.acm.org/doi/10.1145/3546872){:target="tai-3546872"}, ACM Trans. Intell. Syst. Technol., June, 2022. 

## Other Resources

### AI Leaderboards Are No Longer Useful

[link](https://www.aisnakeoil.com/p/ai-leaderboards-are-no-longer-useful){:target="ai-snakeoil-useful"}

An informative blog post about the difficulties of relying on leaderboards to choose the best performing models or systems, because they often ignore total cost, rely on benchmarks that have limited scope, and other challenges.

### Foundational Challenges in Assuring Alignment and Safety of Large Language Models

[link](https://llm-safety-challenges.github.io/){:target="llm-safety-challenges"}

A comprehensive survey of current challenges for LLMs.

### OODA loop

[link](https://en.wikipedia.org/wiki/OODA_loop){:target="ooda"}

Constantly performing the loop - Observe, Orient, Decide, Act. Originally developed by [United States Air Force Colonel John Boyd](https://en.wikipedia.org/wiki/John_Boyd_(military_strategist)){:target="john-boyd"} for combat operations, it has been applied in other areas, like industrial applications, project assessment, etc.

### Prompt Engineering

[link](https://en.wikipedia.org/wiki/Prompt_engineering){:target="wikipedia-prompt"}

Wikipedia overview of techniques to manipulate prompts in order to achieve more desirable responses.

### What is retrieval-augmented generation?

[link](https://research.ibm.com/blog/retrieval-augmented-generation-RAG){:target="ibm-rag"}

One of many introductions to the popular RAG pattern for improving alignment, especially with data that is newer than the last training or tuning run for the underlying models.

### Your AI Product Needs Evals

[link](https://hamel.dev/blog/posts/evals/){:target="hamel-evals"}

An engineer’s guide to various techniques for ensuring alignment of your AI system.


