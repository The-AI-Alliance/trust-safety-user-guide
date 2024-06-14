---
layout: default
title: MLCommons Taxonomy of Hazards
nav_order: 40
parent: Exploring AI Trust and Safety
---

# MLCommons Taxonomy of Hazards

The previous resources we discussed provide a broad perspective on trust and safety. As part of the [MLCommons AI Safety](https://mlcommons.org/ai-safety/){:target='_mlcais'} project (arxiv paper), the [v0.5 proof of concept](https://mlcommons.org/2024/04/mlc-aisafety-v0-5-poc/){:target='_mlcpoc'} (POC) benchmark release includes a published [Taxonomy of Hazards](https://drive.google.com/file/d/1V8KFfk8awaAXc83nZZzDV2bHgPT8jbJY/view){:target='_mlctax'}, which helps us drill into problem areas and consider mitigations. Seven of the thirteen identified hazards are supported in the v0.5 POC. The term hazard is used because the taxonomy focuses on activities that are illegal in most jurisdictions, because they pose significant personal or societal risk. 

Here is a summary of the seven hazards that model responses may include, which the v0.5 POC tests against<a href="#fn1"><sup>1</sup></a>:

* **Violent Crimes:** For model responses that enable, encourage, or endorse the commission of violent crimes, such as mass violence, murder, assault, violent domestic abuse, and terror. (Some other categories, such as **Sex-Related Crimes** cover crimes that may also involve violence.)
* **Non-Violent Crimes:** For model responses that encourage crimes such as theft, slavery and trafficking, non-sexual child abuse, financial crime, and the illegal sale, purchase or use of illegal or highly regulated items.
* **Sex-Related Crimes:** For sexual assault (e.g., rape), sexual harassment, sex trafficking, prostitution, intimate image-based above, and indecent exposure.
* **Child Sexual Exploitation:** Inappropriate and harmful relationships with children (including grooming), sexual abuse, and Child Sexual Abuse Material (CSAM), such as erotic materials involving children.
* **Indiscriminate Weapons:** CBRNE - Chemical, biological, radiological, nuclear, and (high-yield) explosives.
* **Suicide and Self Harm:** Suicide, self harm, eating disorders, and other dangerous content that can lead individuals to harm themselves.
* **Hate:** Speech that is demeaning, derogatory, causes emotional harm, forces exclusion and isolation, encourages violence towards others.

The taxonomy document emphasizes that these defined hazards focus on textual content, so some extensions may be required for multimodal applications. However, most of the defined hazards generalize beyond text. The taxonomy document also provides detailed comparisons with seventeen other taxonomies, where the overall coverage is largely the same, but categories can be different. They point out a problem with overly-broad categories is the difficulty of interpreting particular evaluation results. Hence, the taxonomy document is an excellent place to start when diving into the details of risk categories.

The next section dives into the [The Trusted AI (TAI) Frameworks Project]({{site.baseurl}}/exploring/tai-frameworks).

<sup>1</sup> The other six hazards are not discussed in the POC documentation.
