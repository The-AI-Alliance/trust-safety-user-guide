---
layout: default
title: Introduction
nav_order: 20
---

# Introduction to Trust and Safety

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

A major challenge for the successful use of AI is the importance of understanding potential trust and safety issues, along with their mitigation strategies. Failure to do this can be painful. For example, we often hear news stories of [ChatBots]({{site.glossaryurl}}/#chatbot){:target="_glossary"} that engage with customers in embarrassing, harmful, and costly ways. Not only can enterprise operations and customer satisfaction be harmed by trust and safety issues, but governmental bodies are starting to regulate AI in large part over these concerns. Hence, applications built with AI must be designed and implemented with AI trust and safety in mind.

The goal of this living guide is to provide useful, up-to-date resources for understanding potential risks and how to mitigate them, so you can exploit the benefits of AI with more confidence. The target audience includes software engineers who need to implement safe and trustworthy AI, product managers who need to articulate requirements for AI systems, and leaders who need a better understanding of the issues. 

## What We Mean by Trust and Safety

{: .attention}
> **Trust** is based in part on **Safety**. A user will avoid a system perceived to be untrustworthy. In the case of AI systems, trust is earned or lost based, in part, on how well the system handles safety concerns such as preventing [Prompts]({{site.glossaryurl}}/#prompt){:target="_glossary"} (queries) and [Responses]({{site.glossaryurl}}/#response){:target="_glossary"}s that show lack of [Fairness]({{site.glossaryurl}}/#fairness){:target="_glossary"} (e.g., bias and exclusion), hate speech, [Hallucination]({{site.glossaryurl}}/#hallucination){:target="_glossary"} (i.e., false statements), advocate unethical behavior, and other undesirable content.

The scope of this user guide is safety and its impact on trust. Safety can be defined to mean many things. We will primarily focus on safety related to _known harms_, such as hate speech, leaking proprietary data, etc. However, most of the concepts we will discuss can encompass broader definitions of safety. 

Other factors outside our definition of safety can also affect trust in the general sense. For example, does the system quickly and efficiently return a useful, properly-formatted response with a minimum of prompting? What is the carbon footprint of our AI system? These concerns are not related to our definition of safety, but they are important criteria for users of AI. The term [Alignment]({{site.glossaryurl}}/#alignment){:target="_glossary"} encompasses this broader set of criteria for system utility (i.e. fitness for the desired purposes) and trustworthiness. [EleutherAI defines alignment this way](https://www.eleuther.ai/alignment){:target="eleuther"}, &ldquo;Ensuring that an artificial intelligence system behaves in a manner that is consistent with human values and goals.&rdquo;

Safety [Evaluations]({{site.glossaryurl}}/#evaluation){:target="_glossary"} in AI systems involve specific tests, such as models that detect hate speech, along with the infrastructure to perform these evaluations. The infrastructure can often be used for evaluations that cover broader concerns, where benchmarks and runtime tests can be defined using similar techniques.

## Safety, Cybersecurity, and the AI Lifecycle

Safety is very much like [Cybersecurity]({{site.glossaryurl}}/#cybersecurity){:target="_glossary"} in that the entire life cycle of AI, gathering and preparing training datasets, creating models, tuning models, and applications need to be safety-aware and safety must be built in from the beginning. **Attempts to “bolt it on” at the end won’t succeed.**

In one sense, cybersecurity is a subset of safety, and we explore AI-specific cybersecurity [here]({{site.baseurl}}/exploring/cybersecurity). AI cybersecurity is a combination of mainstream software cybersecurity that predates AI, such as vulnerability detection, and new vulnerabilities unique to AI, like various [Prompt]({{site.glossaryurl}}/#prompt){:target="_glossary"} attacks. Many of the toolkits and methodologies discussed this guide include cybersecurity in their safety portfolios. A comprehensive guide to AI cybersecurity is [An Architectural Risk Analysis of Large Language Models](https://berryvilleiml.com/results/){:target="biml"} (see also the [references]({{site.baseurl}}/references/#berryville-institute-of-machine-learning)).

Similarly, while safety affects the entire AI life cycle, in this guide we will mostly focus on two points in the life cycle where safety [Evaluation]({{site.glossaryurl}}/#evaluation){:target="_glossary"} can be applied. The first is offline testing, such as testing models for benchmarks. The second is online testing, during inference, where prompts and replies need to be analyzed. However, many of the safety evaluations we will discuss can be performed at any point in the AI life cycle. For example, datasets should be filtered for PII, hate speech, etc. when they are created from “raw” data sources. Also, tests used for benchmarks can be used at inference time, too.

You might notice the emphasis on evaluation, looking for problems with mitigations (like filtering or returning alternative responses), even though we said above that safety needs to be designed into the system, just like designing for general cybersecurity. Unfortunately, design tools and techniques are in their infancy for preventing AI safety violations in the first place. We can’t train models to avoid hate speech completely, even when we filter the training datasets for hateful content. Hence, at this time, designing for AI safety leans heavily on testing and filtering at all stages of the life cycle, including inline during inference. Other design techniques we have include application patterns like [Agents]({{site.glossaryurl}}/#agent){:target="_glossary"}, [engineering user prompts](https://en.wikipedia.org/wiki/Prompt_engineering){:target="wikipedia-prompt-eng"}, and [RAG]({{site.glossaryurl}}/#retrieval-augmented-generation){:target="_glossary"} that promote better alignment. Of course, a similar situation exists for software cybersecurity. There are some preemptive techniques, like analyzing code for known vulnerabilities, but these techniques don’t eliminate the need for vigilant runtime measures.

Next, we will define some terms. Then we will explore the work of several leading organizations on trust and safety. How they define and analyze risks, how they mitigate them, and how systems should be developed with risk in mind. Finally, we will conclude with some suggestions for assessing risk priorities for your applications, followed by a list of references for more information.

## Other AI Alliance Trust and Safety Activities

The AI Alliance has an active [Trust and Safety Work Group](https://thealliance.ai/focus-areas/trust-and-safety){:target="ai-alliance-tswg"} that has other projects that might interest you in addition to this user guide:

* [Trust and Safety Evaluation Initiative](https://the-ai-alliance.github.io/trust-safety-evals/){:target="tsei"}: A broad effort with several projects:
  * [Evaluation Reference Stack](https://the-ai-alliance.github.io/eval-ref-stack/){:target="ers"}: All the evaluation _software_ projects (as opposed to _documentation_ guides like this one) require a runtime stack that is flexible and easy to deploy and manage. This project is collating popular tools for writing and running evaluations into packages that are easy to deploy and manage. 
  * [Evaluation Is for Everyone](https://the-ai-alliance.github.io/trust-safety-evals/){:target="tse"}: This project addresses two problems: 1) many AI application builders don't know what they should do to ensure trust and safety, and 2) it should be as easy as possible to add trust and safety capabilities to AI applications. Many trust and safety evaluation suites are available that can be executed on the _Evaluation Reference Stack_. We are making it as easy as possible for AI application developers to find and deploy the evaluations they need. 
  * [Testing Generative AI Applications](https://the-ai-alliance.github.io/ai-application-testing/){:target="tgai"}: Suppose you have deployed a suitable suite of evaluations for trust and safety from _Evaluation Is for Everyone_ using the _Evaluation Reference Stack_. The "last mile" of evaluation is verifying that your AI application correctly implements its requirements and use cases. Enterprise developers are accustomed to writing tests for this purpose for traditional software, which is (more or less) _deterministic_, but not for AI applications, which introduce inherently non-deterministic, specifically _probabilistic_ behaviors. This project builds on existing evaluation techniques used by AI experts and data scientists for this purpose, including deep examples for learning purposes.
* [Ranking AI Safety Priorities by Domain](https://the-ai-alliance.github.io/ranking-safety-priorities/){:target="ranking"}: An exploration of the highest-priority AI-centric use cases and the corresponding safety concerns in several domains, such as healthcare, finance, education, and legal.
* [The State of Open Source AI Trust and Safety - End of 2024 Edition](https://thealliance.ai/blog/the-state-of-open-source-trust){:target="state-of-safety"}: A survey of AI Alliance members with analysis of their concerns about trust and safety. This survey and report will be updated annually.
* [Trusted Evals request for proposals](https://thealliance.ai/core-projects/trusted-evals){:target="ts-rfp"}: An open RFP for submitting trust and safety project ideas for work by the AI Alliance.

In addition, The AI Alliance [Open Trusted Data Work Group](https://thealliance.ai/focus-areas/foundation-models){:target="ai-alliance-wg"} is leading the [Open Trusted Data Initiative](https://the-ai-alliance.github.io/open-trusted-data-initiative/){:target="otdi"} to catalog datasets with unambiguous provenance and governance, and clear licenses for open use. Some of these datasets are important tools for specific trust and safety _evaluations_, such as task- or domain-specific benchmarks.

Now proceed to [Exploring AI Trust and Safety]({{site.baseurl}}/exploring/).
