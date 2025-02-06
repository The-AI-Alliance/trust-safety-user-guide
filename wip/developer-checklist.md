# Development Trustworthy Checklist

This idea applies to developers, data scientists, project managers, etc.

Bill Stout suggested the following in Slack:

> DeepSeek-r1/Qwen2.5-Max have raised a number of questions around trust.  Some development teams don’t trust it, yet are experimenting with it, and are pulling it into corporate environments and onto personal systems.
> 
> Each phase of an LLM development lifecycle involves key aspects to ensure trust.  CRISP-ML and MLOps are two examples of many development lifecycles, and there is some commonality of the development lifecycle standards.
> 
> I propose we establish a LLM development trustworthiness checklist to assess trustworthiness of a model which roughly lists key aspects in order of lifecycle phases.  I also propose regional versions of the checklist.  For example checklists for the United States and China would reflect trust differently (example).
> 
> I’m thinking from a supply chain perspective, if any of the answers are not affirmative, the model is not trustworthy.  If you cannot validate there is no data poisoning but all other measures were affirmative, the model cannot be trusted.  Another approach is a score (which to me is how pregnant are you).
> 
> What do you think, is this worthwhile or duplicative of other trustworthiness efforts? (edited) 

Dean Wampler replied:

> Interesting idea. There are, of course, a lot of projects that do extensive work on aspects of trust, like hallucination tendencies, hate speech, etc. I interpret your suggestion as perhaps more course-grained guidance. True? 
> 
> For example, it's been widely reported that the Chinese models don't have any information about the Tiananmen Massacre and there are other biases towards official positions of the government. So, objectivity thinking about objectivity will matter. 
> 
> The existing [TSEI](https://the-ai-alliance.github.io/trust-safety-evals/) project is designed to catalog all ways you might want to evaluate models and apps. The [domain-ranking of risk](https://the-ai-alliance.github.io/ranking-safety-priorities/) project is designed to dive a little deeper into key use cases in particular domains. However, these projects are effectively operating at a lower level of detail.
> 
> A natural place to put such a trustworthiness checklist would be the [user guide](https://the-ai-alliance.github.io/trust-safety-user-guide/). However, because it is aimed at relatively novice people, I would want to make it clear somehow that this checklist is something you should always refer back to.

So, this note is a place to gather ideas. Please add your thoughts!

## Global Checklist

What would apply no-matter what country, culture, etc. is targeted for a model or application? For simplicity, we'll just use model, even though most applications should be tested, especially more complex systems that might use multiple models for different purposes. 

* Objectivity and bias - Gender, demography, religion, politics, etc.
* License to use
* Is this model more of a research concept than a production model?
* How likely is this model to be actively maintained and updated?


## Regional Checklists





