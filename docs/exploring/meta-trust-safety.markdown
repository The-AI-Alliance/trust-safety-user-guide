---
layout: default
title: Trust and Safety at Meta
nav_order: 20
parent: Exploring AI Trust and Safety
---

# Trust and Safety at Meta

The [Meta Trust and Safety](https://llama.meta.com/trust-and-safety/){:target="meta-ts"} page introduces their approach to trust and safety. At the same time as the recent release of [Meta Llama 3](https://ai.meta.com/blog/meta-llama-3/){:target="llama3"}, they released _Llama Guard 2_, _Llama Code Shield_, and _Llama CyberSec Eval 2_ open-source tools. These tools are used in the stages of AI product development as shown in Figure 2.

![Responsible AI Product development stages]({{site.baseurl}}/assets/images/Meta-Llama-Responsible-LLM-Product-Development-Stages.jpg){:class="centered"}

<p class="caption">Figure 2: Responsible AI Product development stages and where the Meta Llama tools fit in. (Source: <a href="https://llama.meta.com/trust-and-safety/" target="meta-ts">Meta Trust and Safety</a>)
</p>

Note the importance of mitigating risk at the system level, as well as model level mitigation. The latter is important, but not sufficient.


[Meta Llama CyberSec Eval 2](https://ai.meta.com/research/publications/cyberseceval-2-a-wide-ranging-cybersecurity-evaluation-suite-for-large-language-models/){:target="meta-cybersecurity"} performs model-level evaluations. It addresses the following potential vulnerabilities:

* **Insecure code practices:** For code generation and autocomplete, ensure no known vulnerabilities are inserted, based on the [Common Weakness Enumeration](https://cwe.mitre.org/){:target="mitre"} standard taxonomy, coordinated by Mitre.
* **Cyber attacker helpfulness:** Contains tests that a) measure an LLM's propensity to help carry out cyberattacks as defined in the industry standard [MITRE Enterprise ATT&CK ontology](https://attack.mitre.org/){:target="mitre-eao"} of cyberattack methods and b) measure the false rejection rate of confusingly benign prompts.
* **Code interpreter abuse:** Code interpreters connected to LLMs allow the latter to run code in a sandboxed environment. This evaluation detects attempts to run malicious code.
* **Offensive cybersecurity capabilities:** While simulating program exploitation, can the tool reach a specific point in a test program where a security issue has been intentionally inserted? For example, can the tool execute exploits such as SQL injections and buffer overflows?
* **Susceptibility to prompt injection:** The prompt Injection tests evaluate the ability to recognize which part of an input is untrusted and the level of resilience against common prompt injection techniques.

AI System-level safeguards are provided by Meta Llama Guard 2 and Meta Llama Code Shield. Meta Llama Guard 2 ([model card](https://github.com/meta-llama/PurpleLlama/blob/main/Llama-Guard2/MODEL_CARD.md){:target="llama-guard2"}, [model download](https://llama.meta.com/llama-downloads/){:target="llama-downloads"}) is a model trained to detect objectionable content based on the [taxonomy of hazards](https://drive.google.com/file/d/1V8KFfk8awaAXc83nZZzDV2bHgPT8jbJY/view){:target="tax-hazards"} recently published as part of the [MLCommons AI Safety v0.5 Proof of Concept](https://mlcommons.org/2024/04/mlc-aisafety-v0-5-poc/){:target="mlc-v05"}, which we discuss in more detail below. Meta emphasizes that this model is a starting point rather than a universal solution. Meta Llama Code Shield ([sample workflow](https://github.com/meta-llama/llama-recipes/blob/main/recipes/responsible_ai/CodeShieldUsageDemo.ipynb){:target="llama-csud"}) is a new tool for filtering insecure generated code at inference time. The [Llama Github repo](https://github.com/meta-llama/llama-recipes/tree/main/recipes/responsible_ai){:target="llama-ra-repo"} has an example implementation of these guardrails.

These tools, along with how they fit into the product development process, support the practices in [Meta’s Responsible Use Guide](https://llama.meta.com/responsible-use-guide/){:target="llama-rug"}, which provides guidance for building AI products responsibly at every stage of development and every part of an LLM-powered product. It provides guidance on understanding the context of your specific use case and market, as well as mitigation strategies and resources for addressing risks.

Responsible AI considerations include fairness and inclusion, robustness and safety, privacy and security, transparency and control, as well as mechanisms for governance and accountability. (It’s not surprising that we encountered similar considerations while [discussing NIST’s Risk Management Framework]({{site.baseurl}}/exploring/nist-risk-framework).) LLMs and other AI tools need to be evaluated according to these considerations in the context of how the tools will be used. 

Meta’s own AI-based applications integrate detection and mitigation of risks at the most appropriate intervention points. For example, [they found](https://ai.meta.com/research/publications/llama-2-open-foundation-and-fine-tuned-chat-models/){:target="meta-chat"} during development of Llama 2 that mitigations applied too soon in the development process proved detrimental to performance and safety of the resulting models. They explored appropriate points in the model development life cycle for the most effective application of interventions. In general, developers need to balance various tradeoffs to find the best points in their development processes and application stacks for particular risk mitigations. Holistic analysis is required, too, as mitigations in one place can impact behaviors elsewhere. 

Most of Meta’s Responsible Use Guide discusses the whole software development process for AI applications, designed to maximize safety and alignment of your AI systems for its goals. We return to this subject in [Safety for Your AI Systems]({{site.baseurl}}/safety/safety).

---

The next section explores [Mozilla Foundation's guidance on Trustworthy AI]({{site.baseurl}}/exploring/mozilla-trustworthy-ai).
