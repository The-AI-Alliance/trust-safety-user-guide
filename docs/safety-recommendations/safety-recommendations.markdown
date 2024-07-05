---
layout: default
title: Safety for Your AI Systems
nav_order: 50
has_children: false
---

# Safety for Your AI Systems

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

When starting your own AI-enabled projects, we recommend studying [Meta’s Responsible Use Guide](https://llama.meta.com/responsible-use-guide/){:target="meta-rug"} as a good reference guide for how to proceed. See, in particular, the section titled _Responsible LLM product development stages_. We highlight a few guidelines here, some of which are also discussed in the Meta guide.

## Define the Objectives and Safety Requirements for the AI System

Good AI system design starts with an understanding of the features and safety objectives the system is supposed to meet, clarification of them through use case definitions, and requirements derived from the use cases. Based on the overall objectives of the system, study the relative importance of the safety categories discussed previously. Some categories will be more important than others. This risk assessment process needs to consider the impacts on users when risk events occur. 

### The Importance of Context in AI Safety

The point about chatbots shows that the total _context_ of the application is important. In particular for trust and safety concerns, what is considered unacceptable can vary with the situation. No one size fits all.

### Cultural Norms

Some topics are acceptable in some cultures and to some groups of users, but not acceptable to all. For example, the acceptability of topics pertaining to human sexuality, public interactions between people of different genders, etc. vary in different religious traditions. Countries have different customs and laws pertaining to allowed speech, particularly for discourse on historical topics with sensitive political implications.

### User Goals and Intentions

Consider an application that helps a user generate creative ideas for artistic projects. In this case, Hallucination is acceptable, even desirable. However, results that infringe on copyright and trademark rights are highly undesirable and could lead to legal consequences.

In contrast, for an application intended to provide factually-accurate information to a user, Hallucination can have serious harmful consequences. In this case, quotation of copyrighted and trademarked information may be desirable, even required, as long as proper attribution is included.

A recent infamous example illustrates the challenges of understanding a user’s _good intentions_. The first release of Google’s Gemini model was [found to generate images](https://www.npr.org/2024/03/18/1239107313/google-races-to-find-a-solution-after-ai-generator-gemini-misses-the-mark){:target="gemini"} of people with diverse ethnicities and genders set in historical or real-world situations where only white people or white men should have been represented to reflect the realities of those situations. For example, images of the United States &lgquo;Founding Fathers&rdquo; should only include white men, as no one from any other demographic group was allowed to participate in their activities.

In this case, the Gemini team over-compensated for known biases in training data. _Their good intentions_ were to have the model create images with diverse representation. While desirable for &lgquo;generic&rdquo; images of modern life, like workplaces and sporting events, this was deemed offensive in those scenarios where diverse representation most certainly did not exist. This behavior has been observed in other widely-used models, too.
However, it is possible that some users would want images with diversity in known historical situations for the purpose of visualizing a &lgquo;better world&rdquo;, free of bias and unequal representation. As an analogy, it is common to see modern stagings of the plays of Shakespeare with a diverse cast, even though in Shakespeare’s time only white men, not even women, could perform. The modern musical _Hamilton_ is a popular depiction of mostly Anglo-Saxon Americans, but portrayed with a diverse cast, using modern music and dance forms that emerged in diverse communities. Hence, understanding and respecting a user’s good intentions in a given context can be key to creating optimal, acceptable results.

## Design for Model-Level and System-Level Alignment

We discussed previously how tools like Meta Llama Cybersec Eval 2, Meta Llama Guard 2, and Meta Llama Code Shield are used in different parts of the development process and AI system architecture. It may take some experimentation to find the optimal places to address safety concerns, balancing overall performance with trustworthy results. Other alignment tools include various tuning methodologies to improve model alignment and application patterns like [RAG](https://research.ibm.com/blog/retrieval-augmented-generation-RAG){:target="ibm-rag"} as part of inference processing. 

## Identify Metrics for the Prioritized Safety Categories

With the safety categories prioritized, identify the corresponding metrics and available benchmark and test suites for measuring model and system behaviors for these categories.

Make sure you understand the limitations of these tests and benchmarks, both their accuracy at detecting issues and their coverage of potential prompts and responses in those areas of interest. It is easy to be lulled into a false sense of security by impressive-looking numbers.

## Measure Your AI Systems Against those Metrics

Use resources such as the emerging [MLCommons AI Safety Benchmarks](https://mlcommons.org/benchmarks/ai-safety/){:target="mlc-benchmarks"} to select models with the best results based on the metrics identified. Most benchmarks are open source, so they can also be used internally for evaluation of proprietary models. For example, if you tune a public model using your private data to achieve better alignment for your domain. You will want to use the same benchmarks to verify that alignment for the domain has improved while also preserving safety performance.

Also test the whole AI system, because while models generate responses to prompts, the system can include filters or modify prompts to keep them aligned, add extra information from RAG queries, etc. Similarly, filtering and transformations of the responses are usually implemented.

Hence, a public benchmark &lgquo;leaderboard&rdquo; is a good place to find a &lgquo;base&rdquo; model, but you will need the ability to run most or all of the same tests in your local environment against your tuned models and your AI system as a whole.

## Continuously Evaluate Your AI System

Even if your models don’t change, the world around you is changing. How well does your system perform when novel input or output variants for known safety problems appear? How resilient is the AI system to changing standards of acceptable speech? Suppose, for example, that a phrase takes on a new, negative connotation in the public sphere, so you need to start moderating its use in your system.

Continuous monitoring of your system against your benchmarks is necessary to ensure that performance doesn’t decline. The benchmarks themselves may also decline in value, by growing stale! When a model’s performance declines, you will have to decide what to do. You could re-tune the model, replace it with a better-performing model, or modify the filters used on prompts and responses. Similarly, how will you update a decaying benchmark? Hopefully the benchmark creator is updating it periodically.

Also beware of concerns about benchmark gaming and training data pollution. Even without trying to game a benchmark, by training a model specifically to do well on it, if the benchmark is open source, its code and data are likely to become part of the training data set used for future models. A related, but less direct problem is the growth of synthetic data sets created for model training that are also starting to appear in general data sets used to train all major models.

Let's finish with some [final thoughts]({{site.baseurl}}/final-thoughts) and [References]({{site.baseurl}}/references) for more information.