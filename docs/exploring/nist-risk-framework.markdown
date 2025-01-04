---
layout: default
title: NIST Artificial Intelligence Risk Management Framework
nav_order: 10
parent: Exploring AI Trust and Safety
---

# NIST Artificial Intelligence Risk Management Framework

The National Institute of Standards and Technology, under the United States Department of Commerce, has published an [Artificial Intelligence Risk Management Framework (AI RMF 1.0)](https://www.nist.gov/itl/ai-risk-management-framework){:target="nist-rmf"}.  The RMF is a good place to start for a comprehensive view of how to quantify risks, understand their manifestations, how to detect them, their impacts, and their management. It emphasizes the need to address AI trustworthiness from the beginning of AI system projects, not just as an &ldquo;afterthought&rdquo; considered near the end of system development.

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

<p class="caption">Figure 1: Functions organize AI risk management activities at their highest level to govern, map, measure, and manage AI risks. (Source: <a href="https://www.nist.gov/itl/ai-risk-management-framework" target="nist-rmf">Artificial Intelligence Risk Management Framework (AI RMF 1.0)</a>)
</p>

These functions are somewhat continuously and iteratively applied over a system’s lifetime. It is reminiscent of the [OODA loop](https://en.wikipedia.org/wiki/OODA_loop){:target="ooda"} - Observe, Orient, Decide, Act - that was developed by United States Air Force Colonel [John Boyd](https://en.wikipedia.org/wiki/John_Boyd_(military_strategist)){:target="john-boyd"} for combat operations, where it is essential to constantly update situational awareness, make effective, well-informed decisions, and act upon them. See also [this Pacific Northwest Laboratory presentation](https://www.sto.nato.int/publications/STO%20Meeting%20Proceedings/STO-MP-IST-160/MP-IST-160-PP-3P.pdf){:target="nato-pnl"}.

NIST is expanding its AI-related efforts. The [Assessing Risks and Impacts of AI](https://ai-challenges.nist.gov/aria){:target="nist-aria"} program was launched in May 2024. From their website:

> The latest in a portfolio of evaluations managed by the NIST Information Technology Laboratory – ARIA will assess models and systems submitted by technology developers from around the world. ARIA is an evaluation environment which is sector and task agnostic.
>
> ARIA will support three evaluation levels: model testing, red-teaming, and field testing. ARIA is unique in that it will move beyond an emphasis on system performance and accuracy and produce measurements on technical and societal robustness.
>
> The program will result in guidelines, tools, methodologies, and metrics that organizations can use for evaluating the safety of their systems as part of their governance and decision-making processes to design, develop, release or use AI technology. ARIA will inform the work of the U.S. AI Safety Institute at NIST.
> -- Source: [Assessing Risks and Impacts of AI](https://ai-challenges.nist.gov/aria){:target="nist-aria"}

The [library page](https://ai-challenges.nist.gov/aria/library){:target="nist-aria-library"} provides a collection of resources.

[NIST AI RMF Profiles](https://airc.nist.gov/AI_RMF_Knowledge_Base/AI_RMF/Core_And_Profiles/6-sec-profile){:target="nist-profile"} are companion resources designed to assist organizations in managing AI risks in specific settings. _Use case_ profiles are targeted implementations of the AI RMF functions to specific use cases or scenarios. _Cross-sectoral_ profiles can be applied across industries and use cases. 

In April 2024 NIST released a draft of the [NIST AI RMF Generative AI Profile](https://airc.nist.gov/docs/NIST.AI.600-1.GenAI-Profile.ipd.pdf){:target="nist-genai"} for public review. The Generative AI (GAI) Profile defines a set of risks considered to be specific to or amplified by GAI. Additionally, an extensive catalog of over 400 mitigation actions is provided. This profile is both an use case profile (i.e., it is concerned specifically with GAI applications) and a cross-sectoral profile (neither industry- nor technology-specific). 

The profile puts forth, describing in detail, the following GenAI risks:
1. CBRN Information
1. Confabulation
1. Dangerous or Violent Recommendations
1. Data Privacy
1. Environmental
1. Human-AI Configuration
1. Information Integrity
1. Information Security
1. Intellectual Property
1. Obscene, Degrading, and/or Abusive Content
1. Toxicity, Bias, and Homogenization
1. Value Chain and Component Integration

The catalog of mitigation actions is grouped by AI RMF function - GOVERN, MAP, MEASURE, MANAGE. Sets of related actions are contained in action tables addressing a single RMF sub-function. Each action has a globally unique action identifier, description, and list of the GenAI risks the action addresses.  The sub-functions are implicitly linked to the [AI Actors](https://airc.nist.gov/AI_RMF_Knowledge_Base/AI_RMF/Appendices/Appendix_A#:~:text=AI%20actors%20in%20this%20category,data%20providers%2C%20system%20funders%2C%20product){:target="nist-actors"} through the base NIST AI RMF document.  For an example of an action table, see [page 50 of the GAI Profile document](https://airc.nist.gov/docs/NIST.AI.600-1.GenAI-Profile.ipd.pdf#page=50){:target="nist-profile"} where the action table for sub-function, "MEASURE 2.10 Privacy risk of the AI system", compromised of mitigation actions for privacy-related risks, is depicted.

By mapping its own risk taxonomy to NIST GAI risks, organizations can leverage the rich mitigation catalog contained in the GAI profile.

For a complementary assessment of risks in AI, see this comprehensive guide to AI security risk analysis from [BIML: An Architectural Risk Analysis of Large Language Models](https://berryvilleiml.com/results/){:target="biml"}.

The next section explores [Trust and Safety at Meta]({{site.baseurl}}/exploring/meta-trust-safety).
