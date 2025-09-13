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

An alphabetical list of links to AI trust and safety information from governments, corporations, universities, and non-profit institutions, organized by those organizations. Some of the references here were discussed more fully under [Exploring AI Trust and Safety]({{site.baseurl}}/exploring/) .

### ACM Europe Technology Policy Committee

_Comments in Response to European Commission Call for Evidence Survey on “Artificial Intelligence - Implementing Regulation Establishing a Scientific Panel of Independent Experts”_ [PDF](https://www.acm.org/binaries/content/assets/public-policy/acm-europetpc-consultation-2024---general-purpose-ai-code-of-practice.pdf){:target="acm-europe"} was prepared by the ACM Europe Technology Policy Committee (November 15, 2024). It is one of many [ACM Public Policy Products](https://www.acm.org/public-policy/public-policy-statements){:target="acm-ppp"}.

### Adobe

[The AI inflection point](https://www.adobe.com/acrobat/business/reports/sdk/ai-inflection-point.html){:target="adobe"} provides Adobe's recommendations for responsible AI in organizations (published December 2024).

### Alignment Forum

The [Alignment Forum](https://www.alignmentforum.org/){:target="alignment-forum"} brings together researchers to discuss all facets of AI model and system alignment.

### Berryville Institute of Machine Learning

[Berryville Institute of Machine Learning](https://berryvilleiml.com/){:target="biml"} (BIML) is a group of cybersecurity experts exploring the security implications for ML/AI.

[BIML resources](https://berryvilleiml.com/results/){:target="biml-results"} include the following:

* [An Architectural Risk Analysis of Large Language Models (January 24, 2024)](https://berryvilleiml.com/results/BIML-LLM24.pdf){:target="biml"} (PDF - free, requires registration): A comprehensive assessment of risks in LLM-based systems.
* [Interactive Machine Learning Risk Framework](https://berryvilleiml.com/interactive/){:target="biml-imlrf"}: A tool for exploring risks.

### Coalition for Secure AI

The [Coalition for Secure AI](https://www.coalitionforsecureai.org/){:target="cosai"} (CoSAI) is a relatively-new initiative of the [Oasis Open Projects](https://www.oasis-open.org/){:target="oasis"}. CoSAI is an open ecosystem of AI and security experts from industry leading organizations dedicated to sharing best practices for secure AI deployment and collaborating on AI security research and product development. 

Specific work groups are focused on these areas:

* Software supply chain security for AI systems
* Preparing defenders for a changing security landscape
* AI security risk governance
* Secure design patterns for agentic systems

Resources will be published by the work groups as they become available. See, for example, their [CoSAI Principles for Secure-by-Design Agentic Systems](https://www.coalitionforsecureai.org/announcing-the-cosai-principles-for-secure-by-design-agentic-systems/){:target="oasis-agents"}.

### EleutherAI

In [What We Mean by Trust and Safety]({{site.baseurl}}/introduction#what-we-mean-by-trust-and-safety), we discussed the [definition of alignment](https://www.eleuther.ai/alignment){:target="eleuther"} published by [EleutherAI](https://www.eleuther.ai/){:target="eleuther"}.

[lm-evaluation-harness](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-eval"} is their popular, de-facto standard open-source framework for performing evaluations, including, but not limited to safety.

### European Union

The [EU AI Act](https://www.europarl.europa.eu/topics/en/article/20230601STO93804/eu-ai-act-first-regulation-on-artificial-intelligence){:target="eu-act"} is the first act to regulate AI in the EU. It uses a risk-based approach to regulating AI, including a unique approach that specifies different rules for more powerful generative AI models. Like GDPR regulations for data, the EU AI Act is expected to impact AI practices far beyond the EU’s borders.

### Google

[Google](https://google.com){:target="google"} has many resources for trust and safety. Here are some examples:

* [Responsible Generative AI Toolkit](https://ai.google.dev/responsible){:target="google-responsible-ai"}: Google’s developer toolkit for responsible AI.
* [Securing the AI Software Supply Chain](https://research.google/pubs/securing-the-ai-software-supply-chain/){:target="google-ssc"}: How Google secures the assets and resources used to develop and use models, datasets, and applications that use them.

### Hugging Face

The [evaluate](https://huggingface.co/docs/evaluate/index){:target="hf-eval"} framework from [Hugging Face](https://huggingface.co/){:target="hf"} is another popular tool for executing evaluations.

### IBM

[IBM](https://ibm.com){:target="ibm"} offers many resources for AI trust and safety:

* [Responsible AI](https://www.ibm.com/topics/responsible-ai){:target="ibm-responsible-ai"}: IBM’s description of responsible AI, as informed by IBM product offerings and services. In particular, see the [Responsible Use Guide](https://www.ibm.com/granite/docs/resources/responsible-use-guide.pdf){:target="rug"} (PDF)
* [What is retrieval-augmented generation?](https://research.ibm.com/blog/retrieval-augmented-generation-RAG){:target="ibm-rag"}: One of many introductions to the popular [RAG Pattern]({{site.glossaryurl}}/#retrieval-augmented-generation).
* [Granite Guardian](https://www.ibm.com/granite/docs/models/guardian/){:target="ibm-gg"}: IBM models that provide a robust suite of safeguards designed to detect risks in both prompts and responses, ensuring safe and responsible use with any large language model while promoting responsible AI development.
* [Unitxt](https://github.com/IBM/unitxt){:target="unitxt"}: A library for portable Evaluation definitions. Integrated with many safety projects and tools, including [lm-evaluation-harness](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-eval"} (discussed [above](#eleutherai)).
* [Risk Atlas Nexus](https://huggingface.co/spaces/ibm/risk-atlas-nexus){:target="ran"}: Aimed a relatively-novice users of trust and safety tools, it provides a query prompt to search for risk categories that are most relevant to the user's needs. The user can then browse for more details on each category. It is hosted on the [IBM Hugging Face Community](https://huggingface.co/ibm){:target="ibm-hf"}.
* [BlueBench Leaderboard](https://huggingface.co/spaces/ibm-research/bluebench){:target="bluebench-leaderboard"}: An easy-to-use suite of benchmarks for different domains. It is hosted on the [IBM Research Hugging Face Community](https://huggingface.co/ibm-research){:target="ibmr-hf"}.
* [Safety BAT Leaderboard](https://huggingface.co/spaces/aialliance/safetybat){:target="bat-leaderboard"}: A benchmark that uses [BenchBench](https://github.com/IBM/benchbench){:target="ibm-bb"} to rate benchmarks according to their agreement with a defined _Aggregate Benchmark_, an enhanced representation of many benchmarks that are available. Since benchmarks can be expensive to run yourself, it is useful for selecting a representative set of benchmarks that cover the areas of concern, but don't overlap with each other too much. It is hosted on the [AI Alliance Hugging Face Community](https://huggingface.co/aialliance){:target="aia-hf"}
* [Kepler](https://github.com/sustainable-computing-io/kepler){:target="kepler"}: Sustainability benchmarks, e.g., for estimating carbon consumption. An example of an Evaluation that isn’t focused on safety. 

### Infosys Responsible AI Toolkit

The [Responsible AI Toolkit](https://github.com/Infosys/Infosys-Responsible-AI-Toolkit){:target="infosys"} from [Infosys](http://infosys.com){:target="infosys"} incorporates features including safety, security, explainability, fairness, bias and hallucination detection to ensure AI solutions are trustworthy and transparent. 

### International AI Safety Report 2025

The [International AI Safety Report 2025](https://www.gov.uk/government/publications/international-ai-safety-report-2025){:target="iaisr-2025"} is a report on the state of advanced AI capabilities and risks. Written by 100 AI experts including representatives nominated by 33 countries and intergovernmental organizations, it is the latest annual update to this report that has been published for several years. The 2025 report was published January 29, 2025, just before the [Artificial Intelligence Action Summit](https://www.elysee.fr/en/sommet-pour-l-action-sur-l-ia){:target="aias"}, February 10 and 11, 2025, in Paris.

### Meta

The [Responsible Use Guide](https://llama.meta.com/responsible-use-guide/){:target="meta-responsible-ug"} from [Meta](https://meta.com){:target="meta"} is their comprehensive guide for responsible use of AI in applications.

[Meta Trust and Safety](https://llama.meta.com/trust-and-safety/){:target="meta-ts"} is their set of tools for ensuring trust and safety, reflecting the best practices in [Meta’s Responsible Use Guide](https://llama.meta.com/responsible-use-guide/){:target="meta-responsible-ug"}. Released in conjunction with the [Meta Llama 3](https://ai.meta.com/blog/meta-llama-3/){:target="llama"} family of open models.

[Open Source AI Can Help America Lead in AI and Strengthen Global Security](https://about.fb.com/news/2024/11/open-source-ai-america-global-security/){:target="meta-security"} is a recent statement from Meta on allowing US government agencies working on national security to use Llama models, and the importance of open models for security and retaining US leadership.

### Mitre

[MITRE Enterprise ATT&CK ontology](https://attack.mitre.org/){:target="mitre-eao"} is a globally-accessible knowledge base of adversary tactics and techniques based on real-world observations.

[Common Weakness Enumeration](https://cwe.mitre.org/){:target="mitre"} is the industry-standard database of known vulnerabilities of all kinds, not just AI-related vulnerabilities.

### MLCommons

[MLCommons AI Safety](https://mlcommons.org/ai-safety/){:target="mlc-ais"} is the work group at [ML Commons](https://mlcommons.org/){:target="mlc"} that defined an influential taxonomy of harms and benchmarks that we discussed [here]({{site.baseurl}}/exploring/mlcommons-taxonomy-hazards).

### Mozilla Foundation

[Accelerating Progress Toward Trustworthy AI](https://foundation.mozilla.org/en/research/library/accelerating-progress-toward-trustworthy-ai/whitepaper/){:target="mozilla-tai"} is the [Mozilla Foundation’s]((https://foundation.mozilla.org){:target="mozilla-tai"} guide to AI trust and safety. It makes the argument that open innovation for AI is the best way to ensure safety and wide accessibility.

### Organization for Economic Co-operation and Development (OECD)

The [OECD](https://www.oecd.org/){:target="oecd"} has published many resources on AI, including the following:

* [Resources on Artificial Intelligence](https://www.oecd.org/digital/artificial-intelligence/){:target="oecd1"}
* [Catalogue of Tools & Metrics for Trustworthy AI](
https://oecd.ai/en/catalogue/tools){:target="oecd2"}

### Pacific Northwest Laboratory

The laboratory's [Interactive OODA Processes for Operational Joint Human-Machine Decision Making](https://www.sto.nato.int/publications/STO%20Meeting%20Proceedings/STO-MP-IST-160/MP-IST-160-PP-3P.pdf){:target="nato-pnw"}, by Blaha and Leslie, explores machine vs. human approaches to OODA (Observe, Orient, Decide, Act)

### ServiceNow

[Responsible AI Guidelines: A Practical Handbook for Human-Centered AI](https://www.servicenow.com/standard/other-documents/responsible-ai-guidelines.html){:target="servicenow-responsible-ai"} is [ServiceNow’s](https://www.servicenow.com/){:target="servicenow"} guide to responsible AI, reflecting their experiences building and providing AI technologies.

### Stanford University

Several important projects are ongoing at [Stanford University](https://crfm.stanford.edu/){:target="stanford"}.

#### Center for Research on Foundation Models (CRFM)

The [Holistic Evaluation of Language Models (HELM)](https://crfm.stanford.edu/helm/){:target="helm"} project is an early and influential platform and tool set for general evaluation of AI models and systems, including work targeting domains like healthcare.

Recently, HELM released [**AIR-Bench 2024**](https://crfm.stanford.edu/helm/air-bench/latest/){:target="airbench"}. From their website:

{: .attention}
> We introduce **AIR-Bench 2024**, the first AI safety benchmark aligned with emerging government regulations and company policies, following the regulation-based safety categories grounded in our AI Risks study, AIR 2024. AIR 2024 decomposes 8 government regulations and 16 company policies into a four-tiered safety taxonomy with 314 granular risk categories in the lowest tier. **AIR-Bench 2024** contains 5,694 diverse prompts spanning these categories, with manual curation and human auditing to ensure quality. We evaluate leading language models on **AIR-Bench 2024**, uncovering insights into their alignment with specified safety concerns. By bridging the gap between public benchmarks and practical AI risks, **AIR-Bench 2024** provides a foundation for assessing model safety across jurisdictions, fostering the development of safer and more responsible AI systems.

#### Human-centered Artificial Intelligence (HAI)

[Artificial Intelligence Index, The AI Index Report 2024: Measuring trends in AI](https://aiindex.stanford.edu/report/){:target="hai"} describes a wide range of trends in AI. In particular, it discusses how there are no current standards for responsible AI. All model and systems builders use different evaluations. Note that [MLCommons](#mlcommons) is one organization that is attempting to fix this problem.

### United States Government, Department of Commerce, National Institute of Standards and Technology (NIST)

[Adversarial Machine Learning: A Taxonomy and Terminology of Attacks and Mitigations](https://csrc.nist.gov/pubs/ai/100/2/e2025/final){:target="nist-aml"} offers a taxonomy and general guidance on the unique security challenges of [AI Systems]({{site.glossaryurl}}/#ai-systems).

We discussed the NIST guidance [Artificial Intelligence Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework){:target="nist-rmf"} (AI RMF 1.0) [here]({{site.baseurl}}/exploring/nist-risk-framework). It is their recommendations for assessing and managing AI Risk.

This following were published during the Biden administration, but they have largely been superseded by the current administration:

[NIST’s Responsibilities Under the October 30, 2023 Executive Order](https://www.nist.gov/artificial-intelligence/executive-order-safe-secure-and-trustworthy-artificial-intelligence){:target="nist-exec-order"}. 

NIST’s clarification of its roles and responsibilities under the executive order (next reference), including a Request for Information (RFI) to which [the AI Alliance responded](https://thealliance.ai/files/AI_Alliance_NTIA_Response.pdf){:target="ai-alliance-nist-reponse"}.

### United States Government, Executive Branch

[Executive Order on the Safe, Secure, and Trustworthy Development and Use of Artificial Intelligence](https://www.whitehouse.gov/briefing-room/presidential-actions/2023/10/30/executive-order-on-the-safe-secure-and-trustworthy-development-and-use-of-artificial-intelligence/){:target="wh-exec-order"} was the Biden administration's view on AI safety, superseded by the current administration.

### United States Government, Department of State, Bureau of Arms Control, Deterrence, and Stability

[Political Declaration on Responsible Military Use of Artificial Intelligence and Autonomy](https://www.state.gov/political-declaration-on-responsible-military-use-of-artificial-intelligence-and-autonomy-2/){:target="state-responsible-use"} was a State Department &ldquo;one-page&rdquo; statement of responsible use of AI by governments, including by military forces.

### University of California, Berkeley

[AI Risk-Management Standards Profile for General-Purpose AI Systems (GPAIS) and Foundation Models](https://cltc.berkeley.edu/seeking-input-and-feedback-ai-risk-management-standards-profile-for-increasingly-multi-purpose-or-general-purpose-ai/){:target="ucb-airm"} offers guidance on risk assessment and management.

[Chatbot Arena](https://openlm.ai/chatbot-arena/){:target="chatbot-arena"} is a very popular, crowd-sourced platform for gauging the performance of [ChatBots]({{site.glossaryurl}}/chatbot). See also the related [LMArena](https://huggingface.co/spaces/lmarena-ai/lmarena-leaderboard){:target="lmarena"} project.

### University of Illinois at Chicago (UIUC) Secure Learning Lab

[AI Secure, Decoding Trust](https://decodingtrust.github.io/){:target="decodingtrust"} is a comprehensive assessment of trustworthiness in GPT models.

### University of Notre Dame, et al.

[Trusted AI (TAI) Frameworks Project](https://la3d.github.io/nuggets/posts/frameworks-reflection/){:target="taif"} is a consortium of universities and United States Department of Defense (DoD) agencies researching the requirements for trustworthy AI, which we discussed [here]({{site.baseurl}}/exploring/tai-frameworks). 

## Other Resources

### AI Leaderboards Are No Longer Useful

[AI Leaderboards Are No Longer Useful](https://www.aisnakeoil.com/p/ai-leaderboards-are-no-longer-useful){:target="ai-snakeoil-useful"} is an informative and influential blog post about the difficulties of relying on leaderboards to choose the best performing models or systems, because they often ignore total cost, rely on benchmarks that have limited scope, and other challenges.

### ClairBot from the Responsible AI Team at Ekimetrics

[ClairBot](https://clair.bot/){:target="clairbot"} from the Responsible AI Team at [Ekimetrics](https://ekimetrics.com/){:target="ekimetrics"} is a research project that compares several model responses for domain-specific questions, where each of the models has been tuned for a particular domain, in this case ad serving, laws and regulations, and social sciencies and ethics.

### Foundational Challenges in Assuring Alignment and Safety of Large Language Models

[Foundational Challenges in Assuring Alignment and Safety of Large Language Models](https://llm-safety-challenges.github.io/){:target="llm-safety-challenges"} is a comprehensive survey of current challenges for LLMs.

### OODA loop

[OODA loop](https://en.wikipedia.org/wiki/OODA_loop){:target="ooda"} is a _loop_ of steps that should be constantly performed, consisting of these steps: Observe, Orient, Decide, Act. It was originally developed by [United States Air Force Colonel John Boyd](https://en.wikipedia.org/wiki/John_Boyd_(military_strategist)){:target="john-boyd"} for combat operations, it has been applied in other areas, like industrial applications, project assessment, etc.

### Prompt Engineering

The [Wikipedia](https://en.wikipedia.org/wiki/){:target="wikipedia"} page on [prompt engineering](https://en.wikipedia.org/wiki/Prompt_engineering){:target="wikipedia-prompt"} provides one of many overviews of techniques used to manipulate [Prompts]({{site.glossaryurl}}/#prompt) in order to achieve responses that are  more desirable, when used by _good_ actors, or less desirable, when used by _bad_ actors to undermine an AI system.

### Your AI Product Needs Evals

[Your AI Product Needs Evals](https://hamel.dev/blog/posts/evals/){:target="hamel-evals"} is an engineer’s guide to various techniques for ensuring alignment of AI system.
