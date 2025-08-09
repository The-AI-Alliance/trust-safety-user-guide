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

A major challenge for the successful use of AI is the importance of understanding potential trust and safety issues, along with their mitigation strategies. Failure to do this can be painful. For example, we often hear news stories of chatbots that engage with customers in embarrassing, harmful, and costly ways. Not only can enterprise operations and customer satisfaction be harmed by trust and safety issues, but governmental bodies are starting to regulate AI in large part over these concerns. Hence, applications built with AI must be designed and implemented with AI trust and safety in mind.

The goal of this living document is to provide useful, up-to-date resources for understanding potential risks and how to mitigate them, so you can exploit the benefits of AI with more confidence. The target audience includes software engineers who need to implement safe and trustworthy AI, product managers who need to articulate requirements for AI systems, and leaders who need a better understanding of the issues. 

## What We Mean by Trust and Safety

{: .highlight}
> **Trust** is based in part on **Safety**. A user will avoid a system perceived to be untrustworthy. In the case of AI systems, trust is earned or lost based, in part, on how well the system handles safety concerns, such as preventing prompts (queries) and responses that show bias, exclusion, hate speech, false statements (“hallucination”), advocate unethical behavior, and other undesirable content.

The scope of this document is safety and its impact on trust. Safety can be defined to mean many things. We will primarily focus on safety related to _known harms_, such as hate speech, leaking proprietary data, etc. However, most of the concepts we will discuss can encompass broader definitions of safety. 

Other factors outside our definition of safety can also affect trust in the general sense. For example, does the system quickly and efficiently return a useful, properly-formatted response with a minimum of prompting? What is the carbon footprint of our AI system? These concerns are not related to our definition of safety, but they are important criteria for users of AI. The term alignment encompasses this broader set of criteria for system utility (i.e. fitness for the desired purposes) and trustworthiness. [EleutherAI defines alignment this way](https://www.eleuther.ai/alignment){:target="eleuther"}, &ldquo;Ensuring that an artificial intelligence system behaves in a manner that is consistent with human values and goals.&rdquo;

Safety evaluations in AI systems involve specific tests, such as models that detect hate speech, along with the infrastructure to perform these evaluations. The infrastructure can often be used for evaluators that cover broader concerns, where benchmarks and runtime tests can be defined using similar techniques.

## Safety, Security, and the AI Lifecycle

Safety is very much like security in that the entire life cycle of AI, gathering and preparing training datasets, creating models, tuning models, and applications need to be safety-aware and safety must be built in from the beginning. **Attempts to “bolt it on” at the end won’t succeed.**

In one sense, security is a subset of safety. AI security is a combination of mainstream software security that isn’t AI-specific, such as vulnerability detection, and new vulnerabilities unique to AI, like various prompt attacks. Many of the toolkits and methodologies discussed below include security in their safety portfolios. A comprehensive guide to AI security is [An Architectural Risk Analysis of Large Language Models](https://berryvilleiml.com/results/){:target="biml"}.

Similarly, while safety affects the entire AI life cycle, in this guide we will mostly focus on two points in the life cycle where safety evaluation can be applied. The first is offline testing, such as testing models for benchmarks. The second is online testing, during inference, where prompts and replies need to be analyzed. However, many of the safety evaluations we will discuss can be performed at any point in the AI life cycle. For example, datasets should be filtered for PII, hate speech, etc. when they are created from “raw” data sources. Also, tests used for benchmarks can be used at inference time, too.

You might notice the emphasis on evaluation, looking for problems with mitigations (like filtering or returning alternative responses), even though we said above that safety needs to be designed into the system, just like designing for general security. Unfortunately, design tools and techniques are in their infancy for preventing AI safety violations in the first place. We can’t train models to avoid hate speech completely, even when we filter the training data sets for hateful content. Hence, at this time, designing for AI safety leans heavily on testing and filtering at all stages of the life cycle, including inline during inference. Other design techniques we have include application patterns like [engineering user prompts](https://en.wikipedia.org/wiki/Prompt_engineering){:target="wikipedia-prompt-eng"} and [RAG](https://research.ibm.com/blog/retrieval-augmented-generation-RAG){:target="ibm-rag"} that promote better alignment. Of course, a similar situation exists for software security. There are some preemptive techniques, like analyzing code for known vulnerabilities, but these techniques don’t eliminate the need for vigilant runtime measures.

Next, we will define some terms. Then we will explore the work of several leading organizations on trust and safety. How they define and analyze risks, how they mitigate them, and how systems should be developed with risk in mind. Finally, we will conclude with some suggestions for assessing risk priorities for your applications, followed by a list of references for more information.

## Other AI Alliance Trust and Safety Activities

The AI Alliance has an active [Trust and Safety Work Group](https://thealliance.ai/focus-areas/trust-and-safety){:target="ai-alliance-tswg"} that has other projects you might interest you, in addition to this user guide:

* [Trust and Safety Evaluation Initiative](https://the-ai-alliance.github.io/trust-safety-evals/){:target="tsei"}: A broad effort with several work streams.
  * Define an evaluation taxonomy across all concerns, not just trust and safety, but also performance, alignment, etc.
  * Define a reference stack for evaluation.
  * Implement _evaluators_ that implement the _evaluations_ defined in the taxonomy.
  * Deploy leaderboards for users to explore taxonomy areas of interest, how well popular open models perform against the corresponding evaluations, and provide the ability to download the suite of those evaluations for deployment into custom infrastructure.
* [Ranking AI Safety Priorities by Domain](https://the-ai-alliance.github.io/ranking-safety-priorities/){:target="ranking"}: Explore the highest-priority AI-centric use cases and the corresponding safety concerns in several domains, such as healthcare, finance, education, and legal.
* [The State of Open Source AI Trust and Safety - End of 2024 Edition](https://thealliance.ai/blog/the-state-of-open-source-trust){:target="state-of-safety"}: A survey of AI Alliance members with analysis of their concerns about trust and safety.
* [Trusted Evals request for proposals](https://thealliance.ai/core-projects/trusted-evals){:target="ts-rfp"}: An open RFP for submitting trust and safety project ideas for work by the AI Alliance.

In addition, The AI Alliance [Open Trusted Data Work Group](https://thealliance.ai/focus-areas/foundation-models){:target="ai-alliance-wg"} is leading the [Open Trusted Data Initiative](https://the-ai-alliance.github.io/open-trusted-data-initiative/){:target="otdi"} to catalog datasets with unambiguous provenance and governance, and clear licenses for open use. Some of these datasets are effectively trust and safety _evaluations_, e.g., datasets for benchmarks.


Please proceed to the [glossary]({{site.baseurl}}/glossary).
