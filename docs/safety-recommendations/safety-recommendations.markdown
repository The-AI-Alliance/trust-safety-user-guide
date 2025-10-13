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

With the content covered in [Exploring AI Trust and Safety]({{site.baseurl}}/exploring/), how should you proceed? Let's begin with a discussion of various activities you should consider doing, then finish with checklists you can use.

See also the other AI Alliance Trust and Safety initiatives discussed in the [introduction]({{site.baseurl}}/introduction#other-ai-alliance-trust-and-safety-activities), for additional resources you can leverage.

## Review Other's Best Practices

When starting your own AI-enabled projects, we recommend studying [Meta’s Responsible Use Guide](https://llama.meta.com/responsible-use-guide/){:target="meta-rug"} as a good reference guide for how to proceed. See in particular the section titled _Responsible LLM product development stages_. We highlight a few guidelines here, including some that are also discussed in the Meta guide.

## Think About the Full Lifecycle

The full lifecycle of your AI application includes the usual process of gathering requirements, iteratively building and releasing the application, refining the requirements, etc., etc.

However, it also includes the lifecycles of the datasets used for model training and as part of your application (e.g., in [RAG]({{site.baseurl}}/introduction#retrieval-augmented-generation)) and the models themselves.  Put another way, your should apply a _supply chain perspective_, where you consider all the key &ldquo;parts&rdquo; that go into your application, not unlikely how it has become necessary to choose software libraries carefully, e.g., for licenses, vulnerabilities, adequate maintenance, etc.

The [Global Checklist](#global-checklist) below explores the lifecycle aspects in more detail.

## Define the Objectives and Safety Requirements for Your AI System

Good AI system design starts with an understanding of the features and safety objectives the system is supposed to meet, clarification of them through use case definitions, and requirements derived from the use cases. 

Based on the overall objectives of the system, study the relative importance of the safety categories discussed previously. Some categories will be more important than others. This risk assessment process needs to consider the impacts on users when risk events occur. 

### The Importance of Context in AI Safety

The point about [ChatBots]({{site.glossaryurl}}/chatbot) shows that the total _context_ of the application is important. In particular for trust and safety concerns, what is considered unacceptable can vary with the situation. No one size fits all.

### Cultural Norms

Topics and words that are acceptable for discourse in some cultures and among some groups of users (e.g., adults vs. children) will not acceptable to all. For example, the acceptability of topics pertaining to human sexuality vary in different cultures. Be mindful of local laws pertaining to allowed speech, too.

### User Goals and Intentions

Consider an application that helps a user generate creative ideas for artistic projects. In this case, [Hallucination]({{site.glossaryurl}}/#hallucination) is acceptable, even desirable. However, results that infringe on copyright and trademark rights are still undesirable, in part because of their legal consequences.

In contrast, for an application intended to provide factually-accurate information to a user, hallucination can have serious harmful consequences. In this case, output of copyrighted and trademarked information may be desirable, even required, as long as proper quotation and attribution are included.

A recent infamous example illustrates the challenges of understanding a user’s _good intentions_. The first release of Google’s Gemini model was [found to generate images](https://www.npr.org/2024/03/18/1239107313/google-races-to-find-a-solution-after-ai-generator-gemini-misses-the-mark){:target="gemini"} of people with diverse ethnicities and genders set in historical or real-world situations where only white people or white men should have been represented to reflect the realities of those situations. For example, images of the United States &ldquo;Founding Fathers&rdquo; should only include white men, as no one from any other demographic group was allowed to participate in their activities.

In this case, Gemini over-compensated for known biases in training data. The Google team's _good intentions_ were to have the model create images with diverse representation. While desirable for &ldquo;generic&rdquo; images of modern life, like workplaces and sporting events, this was deemed offensive in those scenarios where diverse representation most certainly did not exist. This behavior has been observed in other widely-used models, too.

However, it is possible that some users would want images with diversity in known historical situations for the purpose of visualizing a &ldquo;better world&rdquo;, free of bias and unequal representation. As an analogy, it is common to see modern stagings of the plays of Shakespeare with a diverse cast, even though in Shakespeare’s time only white men, not even women, could perform. The modern musical _Hamilton_ is a popular musical depicting historical events that involved exclusively Anglo-Saxon Americans, but portrayed with a diverse cast, using modern music and dance forms that emerged in diverse communities. Hence, understanding and respecting a user’s good intentions in a given context can be key to creating optimal, acceptable results.

## Design for Model-Level and System-Level Alignment

We discussed previously how tools like Meta Llama Cybersec Eval 2, Meta Llama Guard 2, and Meta Llama Code Shield are used in different parts of the development process and AI system architecture. It may take some experimentation to find the optimal places to address safety concerns, balancing overall performance with trustworthy results. Other [Alignment]({{site.glossaryurl}}/#alignment) tools include various tuning methodologies to improve model alignment and application patterns like [RAG]({{site.glossaryurl}}/#retrieval-augmented-generation) as part of inference processing. 

However, it is also important to keep in mind these principles of good software design:

### Keep It Simple!

A common temptation is to lean into complexity with lots of moving parts. Even in pre-AI systems, securing and maintaining such systems is much harder than simpler systems. The inherent nondeterminism introduced by [LLMs]({{site.glossaryurl}}/#large-language-models) greatly increases these challenges.

### Use Defense in Depth

A classic security strategy applies defensive measures at many levels in an application, e.g., at every subsystem boundary. This reflects the recognition that no security technique is infallible, so layering security levels and mixing different tools and techniques helps eliminate weaknesses in any one approach.

Similarly, it is not yet possible to train and tune models to be completely trustworthy and safe on their own. Hence most applications need to pass [Prompts]({{site.glossaryurl}}/#prompt) (queries) and [Responses]({{site.glossaryurl}}/#response) through [Guardrails]({{site.glossaryurl}}/#guardrails) to detect and mitigate undesirable content. 

### Minimize the &ldquo;Blast Radius&rdquo;

One reason _components_ with good abstraction boundaries are useful is they help prevent abnormal behavior in one component from propagating to other components, as long as the other components are also designed _defensively_ to be resilient against undesired behaviors of their dependencies. This is certainly true in AI systems, too. Notice we said _undesired_, rather than _unexpected_. The former term means the design results from an exhaustive exploration of all conceivable occurrences, although it is nearly impossible to complete eliminate the unexpected. Given the probabilistic nature of LLM responses, extra care is required here! Consider which boundaries in the application should be &ldquo;wrapped&rdquo; with guardrails, such as every boundary that encapsulates an LLM invocation.

[Agent]({{site.glossaryurl}}/#agent) systems that are allowed to invoke potentially-destructive actions on the user's behalf are particularly risky and require extra _safety engineering_, including rigorous testing. Consider instead designing these systems to construct actions to take, then require human review and permission before performing the actions.

## Identify Metrics for the Prioritized Safety Categories

With the safety categories prioritized, identify the corresponding metrics and available [Benchmarks]({{site.glossaryurl}}/#benchmark) and test suites for measuring model and system behaviors for these categories.

Make sure you understand the limitations of these tests and benchmarks, and their accuracy at detecting issues you care about. It is easy to be lulled into a false sense of security by impressive-looking numbers.

_In particular_, be wary of so-called _out-of-distribution_ prompts and responses, meaning content that occurs in production runs that was not adequately covered in the training datasets used to train and tune the models used in the application, including those models inside guardrails. An area of active research is how to make models more _resilient_ in their handling of out-of-distribution data. 

## Measure Your AI Systems Against those Metrics

Use resources such as the emerging [MLCommons AI Safety Benchmarks](https://mlcommons.org/benchmarks/ai-safety/){:target="mlc-benchmarks"} to select models with the best results based on the metrics identified. Most benchmarks are open source, so they can also be used internally for [Evaluation]({{site.glossaryurl}}/#evaluation) of proprietary models. For example, if you tune a public model using your private data to achieve better alignment for your domain. You will want to use the same benchmarks to verify that alignment for the domain has improved while also preserving safety performance.

Also test the whole AI system, because while models generate responses to prompts, the system can include filters or modify prompts to keep them aligned, add extra information from RAG queries, etc. Similarly, filtering and transformations of the responses are usually implemented.

Hence, a public benchmark &ldquo;leaderboard&rdquo; is a good place to find a &ldquo;base&rdquo; model, but you will need the ability to run most or all of the same tests in your local environment against your tuned models and your AI system as a whole.

## Don't Forget to Test Your Use Cases

A particular challenge for developers adding AI capabilities to their applications is the inherent _probabilistic_ nature of responses. Most developers are skilled at writing tests for &ldquo;classical&rdquo; systems that are mostly _deterministic_. They often don't have the same skills for working _statistically_ with AI results, skills that their data scientist and AI researcher colleagues possess. Developers need to acquire these skills and learn how to write custom benchmarks and adapt related techniques in order to validate _all_ the requirements for an application, including how will it performs the use cases for which it is designed.

{: .note}
> **NOTE:** See the AI Alliance sister project, [Testing Generative AI Applications](https://the-ai-alliance.github.io/ai-application-testing/){:target="tgai"}, which is focused on improving the tools available for developers and teaching them how to use them.

## Continuously Evaluate Your AI System

Even if your models don’t change, the world around you is changing. How well does your system perform when novel input or output variants for known safety problems appear? (This is the _out-of-distribution_ problem mentioned above.) How resilient is the AI system to changing standards of acceptable speech? Suppose, for example, that a phrase takes on a new, negative connotation in the public sphere. Do you need to start moderating its use in your system?

Continuous monitoring of your system against your benchmarks is necessary to ensure that performance doesn’t decline. This is analogous to _regressions_ in &ldquo;classical&rdquo; software. When a model’s performance declines, should you re-tune the base model (if you tune your own models) or should you replace it with a better-performing model, perhaps a newer version of the existing base model? Be especially careful to retest when replacing a model, even when upgrading to a new version of the current model! The new version may perform better overall on particular, broad benchmarks, yet responses to particular prompts you care most about may behave differently in surprising, regressive ways.

Alternatively, can you address the performance issue with better guardrails or using other complementary components in the application? 

Similarly, your benchmarks themselves may also decline in value, by growing stale as the world evolves! If you are using a third-party benchmark, is it being adequately maintained or will you have to try updating it yourself?

Also beware of concerns about benchmark gaming and training data pollution. Even without trying to game a benchmark (i.e., by training a model specifically to do well on it), if the benchmark is open source, its code and data are likely to become part of the training dataset used for future models. A related, but less direct problem is the growth of synthetic datasets created for model training that are also starting to appear in general datasets used to train all major models.

## Global Checklist

Here is a _starter checklist_ of items that should apply no matter what country, culture, etc. your application targets. 

{: .attention}
> **Help Wanted:** Help us make this checklist better! Help us build locale- and domain-specific checklists!!

* **Objectivity and bias:** E.g., gender, demography, religion, politics, etc.
* **License to use:** How are the models, datasets, etc. licensed? Are those licenses compatible with your requirements? 
* **What are the target uses?** Is a particular model, dataset, etc. intended for specific or general use? Is the quality more typical of a research project or production use?
  * For example, some datasets are not _suitable_ for use in all contexts, based on their content. A dataset used to train a model to detect hate speech will, by necessity, contain many examples of hate speech! You would not want to use that dataset to train a general LLM, since it might regurgitate some of the bad content during responses. Such a dataset might be of high, production quality, but intended for limited, specific uses.
* **Maintenance:** How likely is this model, dataset, etc. to be actively maintained and updated? Consider the research vs. production use issue just discussed. Some research results are very good, but once the topic of research is completed, the artifacts may not be maintained by the researchers.
* **What can you trust?** You application may critically depend on how much trust you have in the following areas. Take a _supply chain_ perspective; what questions require a _positive_ answer before I proceed and when do I need those answers? What do I do when I don't have an acceptable answer?
  * **Data collection:** Can you trust how the data was collected?
  * **Data engineering:** Can you trust how the data was processed?
  * **Model training:** Can you trust the model training processes used, e.g., governance of model artifacts, datasets used, etc.?
  * **Model evaluation:** How has the model been evaluated by its developers or third-parties?
  * **Model deployment:** Can you trust that no tampering has happened to the model artifacts? Are you sure you are deploying the artifacts you think you are deploying?
  * **Model monitoring:** Are you getting acceptable responses from the model? How do you know?
  * **Model oversight:** Can you control the model responses, as necessary?
  * **Security and privacy:** Will the system protect your secrets, your user's secrets?
  * **Evolution and improvements:** Will the model, dataset, etc. be adequately maintained? Will it improve over time?
  * **Transparency:** Do you have adequate visibility into all of the above, including the people and institutions involved?

To cite an example, when models in the `DeepSeek` and `Qwen` family have been released recently, they have generated a lot of excitement, while simultaneously raising a number of questions around trust, given their origins in research programs in China. Many development teams don’t trust them, yet they often experiment with these models, and sometimes start using them in corporate environments and personal systems. This is similar to the long-standing _shadow IT_ problem, where safety-conscious IT administrators discover that employees are using personal or other unapproved devices in ways that potentially compromise sensitive organizational data and processes.

Hence, at each phase of the lifecycles mentioned above, dataset creation, LLM training and tuning, and application building, trust decisions are being made by your team either implicitly or explicitly. If you want a more formal process around these decisions, consider one of [MLOps](https://ml-ops.org){:target="mlops"} development lifecycle methodologies that you can apply, like [CRISP-ML](https://ml-ops.org/content/crisp-ml){:target="mlops"}.

---

Let's finish with some [final thoughts]({{site.baseurl}}/final-thoughts) and [References]({{site.baseurl}}/references) for more information.