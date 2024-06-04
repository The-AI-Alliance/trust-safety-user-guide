---
layout: default
title: NIST Artificial Intelligence Risk Management Framework
nav_order: 10
parent: Exploring AI Trust and Safety
---

# NIST Artificial Intelligence Risk Management Framework

The National Institute of Standards and Technology, under the United States Department of Commerce, has published an [Artificial Intelligence Risk Management Framework (AI RMF 1.0)](https://www.nist.gov/itl/ai-risk-management-framework){:target="nist"}.  The RMF is a good place to start for a comprehensive view of how to quantify risks, understand their manifestations, how to detect them, their impacts, and their management. It emphasizes the need to address AI trustworthiness from the beginning of AI system projects, not just as an &ldquo;afterthought&rdquo; considered near the end of system development.

Detecting a risk requires a clear definition, from which _metrics_ that quantify the risk have to be defined, along with how and where to measure them. Impacts include the concept of _tolerance_; what are the consequences if a risk event occurs and can your organization and customers accept those consequences. Higher consequences mean more effort is required to prevent the corresponding risk events. Understanding consequences helps you prioritize the risks so you can work on those of most importance.

The framework argues that AI systems must have the following characteristics to be considered trustworthy:

* **Valid and reliable:** Are responses factually accurate? Is the AI system consistently able to perform as expected, including the ability to handle reasonable generalizations from its training data? These qualities are prerequisites for what follows.
* **Safe:** Used here in the narrow sense that the AI system doesn’t impose risks to health, life, property, etc.
* **Secure and resilient:** Resilient against cybersecurity threats and unexpected inputs, load, etc.
* **Accountable and transparent:** AI system behaviors are understandable to the user, which supports accountability for behaviors. Transparency answers the question, &ldquo;what happened?&rdquo;
* **Explainable and interpretable:** How the AI system encodes information and responds to inputs is knowable and the responses are meaningful in the context of the system’s purposes. Explainability answers the question &ldquo;how&rdquo; and interpretability answers the question &ldquo;why&rdquo;.
* **Privacy enhanced:** Safeguarding human autonomy, identity, and dignity, limiting observations and disclosures of sensitive information.
* **Fair, with harmful biases managed:** Free of bias, discrimination, etc. (The broad class of concerns that most people think of first when discussing AI fairness.)

To achieve these characteristics, four &ldquo;functions&rdquo; are used. (Use of all capital letters is their convention.) 

* **GOVERN:** Infusing risk management in all aspects of a project’s evolution and culture. This function is supported by the other three functions.
* **MAP:** Understand the contexts of usage and their implications for risks. This exercise helps surface how risks form a complex network of dependencies, where unanticipated and undesirable interactions occur when smaller &ldquo;modules&rdquo; interact.
* **MEASURE:** Determine how to measure risks and perform those measurements.
* **MANAGE:** Respond to and recover from risk incidents. 

The relationship between these functions are shown in Figure 1.

![AI risk management activities]({{site.baseurl}}/assets/images/NIST-govern-map-measure-manage.jpg){:class="centered"}

<p class="caption">Figure 1: Functions organize AI risk management activities at their highest level to govern, map, measure, and manage AI risks. (Source: <a href="https://www.nist.gov/itl/ai-risk-management-framework" target="nist">Artificial Intelligence Risk Management Framework (AI RMF 1.0)</a>)
</p>

These functions are somewhat continuously and iteratively applied over a system’s lifetime. It is reminiscent of the [OODA loop](https://en.wikipedia.org/wiki/OODA_loop){:target="_ooda"} - Observe, Orient, Decide, Act - that was developed by United States Air Force Colonel [John Boyd](https://en.wikipedia.org/wiki/John_Boyd_(military_strategist)){:target="_jb"} for combat operations, where it is essential to constantly update situational awareness, make effective, well-informed decisions, and act upon them. See also [this Pacific Northwest Laboratory presentation](https://www.sto.nato.int/publications/STO%20Meeting%20Proceedings/STO-MP-IST-160/MP-IST-160-PP-3P.pdf){:target="_pnl"}.

For a complementary assessment of risks in AI, see this comprehensive guide to AI security risk analysis from [BIML: An Architectural Risk Analysis of Large Language Models](https://berryvilleiml.com/results/){:target="_biml"}.

The next section explores [Trust and Safety at Meta](/exploring/meta-trust-safety).